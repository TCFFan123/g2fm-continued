# mirror of pxelinux.sh
source ${prefix}/func.sh;

set root=${grubfm_device};
if [ -f "${theme_std}" ];
then
  export theme=${theme_std};
fi;
syslinux_configfile -s "${grubfm_file}";
