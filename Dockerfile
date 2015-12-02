FROM projectatomic/atomicapp:0.1.12

MAINTAINER The BitScout Community <community@TBA>

LABEL io.projectatomic.nulecule.providers="docker" \
      io.projectatomic.nulecule.specversion="0.0.2" \
      RUN="docker run --rm \${OPT1} --privileged -v `pwd`:/atomicapp -v /run:/run -v /:/host --net=host --name \${NAME} -e NAME=\${NAME} -e IMAGE=\${IMAGE} \${IMAGE} -v \${OPT2} run \${OPT3} /atomicapp"

ADD /Nulecule /Dockerfile /application-entity/
#ADD /artifacts /application-entity/artifacts
