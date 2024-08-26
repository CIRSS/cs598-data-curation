FROM python:3.12

RUN apt-get update -y && \
    apt-get install -y texlive-latex-extra texlive-fonts-extra texlive-xetex latexmk
RUN pip install jupyter-book

WORKDIR /src
