ENDPOINT=$(oc -n mnist get route mnist -ojsonpath='{.status.ingress[0].host}')
curl --insecure --silent -X POST \\ 
-d @gitops/test/body.json \\
https://${ENDPOINT}/v2/models/mnist/infer | jq