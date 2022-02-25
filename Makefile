all:
	echo use subcommand

clean:
	microk8s.kubectl delete job disk-perf-job

apply:
	microk8s.kubectl apply -f ./disk-perf.job.yaml 

get:
	microk8s.kubectl get jobs

describe:
	microk8s.kubectl describe job disk-perf-job

exec:
	microk8s.kubectl exec --stdin --tty job/disk-perf-job -c main -- /bin/bash

logs:
	microk8s.kubectl logs -f job/disk-perf-job
	