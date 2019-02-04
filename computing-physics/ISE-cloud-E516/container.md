https://www.youtube.com/watch?v=-HlB0eiwV10 container-a

https://kubernetes.io/docs/tutorials/online-training/overview/
FPaaS - functions platform as a service
container vuln scanning
serverless computing, edge computing - mobile phone/devices, decentralization
disable antivirus and adopt application control whitelisting
security teams are often an inhibitor to innovation
agile computing
VM's remain the mainstay of traditional monolithic applications
google search trends - docker quickly rising; VMs declining; hadoop has
reached peak; map reduce search dominated by hadoop search

b. https://www.youtube.com/watch?v=fxDc5cL6MgQ
b. explains VM -> container -> lamdas/serverless Faas
microservices

Caas - container as a service
event-driven computing

charges for usage at ms granularity
hyperconvergence - 


request driven vs event driven
edge computing - IoT, AI-enabled, Alexa/Siri/Google Now, 


c https://www.youtube.com/watch?v=A2b-LrnoMqg
VM's vs containers

chgroot
jail
process containers/control groups/LXC/docker-docker swarm/kubernetes
apache mesos/yarn/aurora
windows containers - supported natively in windows; 
linux containers runs on windows naturally
linpack/redis/mysql vm slow/docker near native

linux - cgroups/namespaces; no hypervior is used; lightweight virtualization

lxd/lsc,docker,coreos rkt

cgroups - 
namespaces - mnt/pid,net,ipc,uts,user,cgroup

seccomp - secure computing in kernel

bpf - berkeley packet filter
apparmor/selinux /proc /sys

lxc/lxd - canonical ubuntu
lxd allows live migration
docker no longer uses lxc - docker can now run natively on windows

FUSE/cgroupFS/overlayFS/LXCFS

microservice architecture - cloud native
agility/resilience
each containers deal with a single concern

cloud-native applications
devops - continuous delivery - microservices - containers

kubernetes replaces docker
kubernetes on windows - 
https://docs.microsoft.com/en-us/virtualization/windowscontainers/kubernetes/getting-started-kubernetes-windows
docker on windows:
https://docs.microsoft.com/en-us/virtualization/windowscontainers/manage-docker/configure-docker-daemon
https://docs.microsoft.com/en-us/virtualization/index

d https://www.youtube.com/watch?v=V41oi2Bh8Cc
mostsly about docker
docker image - 
https://docs.docker.com/engine/docker-overview/#docker-architecture #docker-engine
client-server application dockerd
docker hub

docker images,run,tag,pull,rmi,system
docker run ubuntu echo 'hello world'
docker ps -a
docker run ubuntu pwd;ls

docker system prune -a
docker rm $(docker ps -a -q)

dockerfile - docker image definition file

file system mount
docker run -name container1 -ti -v ~/log:/log ubuntu
docker run -ti --volumes-from container1 ubuntu
3 ways to mount data into container: volume - preferred can be backed up, managed, shared
bind mounts - 
tmpfs

docker networking 
bridge, none, host; user defined networks
nc = netcat

multi-container applications with docker compose
docker dev/ops
moby tools

docker swarm - group of machines what are running docker and joined into a cluster
swarm manager, nodes 
emptiest node, global mode; swarm manager are the ones that can execute commands
swarm load balancer

nginx - web server
container orchestration by docker swarm/k8s/mesos
declarative yaml document

load balancing with HAProxy: roundrobin, leastconn or first
Raft/Gossip protocol by Serf library

Kubernetes -
container management tool in a cluster mode
Borg/Omega

Kub master/Node
master includes scheduler, etcd (key-value store like zookeeper)
api server using swagger 1.2 and openAPI
controller manager including node controller, replication controller)
dns for service discovery
kube-apiserver, etcd,kube-scheduler, kube-conroller-manager,cloud-controller-manager
addons - dns, web UI, container resource monitoring, cluster-level logging

Kub node is a worker to manage containers in a machine including:
kubelet - agent for managing pods and checking node health
proxy - routing traffics with IP and port numbers assigned to containers
Docker or rkt (container engine)
CA/CAdvisory, supervisord, fluentd(monitor and logging)
Overlay network for clusters (flannel by CoreOS)
kubelete, kube-proxy,docker,rkt,supervisord,fluentd

etcd must be backed up

kubernetes is
portable
extensible
self-healing: auto-placement, auto-restart, auto-replication, auto-scaling

pod group of containers sharing IP, IPC or hostname
labels and selectors
service
kubectl
kubeadm
minikube

pod
services
deployments

kub deploy redis, mongo

minikube - 
minikube start
kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.4 --port=8080
minikube stop
