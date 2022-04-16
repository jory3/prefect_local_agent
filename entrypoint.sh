#!/bin/bash
prefect backend cloud
prefect auth login --key `echo $PREFECT_API_KEY | base64 --decode`
prefect agent local start --label 'kube_local_1'
