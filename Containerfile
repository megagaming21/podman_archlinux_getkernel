FROM archlinux:latest

RUN echo 'Server = http://192.168.8.7:7878/$repo/os/$arch' > /etc/pacman.d/mirrorlist

RUN echo 'alias zzz=/workdir/setup.sh' >> /root/.bashrc
RUN echo 'zzz' >> /root/.bashrc
RUN echo 'exit' >> /root/.bashrc

WORKDIR /workdir
