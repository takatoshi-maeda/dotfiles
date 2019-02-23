export PATH=/opt/brew/opt/imagemagick@6/bin:$PATH
export LDFLAGS=-L/opt/brew/opt/imagemagick@6/lib
export CPPFLAGS=-I/opt/brew/opt/imagemagick@6/include
export PKG_CONFIG_PATH=/opt/brew/opt/imagemagick@6/lib/pkgconfig

export CGO_CFLAGS="${CPPFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
