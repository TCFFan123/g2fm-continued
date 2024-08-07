#!/usr/bin/env sh
if [ -e "grubfm*.7z" ]
then
    rm grubfm*.7z
fi

i=0
for lang in en_US
do
    if [ -d "releases" ]
    then
        rm -r releases
    fi
    mkdir releases
    i=`expr $i + 3`
    echo "${i}" | ./build.sh
    cp grubfm.iso releases/
    cp grubfm*.efi releases/
    cp g2fm*.efi
    cp g2fm_multiarch.iso
    cp loadfm releases/
    cd releases
    7z a ../g2fm-${lang}.7z *
    cd ..
    rm -r releases
    cd samples
    7z a ../samples.7z
    cd ..
done
