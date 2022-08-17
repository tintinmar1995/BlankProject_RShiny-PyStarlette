FROM r-base

EXPOSE 8000

RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
    r-cran-testthat r-cran-devtools r-cran-roxygen2 \
    libcurl4-openssl-dev libharfbuzz-dev libfribidi-dev \
    libfontconfig1-dev libcairo2-dev

COPY src src/

RUN Rscript src/requirements.R && \
    R --slave -e "install.packages('src', repos = NULL, type='source')"
    
CMD R --slave -e "library('Squelette'); Squelette::runApp(port=8000)"
