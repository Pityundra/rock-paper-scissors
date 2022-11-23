import cv2
import numpy as np


def _get_skin_likeliness(img: np.ndarray, target_red, target_blue, max_tol_red, max_tol_blue):
    # Az egyes csatornákat szétszedjük, floatként tároljuk őket, hogy 255 fölé mehesüsnk
    b, g, r = cv2.split(img)
    r, g, b = r.astype(np.float64), g.astype(np.float64), b.astype(np.float64)
    # Leosztjuk a szinértékeket, hogy ne befolyásolja a fényerő a detektálást
    # A zöld szinre nincs szükség, mert megkapható a másik kettőből
    rgb = r + g + b
    b = cv2.divide(b, rgb)
    r = cv2.divide(r, rgb)
    # Meghatározzuk a távolságot a kivánt szintől úgy,
    # hogy a beállitott rd és bd értékek határozzák meg a maximum távolságot,
    # amit figyelembe veszünk
    b = np.clip(cv2.absdiff(b * 255, target_blue) * 255 / max_tol_blue, 0.0, 255.0)
    r = np.clip(cv2.absdiff(r * 255, target_red) * 255 / max_tol_red, 0.0, 255.0)
    # A legnagyobb távolságot nézzük a két szin közül, ez adta a legjobb eredményt
    return np.maximum(r, b).astype(np.uint8)


def _get_skin_regions(img: np.ndarray):
    likeliness = _get_skin_likeliness(img, 160, 40, 70, 36)
    binary = np.array(likeliness)
    # Az optimális küszöbértéket meghatározza automatikusan,
    # az ezzel kapott képet invertáljuk, hogy a fehér részek jelentsék a kezeket
    cv2.threshold(likeliness, 1, 255, cv2.THRESH_TRIANGLE, binary)
    cv2.bitwise_not(binary, binary)
    # Összefüggő területeket keresünk
    contours, hier = cv2.findContours(binary, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)
    new_binary = np.zeros(binary.shape)
    hands = []
    for contour in contours:
        area = cv2.contourArea(contour)
        if 10000 < area:  # Ha elég nagy a területe, akkor kirajzoljuk
            (x, y, w, h) = cv2.boundingRect(contour)
            cv2.drawContours(new_binary, [contour], 0, 255, -1)
            hands.append(new_binary[y:y+h, x:x+w])
    return hands


def get_skin_regions(path: str):
    img = cv2.imread(path)
    img = cv2.resize(img, (640, np.size(img, 0) * 640 // np.size(img, 1)), None, 0, 0, cv2.INTER_AREA)
    return _get_skin_regions(img)
