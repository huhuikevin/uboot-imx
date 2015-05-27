#!/bin/sh
echo "==========> Setup building environment.."
source ~/bin/imxbspsetup.sh

echo "==========> Builing mfg u-boot"
make distclean
make mx6qsabreautom_config
make
cp -f u-boot.imx ../u-boot-imx6qsabreautom_sd.imx
echo "==========> Builing mfg u-boot Done!"
sleep 2
echo "==========> Building Android u-boot ..."
make distclean
make mx6qsabreautomandroid_config
make
cp -f u-boot.imx ../u-boot-imx6q.imx

echo "==========> Building Android u-boot Done! "

