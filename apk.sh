BASEDIR=$(dirname $0)
echo Making APK file...
apktool b ${BASEDIR} -o gdps.apk >apktool.log 2>&1
echo Signing APK...
# I don't care about this keypair
printf "bebrahuy\nbebrahuy\n" | jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ~/keys.ks gdps.apk theairblow >jarsign.log 2>&1
echo Done!
