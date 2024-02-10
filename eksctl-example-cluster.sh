eksctl create cluster \
--name cs2-kubernetes \
--version 1.28 \
--nodegroup-name standard-workers \
--node-type t3.medium \
--nodes 3 \
--nodes-min 3 \
--nodes-max 4