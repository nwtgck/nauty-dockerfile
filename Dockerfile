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
    make && \
    # Create symbolic links to use as commands
    ls | xargs file | grep "ELF 64-bit LSB executable" | awk '{sub(":", ""); print $1}' | xargs -I {} ln -s $PWD/{}  /usr/local/bin/{}
