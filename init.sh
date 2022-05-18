#!/bin/bash

if [ "$REMOTE" != "true" ]; then
	
else
	ssh \
		-vv \
		-o StrictHostKeyChecking=no \
		-Nn $TUNNEL_HOST \
		-p $TUNNEL_PORT \
		-R 0.0.0.0:$REMOTE_PORT:$CONTAINER_HOST:$CONTAINER_PORT \
		-i $KEY
fi