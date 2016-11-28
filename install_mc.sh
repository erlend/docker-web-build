# Installs mc for current cpu architecture

arch=`uname -m`
out=/usr/local/bin/mc

case ${arch:0:3} in
  x86)
    _arch="amd64"
    ;;
  arm)
    _arch="arm"
    ;;
  *)
    _arch="386"
    ;;
esac

wget https://dl.minio.io/client/mc/release/linux-386/mc -O $out
chmod 755 $out
