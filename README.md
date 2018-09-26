# Welcome to Microblog!

This is a fork of @miguelgrinberg example application featured in his [Flask Mega-Tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world). It's used for demonstrating features of [taretto](https://github.com/RedHatQE/taretto) testing framework.

Some changes were made in this fork to get it work with Twitter Bootstrap v4.

Prerequisites
=============

build a container: `docker build -t microblog:latest .`

Run
===

`docker run --name microblog -d -p 8000:5000 --rm microblog:latest`