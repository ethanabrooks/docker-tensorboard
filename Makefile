install: deb
	cd build; sudo apt install --reinstall ./tb_0.1-1_all.deb

deb: docker
	mkdir -p build/tb-0.1
	cp tb build/tb-0.1
	cd build/tb-0.1; \
		dh_make --indep --createorig; \
		echo 'tb usr/bin > debian/install'; \
		debuild -us -uc

docker:
	docker build --tag tensorboard .

clean:
	rm -rf build

