# Alpine Composer

The [Composer](https://getcomposer.org) docker image based on [Alpine](https://hub.docker.com/_/alpine/). Alpine is based on [Alpine Linux](http://www.alpinelinux.org), lightweight Linux distribution based on [BusyBox](https://hub.docker.com/_/busybox/). The size of the image is very small, less than 50 MB!

## Tags

Versions and are based on PHP versions.

Here are the supported tags and respective Dockerfile links.

 * `latest`, `1.0.0-alpha11` [(Dockerfile)](https://github.com/matriphe/docker-alpine-composer/blob/master/Dockerfile)
 
## Getting The Image

This image is published in the Docker Hub. Simply run this command below to get it to your machine.

```Shell
docker pull matriphe/alpine-composer:latest
```

Alternatively you can clone this repository and build the image using the `docker build` command.

## Run The Container

### Create and Run The Container

```Shell
docker run --rm --name=composer -v $(pwd):/app matriphe/alpine-composer:latest
```

If you run and want to link Nginx container, make sure you created and run this PHP-FPM the container before running this Nginx container. Make sure the `/www` volume in PHP-FPM container is mapped.

 * The first `--rm` argument use to rebuild older container if exists.
 * The `--name` argument sets the name of the container.
 * The `-v` argument maps current directory to `/app` directory in container, so the results of composer will be persistent.
  
### Create an alias

Add to your `~/.bashrc` this line, so you can just type `composer` command from command line. Make sure the docker engine is running.

```Shell
alias composer='docker run --rm --name=composer -v $(pwd):/app composer/composer'
```

And then execute this command to make alias working.

```Shell
source ~/.bashrc
```

Now you can just simply type `composer` from command line.