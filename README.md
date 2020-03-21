# Pooly

_Pooly_ is an [Elixir](https://elixir-lang.org) application designed to showcase
the use of _Supervisors_. The application structure was generated with the
command `mix new pooly`. Note that the `--sup` option was not provided. For the
author's edification and enlightenment, the supervisor structure was added by
hand.

## Installation

### Dependencies

_Pooly_ has only one dependency: [Docker](https://www.docker.com). As long as
you have a working installation of Docker, you have everything you need.

You can instead run this on your local host machine by making sure that the
correct version of _Elixir_ and _Erlang_ are installed, but that is left as an
exercise for the reader.

## Building the project

To build the project, simply run the following shell command at the root of this
project:

```console
user:~/pooly$ docker build -t pooly .
```

This will pull any necessary images from _dockerhub_ and build an image tagged
as "pooly" with this application inside of it.

### REPL

Once the _Pooly_ image has been built, you can start the _REPL_ to interact with
the app by running:

```console
user:~/pooly$ docker run --rm -it pooly
```

The `--rm` option will automatically delete the container (not the image it was
built from) once the session is complete.

The `-it` option (_options_, actually) allows the _Elixir REPL_ to run in
interactive mode. You need it any time you want to start an interactive session
like a _REPL_ inside a _Docker_ container.

### Quitting the REPL

When you want to end the _REPL_ session, you need to <kbd>CTRL</kbd> -
<kbd>c</kbd>, <kbd>CTRL</kbd> - <kbd>c</kbd>.

## Deleting the image(s)

Running _Pooly_ with the above commands will leave almost no traces on your
system once you are done. The `docker build .` command will download and store
the **elixir:1.3** image from _dockerhub_, and use it to generate a new image
(tagged **pool:latest**). Deleting those two images is the only cleanup you
might want to do once you're done with this project. That said, leaving the
images there poses no harm other than taking up a little disk space. To delete
the images, open a shell and run:

```console
user:~/pooly$ docker rmi pooly elixir:1.3
```
