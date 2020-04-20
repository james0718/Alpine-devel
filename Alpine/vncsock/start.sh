#!/bin/bash
/opt/m2m-env/vncsock/utils/websockify/websockify.py --web ./ --target-config=/opt/m2m-env/java-env/run-docker-image/vnctoken/ --cert self.pem  9191
