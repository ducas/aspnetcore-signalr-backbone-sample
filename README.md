# SignalR Service Bus Demo

This application demonstrates the usage of the SignalR backbone to ensure messages are distributed across web nodes.

## Getting started

1. Install docker and docker-compose
2. Start your docker machine
3. Clone the repo
4. Run ``./run.sh``
5. Open 2 browser tabs to http://localhost:8500 and http://localhost:8501 (unless you're on a mac)
6. Send some messages between the tabs

## What happens

Once up and running you will have 2 web processes and 1 redis process. The web applications set up a backbone on Redis using its pub/sub mechanism by creating a channel called ``service_bus_sample.Hubs.Chat``. When you send a message via one web process it gets sent to all clients that are connected to that same node and uses the backplane to send a message to the other process which will distribute the message to clients connected to that process.

To see how it's using redis, connect to the process using redis-cli and run MONITOR.