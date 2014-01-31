docker-build-files
==================

container definitions for docker

Currently there are 2 container definitions:

 - debian-testing-debootstrap
   is just a standard import of
   debootstrap testing

 - debian-rbenv
   is build upon debian-testing-debootstrap has the build tools for rbenv and ruby-install and an installation of ruby-2.1.0
   which can be run by the user "ruby". I suggest an installation below /home/ruby.
