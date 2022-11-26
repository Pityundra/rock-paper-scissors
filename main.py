import os
import sys

from PyQt5 import QtGui
from PyQt5 import QtWidgets
from PyQt5 import uic  # Itt lehet egy error ha Pycharm-ot hsználunk, de ettől működni fog
from PyQt5.QtWidgets import QApplication, QFileDialog, QMessageBox

import ai
import preprocess


class Ui(QtWidgets.QMainWindow):
    def __init__(self):
        super(Ui, self).__init__()
        uic.loadUi('gui.ui', self)
        self.filesearch.clicked.connect(self.searchfiles)
        self.ai_model = ai.CNN(os.path.join(os.getcwd(), "ai_save"), threshold=0.9)  # nem igazán segitett

    def searchfiles(self):
        fname = QFileDialog.getOpenFileNames(self, 'Válasszon képet', 'C:/', 'Images (*.png, *.jpg)')

        x = fname.__str__().find("[")
        y = fname.__str__().find("]")
        img = fname.__str__()[x + 2:y - 1].replace("/", "\\")  # A kép elérési útvonala
        if img == '':
            return
        self.image.setPixmap(QtGui.QPixmap(img))

        list_of_the_hands = preprocess.get_skin_regions(img)
        number_of_hands = len(list_of_the_hands)  # redundáns
        if number_of_hands == 2:
            firstplayer = self.ai_model.imageClassification(list_of_the_hands[0])
            secundplayer = self.ai_model.imageClassification(list_of_the_hands[1])
            print(firstplayer, " vs ", secundplayer)
            # üzenet
            msg = QMessageBox()
            msg.setWindowTitle("játék eredménye")
            if firstplayer == secundplayer:
                msg.setText("Döntetlen")
            else:
                if firstplayer == 'paper':
                    if secundplayer == 'rock':
                        msg.setText("A papirt játszó játékos nyert")
                    else:
                        msg.setText("Az ollót játszó játékos nyert")
                elif firstplayer == 'rock':
                    if secundplayer == 'paper':
                        msg.setText("A papirt játszó játékos nyert")
                    else:
                        msg.setText("A kővet játszó játékos nyert")
                else:  # ollo
                    if secundplayer == 'paper':
                        msg.setText("Az ollót játszó játékos nyert")
                    else:
                        msg.setText("A kővet játszó játékos nyert")
            msg.exec_()
        else:
            msg = QMessageBox()
            msg.setWindowTitle("Error")
            msg.setText("Sajnos nem érzékeltünk csak megfelelő mennyiségü kezet. Kérem probálja meg újra!")
            msg.setIcon(QMessageBox.Critical)
            msg.exec_()
        if number_of_hands == 1:
            firstplayer = self.ai_model.imageClassification(list_of_the_hands[0])
            print(firstplayer)


app = QApplication(sys.argv)
mainwindow = Ui()
widget = QtWidgets.QStackedWidget()
widget.addWidget(mainwindow)
widget.setFixedWidth(1000)
widget.setFixedHeight(670)
widget.show()
sys.exit(app.exec_())
