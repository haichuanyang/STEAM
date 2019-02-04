Kubernetes makes it easy to orchestrate many containers on many hosts, scale them as microservices, and deploy rollouts and rollbacks. First, I'll show you how to build and run containers. I'll use an open source tool called Docker, that defines a format for bundling your application, its dependencies, and machine specific settings into a container. You could use a different tool like Google Container Builder, it's up to you.


 Kubernetes is an open source orchestrator that abstracts containers at a higher level so you can better manage and scale your applications. At the highest level, Kubernetes is a set of APIs that you can use to deploy containers on a set of nodes called a cluster. The system is divided into a set of master components that run as a control plane, and a set of nodes that run containers. In Kubernetes, a node represents a computing instance like a machine. In Google Cloud, nodes are virtual machines running in Compute Engine. 


pod

 A pod is the smallest unit in Kubernetes that you create or deploy. A pod represents a running process on your cluster as either a component of your application, or an entire app. Generally, you only have one container per pod, but if you have multiple containers with a hard dependency, you can package them into a single pod, and share networking and storage. The pod provides a unique network IP, and setup pods for your containers, and options that govern how a container should run. 


 Containers inside a pod can communicate with one another using localhost and ports that remain fixed as they are started and stopped on different nodes. One way to run a container in a pod in Kubernetes is to use the kubectl run command. 


To make them publicly available, you can connect a LoadBalancer to your deployment by running the kubectl exposed command. Kubernetes creates a service with a fixed IP for your pods, and a controller says, ''I need to attach an external load balancer with a public IP address to that service so others outside the cluster can access it.'' In GKE, the LoadBalancer is created as a network LoadBalancer. Any client that hits that IP address will be routed to a pod behind the service. In this case, there's only one, usabel Nginx pod. The service is an abstraction which defines a logical set of pods and a policy by which to access them. A
