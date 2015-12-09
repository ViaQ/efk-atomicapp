# efk-atomicapp
E(lasticsearch)F(luentd)K(ibana) multi-container atomic application

The application consists of:
* local collection agents e.g. rsyslog that send data to the application via a
message queue
* a message queue
* one or more fluentd that act to aggregate the data coming in from the message
queue and format the data in the BitScout JSON format used by Elasticsearch
* an elasticsearch cluster
* kibana for visualization

This also includes, for end-to-end testing purposes, an rsyslog-collector
container that can be used to simulate a local rsyslog collector sending data
to the message queue, and a make_rfc5424.py script which can be used to
simulate syslog messages into the rsyslog-collector.

Application Flow: <https://github.com/BitScoutOrg/efk-atomicapp/wiki/BitScout-Application-Flow>

To run with *atomic*: <https://github.com/BitScoutOrg/efk-atomicapp/wiki/How-to-run-the-application-with-atomic>
