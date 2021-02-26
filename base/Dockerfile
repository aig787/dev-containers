FROM ubuntu:latest

ENV EDITOR=vim
ENV VISUAL=vim
ENV TZ=America/Los_Angeles
ENV TERM=xterm-256color
SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get upgrade -y 
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y tzdata git build-essential zsh curl wget tmux vim emacs-nox sudo unzip

RUN useradd -d /home/dev -m dev
RUN usermod -a -G sudo dev
RUN chsh -s /usr/bin/zsh dev
RUN echo "dev ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
USER dev
WORKDIR /home/dev

RUN git clone https://github.com/aig787/dev-env.git
RUN dev-env/install.sh
RUN dev-env/configure.sh


ENTRYPOINT [ "/usr/bin/tmux", "-u" ]
