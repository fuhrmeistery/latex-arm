FROM debian
LABEL maintainer="yannikfuhrmeister@web.de"
RUN     apt-get update && \
	apt-get upgrade -y
RUN     apt-get install -y file texlive-full \
                python3-pygments \
                git \
                make \
                pandoc \
                fig2dev \
                wget && \
        apt-get --purge remove -y .\*-doc$ && \
        apt-get clean -y
RUN adduser --system latex
USER latex
