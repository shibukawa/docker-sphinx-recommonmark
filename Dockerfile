# Format: FROM    repository[:version]
FROM       ubuntu:16.04

# Usage:
# docker run -it -v <your directory>:/documents/


ENV DEBIAN_FRONTEND noninteractive

# Update apt-get sources AND install stuff
RUN apt-get update && apt-get install -y -q texlive texlive-latex-extra texlive-lang-cjk python-pip make
RUN pip install --upgrade pip
RUN pip install Sphinx
RUN pip install recommonmark
RUN pip install sphinxcontrib-textstyle

RUN mkdir documents

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]
