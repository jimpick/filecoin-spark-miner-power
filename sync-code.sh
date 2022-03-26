#! /bin/bash

if [ "$1" = "spark" ]; then
  POD=spark
  PVC_NAME=spark
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc spark -o json | jq -r .spec.volumeName)
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
elif [ "$1" = "publish-regions" ]; then
  POD=publisher-test-pod-power-regions
  POD_UID=$(kubectl -n argo get pod $POD -o json | jq -r .metadata.uid)
  PVC=$(kubectl -n argo get pvc publisher-work -o json | jq -r .spec.volumeName)
  rsync -vaP --exclude node_modules \
    --exclude sync-code.sh \
    --exclude package-lock.json \
    root@nuc2-wired:/var/lib/kubelet/pods/$POD_UID/volumes/kubernetes.io~csi/$PVC/mount/provider-quest-spark/* .
else
  echo "Supported targets: spark, publish-power, publish-power-daily, publish-regions"
  exit 1
fi

