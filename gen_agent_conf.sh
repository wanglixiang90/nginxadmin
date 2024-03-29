echo "
JAVA=/usr/bin/java
NGINX_BIN=/usr/sbin/nginx

NGINX_ADMIN_AGENT_VERSION=${version}
NGINX_ADMIN_AGENT_HOME=/opt/nginx-admin-agent-$${version}
NGINX_ADMIN_AGENT_BIN=$NGINX_ADMIN_AGENT_HOME/bin
NGINX_ADMIN_AGENT_LOG=$NGINX_ADMIN_AGENT_HOME/log
NGINX_ADMIN_AGENT_CONF=$NGINX_ADMIN_AGENT_HOME/conf
NGINX_ADMIN_AGENT_SETTINGS=$NGINX_ADMIN_AGENT_HOME/settings
NGINX_ADMIN_AGENT_USER=nginx-admin-agent
NGINX_ADMIN_AGENT_HTTP_PORT=3000
NGINX_ADMIN_AGENT_HTTPS_PORT=3443
NGINX_ADMIN_AGENT_AUTHORIZATION_KEY=${auth_key}

NGINX_ADMIN_AGENT_URL_BASE=${admin_url}" 
