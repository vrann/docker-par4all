# VERSION 1.0

# the base image is a trusted ubuntu 15.04
FROM ubuntu:15.04

# that's me!
MAINTAINER Eugene Tulika vranen@gmail.com

#Installation using a package
RUN	echo "deb http://download.par4all.org/apt/ubuntu development main" >> /etc/apt/sources.list.d/par4all.list
RUN apt-get update && apt-get install -y --force-yes par4all

# Setting up environment variables
ENV PIPS_PYPS_RUNTIME_DIR /usr/local/par4all/share/runtime
ENV PIPS_F77 gfortran
ENV P4A_SCMP_DIR /usr/local/par4all/share/p4a_scmp
ENV PIPS_ROOT /usr/local/par4all
ENV LD_LIBRARY_PATH /usr/local/par4all/lib
ENV PATH /usr/local/par4all/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV P4A_ACCEL_DIR /usr/local/par4all/share/p4a_accel
ENV P4A_ASTRAD_DIR /usr/local/par4all/share/p4a_astrad
ENV P4A_DIST /usr/local/par4all
ENV P4A_ETC /usr/local/par4all/etc
ENV P4A_ROOT /usr/local/par4all
ENV PYTHONPATH /usr/local/par4all/lib/python2.7/site-packages/pips
ENV PKG_CONFIG_PATH /usr/local/par4all/lib/pkgconfig