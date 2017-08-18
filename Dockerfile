FROM kibana:5.5
MAINTAINER Ali Ghassabian <aghasabian@hotmail.com>

RUN bin/kibana-plugin install x-pack
CMD ["kibana"]
