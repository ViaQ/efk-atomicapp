# efk-atomicapp
E(lasticsearch)F(luentd)K(ibana) + QPID router multi-container atomic application

The application consists of:
* local collection agents e.g. rsyslog-collector that send data to the application via a message queue
* a message queue
* one or more fluentd that act to aggregate the data coming in from the message
queue and store in elasticsearch
* an elasticsearch cluster
* kibana for visualization

The rsyslog-collector container can be used to simulate a local rsyslog
collector sending data to the message queue.  The integration-tests
<https://github.com/ViaQ/integration-tests> repository contains a script called
make_rfc5424.py script which can be used to simulate syslog messages into the
rsyslog-collector.

Application Flow: <https://github.com/ViaQ/efk-atomicapp/wiki/ViaQ-Application-Flow>

To run with *atomic*: <https://github.com/ViaQ/efk-atomicapp/wiki/How-to-run-the-application-with-atomic>
