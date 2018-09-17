FROM dynverse/dynwrap:bioc

RUN R -e 'devtools::install_cran("sincell")'

LABEL version 0.1.2

ADD . /code

ENTRYPOINT Rscript /code/run.R
