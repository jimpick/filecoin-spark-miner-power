#! /bin/bash

if [ "$1" = "spark" ]; then
  POD=spark
  PVC_NAME=spark
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc $PVC_NAME -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "spark-deals" ]; then
  POD=spark-deals
  PVC_NAME=spark-deals-work
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc $PVC_NAME -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-power" ]; then
  POD=publisher-test-pod-power
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-power-daily" ]; then
  POD=publisher-test-pod-power-daily
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-power-regions" ]; then
  POD=publisher-test-pod-power-regions
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-regions-locations" ]; then
  POD=publisher-test-pod-regions-locations
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-geoip-lookups" ]; then
  POD=publisher-test-pod-geoip-lookups
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-miner-info" ]; then
  POD=publisher-test-pod-miner-info
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-dht-addrs" ]; then
  POD=publisher-test-pod-dht-addrs
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-multiaddrs-ips" ]; then
  POD=publisher-test-pod-multiaddrs-ips
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-deals" ]; then
  POD=publisher-test-pod-deals
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-deals-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-deals-daily" ]; then
  POD=publisher-test-pod-deals-daily
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-deals-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "publish-asks" ]; then
  POD=publisher-test-pod-asks
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-asks-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "synthetic-locations" ]; then
  POD=synthetic-locations-test-pod
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc synthetic-locations-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
elif [ "$1" = "scanner-geoip" ]; then
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    ubuntu@pq-scan-1:/mnt/geoip-lookups/provider-quest-spark/* .
elif [ "$1" = "scanner-miner-info" ]; then
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    ubuntu@pq-scan-1:/mnt/miner-info/provider-quest-spark/* .
elif [ "$1" = "scanner-dht-addrs" ]; then
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    ubuntu@pq-scan-1:/mnt/dht-addrs/provider-quest-spark/* .
elif [ "$1" = "scanner-deals" ]; then
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    ubuntu@pq-scan-1:/mnt/deals/provider-quest-spark/* .
elif [ "$1" = "scanner-asks" ]; then
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    ubuntu@pq-scan-1:/mnt/asks/provider-quest-spark/* .
elif [ "$1" = "combiner-multiaddrs-ips" ]; then
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/zfspv-pool/multiaddrs-ips/provider-quest-spark/* .
else
  echo "Supported targets:"
  echo "  spark"
  echo "  spark-deals"
  echo "  publish-power"
  echo "  publish-power-daily"
  echo "  publish-power-regions"
  echo "  publish-regions-locations"
  echo "  publish-geoip-lookups"
  echo "  publish-miner-info"
  echo "  publish-dht-addrs"
  echo "  publish-multiaddrs-ips"
  echo "  publish-deals"
  echo "  publish-deals-daily"
  echo "  publish-asks"
  echo "  synthetic-locations"
  echo "  scanner-geoip"
  echo "  scanner-miner-info"
  echo "  scanner-dht-addrs"
  echo "  scanner-deals"
  echo "  scanner-asks"
  echo "  combiner-multiaddrs-ips"
  exit 1
fi

