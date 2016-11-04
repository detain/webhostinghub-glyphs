\#!/bin/bash
u="http://www.webhostinghub.com/glyphs/resources/";
for f in whhg-font.zip whhg_icons_32.zip whhg_icons_16.zip; do
	d="$(echo "${f}" | sed s#"\.zip$"#""#g)";
	wget "${u}${f}" -O "${f}";
#	pushd "${PWD}";
#	cd "${d}";
	unzip -x -o -d "${d}" "${f}";
#	for
	rm -f "${f}";
done
/bin/cp -a whhg-font/whhg-font/* .;
mkdir -p icons;
/bin/mv -f whhg_icons_16/* whhg_icons_32/* icons;
/bin/rm -rf whhg-font whhg_icons_16 whhg_icons_32;
for i in icons/*zip; do 
	d="$(echo "${i}" | sed s#"\.zip$"#""#g)"; 
	mkdir -p "${d}"; 
	unzip -x -o -d "$(echo "${i}" | sed s#"\.zip$"#""#g)" "${i}"; 
	rm -f "${i}"; 
done
