exec >&2

if which rpm >/dev/null 2>&1; then
  type=rpm
else
  type=deb
fi

fpm \
  --name systemadm \
  --version $(cat VERSION) \
  --prefix /usr \
  --maintainer "Mildred Ki'Lya" \
  -d /bin/sh \
  -a noarch \
  -s dir -t $type bin libexec

