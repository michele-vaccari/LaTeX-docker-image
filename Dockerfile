FROM alpine:3.17.3

RUN apk update

RUN apk add texmf-dist texlive texmf-dist-latexextra biblatex biber

RUN wget https://mirrors.ctan.org/macros/latex/contrib/logreq.zip
RUN unzip logreq.zip
RUN rm logreq.zip
RUN cp -r logreq /usr/share/texmf-dist/tex/latex/logreq
RUN rm -r logreq
RUN texhash
