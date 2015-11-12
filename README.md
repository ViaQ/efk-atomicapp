# efk-atomicapp
E(lasticsearch)F(luentd)K(ibana) multi-container atomic application

To run:
0) You must first have the bitscout/elasticsearch-app, bitscout/fluentd-app,
and bitscout/kibana-app atomic application images available.  If they are not
in docker hub, then you will have to build them from bitscout source.

1) mkdir bitscout-efk-app ; cp answers.conf bitscout-efk-app ; \
   cd bitscout-efk-app

2) atomic run bitscout/efk-atomicapp

If you do a "docker ps" you should see the 3 containers for elasticsearch,
fluentd, and kibana.
