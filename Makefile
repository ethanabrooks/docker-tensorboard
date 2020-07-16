all:
	docker build --tag tensorboard .
	mkdir -p build/tb-0.1
	cp tb build/tb-0.1
	cd build/tb-0.1; \
		dh_make --indep --createorig; \
		echo 'tb usr/bin > debian/install'; \
		debuild -us -uc
	cd build; sudo apt install --reinstall ./tb_0.1-1_all.deb
clean:
	rm -rf build

