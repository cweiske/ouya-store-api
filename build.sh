#!/bin/sh
#rst2html README.rst ouya-store-api-docs.htm
rst2html5\
 --bootstrap-css\
 --stylesheet-path=styles.css --embed-stylesheet\
 README.rst ouya-store-api-docs.htm

# workaround for https://github.com/marianoguerra/rst2html5/issues/70
sed -i 's#<title></title>#<title>OUYA store API documentation</title>#'\
 ouya-store-api-docs.htm
