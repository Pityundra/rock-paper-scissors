import sys
from PyQt5 import QtWidgets
from PyQt5.QtWidgets import QDialog, QApplication, QFileDialog, QMessageBox
from PyQt5 import uic  # Itt lehet egy error ha Pycharm-ot hsználunk, de ettől működni fog
from PyQt5 import QtGui

import preprocess


class Ui(QtWidgets.QMainWindow):
    def __init__(self):
        super(Ui, self).__init__()
        uic.loadUi('gui.ui', self)
        self.filesearch.clicked.connect(self.searchfiles)

    def searchfiles(self):
        fname=QFileDialog.getOpenFileNames(self, 'open file', 'C:/', 'Images (*.png, *.jpg)')

        x = fname.__str__().find("[")
        y = fname.__str__().find("]")
                                                           # print(fname.__str__()[x+2:y-1].replace("/", "\\"))
        img = fname.__str__()[x+2:y-1].replace("/", "\\")  # A kép elérési útvonala
        self.image.setPixmap(QtGui.QPixmap(img))

        wrong_image = False  # Ennek a változónak az értékét kelle átállítani ha nem megfelelő a kép

        preprocess.get_skin_regions(img)


        if wrong_image:
            msg = QMessageBox()
            msg.setWindowTitle("Error!")
            msg.setText("The image is not correct!")
            msg.setIcon(QMessageBox.Critical)

            x = msg.exec_()
        else:
            winner = "Draw"  # Itt addjuk neki oda, hogy Player1/Player2 vagy Draw
            msg = QMessageBox()
            msg.setWindowTitle("Congratulations!")
            if winner == "Draw":
                msg.setText("It's a draw!")
            else:
                msg.setText("The Winner is " + winner)

            x = msg.exec_()




app = QApplication(sys.argv)
mainwindow = Ui()
widget = QtWidgets.QStackedWidget()
widget.addWidget(mainwindow)
widget.setFixedWidth(1000)
widget.setFixedHeight(670)
widget.show()
sys.exit(app.exec_())