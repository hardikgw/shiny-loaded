FROM channelit/shiny

RUN sudo su - -c "R -q -e \"install.packages('maps', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('mapproj', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('lattice', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('hexbin', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('MASS', repos='http://cran.rstudio.com/')\"" &&\
	sudo su - -c "R -q -e \"install.packages('elastic', repos='http://cran.rstudio.com/')\""
	