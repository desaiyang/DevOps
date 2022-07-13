#! /bin/bash
filename=driver.config
branch=$(awk -F'branch:' '{print $2}' $filename)
echo $branch
pipeline=$(awk -F'pipeline:' '{print $2}' $filename)
echo $pipeline
requestor=$(awk -F'requestor:' '{print $2}' $filename)
echo $requestor
approver=$(awk -F'approver:' '{print $2}' $filename)
echo $approver
if [ $pipeline == "stop" ]; then
    echo "pipeline stopping ..."
fi
