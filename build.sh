# Very simple build script

rm -rf classes
mkdir classes

find -name "*.java" > sources.txt
javac -cp ".:guava-19.0.jar:junit-4.12.jar:commons-lang3-3.7.jar:google-io-extra.jar;" -d classes @sources.txt

echo 'Main-Class: org.opennars.main.Shell' > manifest.txt
jar cvfm NARS.jar manifest.txt -C classes . 
rm manifest.txt

echo ''
echo 'You can now launch:'
echo 'java -cp "*" org.opennars.main.Shell'
