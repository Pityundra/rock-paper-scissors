import cv2
import numpy as np
from keras.models import load_model


class CNN:
    def __init__(self, pathToSave, threshold=0.8, labels=['paper', 'rock', 'scissors']):
        print(pathToSave)
        self.model = load_model(pathToSave)
        self.threshold = threshold
        self.labels = labels

    def getThreshold(self):
        return self.threshold

    def getLabels(self):
        return self.labels

    def setLabels(self, l):
        self.labels = l

    def setThreshold(self, t):
        self.threshold = t

    def imageClassification(self, image):
        img = cv2.resize(image, (300, 200))
        (h, w) = img.shape[:2]
        test = np.array([img, cv2.warpAffine(img, cv2.getRotationMatrix2D((w / 2, h / 2), 180, 1.0), (w, h))])
        prediction = self.model.predict(test)
        result = np.where(prediction == np.amax(prediction))
        if np.amax(prediction) >= self.threshold:
            return self.labels[result[1][0]]  # csak az oszlopra vagyok kiványcsi
        else:
            raise ValueError("I dont know :( the cnn output too small")
