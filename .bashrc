# - Aliases
#   - Run Node, NPM, & Jekyll in containers (sandboxed)
#   - Remote access to VPS, inc. dokku
alias node_s="podman run --rm --security-opt label=disable -v $PWD:/home/node/app -w /home/node/app node node"
alias npm_s="podman run --rm --security-opt label=disable -v $PWD:/home/node/app -w /home/node/app node npm"
alias jekyll_s="podman run --rm -p 4000:4000 -v '$PWD:/srv/host:Z' --security-opt label=disable -it jekyll/jekyll:latest sh -c 'cp -r /srv/host/* /srv/jekyll && chown -R jekyll:jekyll /srv/jekyll && jekyll serve'" # Note: watch doesn't work
alias vps="ssh -i ~/.ssh/id_rsa me@my-vps.example.com"
alias dokku="ssh -i ~/.ssh/id_rsa dokku@my-vps.example.com"
