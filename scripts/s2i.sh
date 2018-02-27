#!/bin/sh
#oc delete project loan-application
oc new-project loan-application
oc create -f https://raw.githubusercontent.com/jboss-container-images/rhdm-7-openshift-image/rhdm70-dev/decisioncentral-app-secret.yaml
oc create -f https://raw.githubusercontent.com/jboss-container-images/rhdm-7-openshift-image/rhdm70-dev/kieserver-app-secret.yaml
oc new-app --template=rhdm70-kieserver-basic-s2i \
			-p APPLICATION_NAME="loan-application" \
			-p IMAGE_STREAM_NAMESPACE="openshift" \
			-p SOURCE_REPOSITORY_URL="https://github.com/kerdlix/rhdm7-loan-demo-repo.git" \
			-p SOURCE_REPOSITORY_REF="" \
			-p CONTEXT_DIR="loan-application" \
			-p KIE_SERVER_CONTAINER_DEPLOYMENT="loan-application_1.0.0=com.redhat.demos.dm:loan-application:1.0.0" \
			-p KIE_ADMIN_USER="dmAdmin" \
			-p KIE_ADMIN_PWD="redhatdm1!" \
			-p KIE_SERVER_USER="kieserver" \
			-p KIE_SERVER_PWD="kieserver1!" \
			-p MAVEN_REPO_USERNAME="dmAdmin" \
			-p MAVEN_REPO_PASSWORD="redhatdm1!"
oc logs -f bc/loan-application-kieserver

