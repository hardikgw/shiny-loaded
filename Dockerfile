FROM channelit/shiny
USER root
RUN sudo su - -c "R -q -e \"install.packages('maps', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('mapproj', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('lattice', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('hexbin', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('MASS', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('ggplot2', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('leaflet', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('elastic', repos='http://cran.rstudio.com/')\""
VOLUME ["/var/log:/var/log/shiny-server","/elastic-node/r-data:/srv/shiny-server -v /var/log:/var/log/shiny-server"]
EXPOSE 3838
WORKDIR /shiny-server
ENTRYPOINT bin/shiny-server