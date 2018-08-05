FROM gcc:8.2.0

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"

ENV NAUTY nauty26r10

# (from: http://pallini.di.uniroma1.it/)
RUN wget http://pallini.di.uniroma1.it/$NAUTY.tar.gz && \
    tar xvzf $NAUTY.tar.gz && \
    rm $NAUTY.tar.gz

# Build
WORKDIR $NAUTY
RUN ./configure && \
    make
