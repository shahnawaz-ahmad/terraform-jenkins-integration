#! /bin/bash

path="${HOME}/.jenkins/workspace/TerraformJenkinsIntegrationDemo"
cd $path
terraform init
choice=$1
if [ $choice == "plan" ]
then
    terraform $choice
elif [ $choice == "apply" ]
then
    terraform $choice -auto-approve
elif [ $choice == "destroy" ]
then
    terraform $choice -auto-approve
else
    echo "$choice is an invalid input, try again..."
    exit
fi

