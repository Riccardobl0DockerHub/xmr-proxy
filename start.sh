#!/bin/sh
cd xmr-proxy
rm -f config.py
cp /template_config.py config.py

if [ "$STRATUM_HOST" = "" ];
then
    export STRATUM_HOST="0.0.0.0"
fi

if [ "$STRATUM_PORT" = "" ];
then
    export STRATUM_PORT="2333"
fi

if [ "$WALLET" = "" ];
then
    export WALLET=""
fi

if [ "$ENABLE_WORKER_ID" = "" ];
then
    export ENABLE_WORKER_ID="False"
fi

if [ "$WORKER_ID_FROM_IP" = "" ];
then
    export WORKER_ID_FROM_IP="False"
fi


if [ "$WORKER_ID_FROM_IP" = "" ];
then
    export WORKER_ID_FROM_IP="False"
fi

if [ "$MONITORING" = "" ];
then
    export MONITORING="False"
fi

if [ "$POOL_HOST" = "" ];
then
    export POOL_HOST="127.0.0.1"
fi

if [ "$POOL_PORT" = "" ];
then
    export POOL_PORT="2333"
fi

if [ "$POOL_FAILOVER_ENABLE" = "" ];
then
    export POOL_FAILOVER_ENABLE="False"
fi

if [ "$POOL_PORT_FAILOVER" = "" ];
then
    export POOL_PORT_FAILOVER="2333"
fi



sed -i -e "s/%STRATUM_HOST%/$STRATUM_HOST/" config.py
sed -i -e "s/%STRATUM_PORT%/$STRATUM_PORT/" config.py
sed -i -e "s/%WALLET%/$WALLET/" config.py
sed -i -e "s/%PAYMENT_ID%/$PAYMENT_ID/" config.py
sed -i -e "s/%ENABLE_WORKER_ID%/$ENABLE_WORKER_ID/" config.py
sed -i -e "s/%WORKER_ID_FROM_IP%/$WORKER_ID_FROM_IP/" config.py
sed -i -e "s/%MONITORING%/$MONITORING/" config.py
sed -i -e "s/%MONITORING_EMAIL%/$MONITORING_EMAIL/" config.py
sed -i -e "s/%POOL_HOST%/$POOL_HOST/" config.py
sed -i -e "s/%POOL_PORT%/$POOL_PORT/" config.py
sed -i -e "s/%POOL_FAILOVER_ENABLE%/$POOL_FAILOVER_ENABLE/" config.py
sed -i -e "s/%POOL_HOST_FAILOVER%/$POOL_HOST_FAILOVER/" config.py
sed -i -e "s/%POOL_PORT_FAILOVER%/$POOL_PORT_FAILOVER/" config.py

cat  config.py

python xmr-proxy.py
