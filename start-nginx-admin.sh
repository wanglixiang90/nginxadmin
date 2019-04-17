
docker pull jslsolucoes/nginx-admin-red-hat:v.2.0.3
docker tag  jslsolucoes/nginx-admin-red-hat:v.2.0.3  my/nginx-admin

version=2.0.3
datadir=/opt/docker/nginx-admin/data

mkdir -p ${datadir} 

docker run -d --name nginx-admin \
-v ${datadir}/database:/opt/nginx-admin-${version}/database \
-v ${datadir}/log:/opt/nginx-admin-${version}/log \
-p 4000:4000 -p 4443:4443 --privileged=true \
my/nginx-admin

