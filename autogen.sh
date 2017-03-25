#!/bin/sh

# make these until we have some proper info
for x in NEWS README
do
  if [ ! -f "$x" ]; then
    touch "$x"
  fi
done

if [ ! -d m4 ]; then
  mkdir m4
fi

libtoolize --verbose --copy --install --force && \
autoreconf --verbose --install --force
