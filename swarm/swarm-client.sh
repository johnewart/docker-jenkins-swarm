#!/bin/sh

echo "Running Jenkins swarm as ${JENKINS_SLAVE_PREFIX}"
java -Xmx1024m -Xms512m -jar /swarm-client.jar -labels "${JENKINS_LABELS}" -master "${JENKINS_MASTER_URL}" -name "${JENKINS_SLAVE_PREFIX}" -passwordEnvVariable JENKINS_PASSWORD -username jenkins
