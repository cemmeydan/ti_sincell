FROM dynverse/dynwrap:bioc

RUN R -e 'devtools::install_cran("sincell")'

LABEL version 0.1.4

ADD . /code

ENTRYPOINT Rscript /code/run.R
