.PHONY: all test clean deploy
default: build

# for if you don't want to install rust:
docker: Dockerfile
	docker build -t hello .
serve-docker: docker
	docker run -p 3000:3000 -p 3001:3001 hello
serve-docker-live: docker
	docker run -p 3000:3000 -p 3001:3001 -v $pwd:/build hello


# for if you've got it installed locally
serve:
	nohup mdbook serve --open >/dev/null 2>&1 &
unserve:
	killall mdbook | true
build:
	mdbook build
clean: unserve
	mdbook clean

# for deploying to github pages, NOTE, the github-action
# will overwrite changes you make to this branch.
deploy: build
	@echo "====> deploying to github"
	git worktree add /tmp/book gh-pages
	rm -rf /tmp/book/*
	cp -rp .book/* /tmp/book/
	cd /tmp/book && \
		git add -A && \
		git commit -m "deployed on $(shell date) by ${USER}" && \
		git push origin gh-pages
deploy-secure: build
	@echo "====> deploying to github"
	rm -rf /tmp/book/*
	#git worktree add /tmp/book gh-pages
	cp -rp .book/html/* /tmp/book/
	cd /tmp/book && \
		git add -A && \
		git commit -S -m "deployed on $(shell date)" && \
		git push origin gh-pages
