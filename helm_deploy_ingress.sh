#!/bin/bash

helm install \
	--namespace em-test \
	nginx-ingress-em-test nginx-stable/nginx-ingress \
	-f values.yaml

