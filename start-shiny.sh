#!/bin/sh
docker run -d --name shiny -v $(pwd)/r-data:/srv/shiny-server -v $(pwd)/r-logs:/var/log/shiny-server -p 80:3838 channelit/shiny-loaded