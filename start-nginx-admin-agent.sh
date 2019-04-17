
docker pull jslsolucoes/nginx-admin-agent-red-hat:v.2.0.3
docker tag  jslsolucoes/nginx-admin-agent-red-hat:v.2.0.3  my/nginx-admin-agent

version=2.0.3
datadir=/opt/docker/nginx-admin-agent/data
auth_key=test123
admin_url=http://localhost:3000

mkdir -p ${datadir}/conf

chmod 755  ${datadir}/../gen_agent_conf.sh
[ ! -f ${datadir}/conf/nginx-admin-agent.conf ] && . ${datadir}/../gen_agent_conf.sh > ${datadir}/conf/nginx-admin-agent.conf

docker run -d --name nginx-admin-agent \
-v ${datadir}/conf:/opt/nginx-admin-${version}/conf \
-v ${datadir}/log:/opt/nginx-admin-${version}/log \
-v ${datadir}/settings:/opt/nginx-admin-${version}/settings \
--net=host --restart=always --privileged=true \
my/nginx-admin-agent

