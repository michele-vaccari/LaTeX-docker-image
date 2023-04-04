FROM alpine:3.17.3

RUN apk update

RUN apk add texmf-dist texlive texmf-dist-latexextra biblatex

RUN wget https://mirrors.ctan.org/macros/latex/contrib/logreq.zip
RUN unzip logreq.zip
RUN rm logreq.zip
RUN mkdir -p $( kpsewhich -var-value=TEXMFHOME )/tex/latex/logreq
RUN cp -r logreq /root/texmf/tex/latex/logreq
RUN rm -r logreq
