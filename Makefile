all:
	cd tb-0.1; \
		dh_make --indep --createorig; \
		echo 'tb usr/bin > debian/install'; \
		debuild -us -uc
clean:
	rm tb_0.1.orig.tar.xz
	rm -rf tb-0.1/debian

