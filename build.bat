REM Very simple build script

DEL classes
mkdir classes

dir /s /B *.java > sources.txt
javac -cp ".:guava-19.0.jar:junit-4.12.jar:commons-lang3-3.7.jar:google-io-extra.jar;" -d classes @sources.txt

echo 'Main-Class: nars.main.NARS' > manifest.txt
jar cvfm NARS.jar manifest.txt -C classes . 
DEL manifest.txt

echo ''
echo 'You can now launch:'
echo 'java -cp "*" org.opennars.main.Shell'
