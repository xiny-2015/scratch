call "%VS120COMNTOOLS%\vsvars32.bat"
cl svm-toy.cpp ../../svm.cpp /SUBSYSTEM:WINDOWS "gdi32.lib" "comdlg32.lib" "user32.lib"
