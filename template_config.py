# Ports for your workers
STRATUM_HOST = "%STRATUM_HOST%"
STRATUM_PORT = %STRATUM_PORT%

# Coin address where money goes. If you mine direct to the exchange, you MUST specify payment_id together with wallet of exchange.
WALLET = '%WALLET%'
# Only if you mine direct to the exchange
PAYMENT_ID = '%PAYMENT_ID%'

# It's useful for individually monitoring and statistic.
# In your workers you have to use any number as username (without wallet!)
ENABLE_WORKER_ID = %ENABLE_WORKER_ID%
WORKER_ID_FROM_IP = %WORKER_ID_FROM_IP%

# On DwarfPool you have option to monitor your workers via email.
# If WORKER_ID is enabled, you can monitor every worker/rig separately.
MONITORING = %MONITORING%
MONITORING_EMAIL = '%MONITORING_EMAIL%'

# Main pool
POOL_HOST = '%POOL_HOST%'
POOL_PORT = %POOL_PORT%

# Failover pool
POOL_FAILOVER_ENABLE = %POOL_FAILOVER_ENABLE%
POOL_HOST_FAILOVER = '%POOL_HOST_FAILOVER%'
POOL_PORT_FAILOVER = %POOL_PORT_FAILOVER%

# ERROR, INFO, DEBUG
LOGLEVEL = 'DEBUG'
DEBUG = True
LOGFILE = "/dev/stdout"