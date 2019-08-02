FROM archlinux/base

ENV PKGDEST /tmp/out

RUN pacman -Sy && \
    pacman -S --noconfirm base-devel && \
    pacman -Scc --noconfirm

RUN useradd builder -m && \
  passwd -d builder

USER builder

WORKDIR /usr/src
CMD ["./build.sh"]
