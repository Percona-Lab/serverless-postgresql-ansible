pageserver=10.30.2.30
tenant_id="52e88ad088b921e79a6115eaf853efb0"

PARAMS=(
     -sb 
     -X GET
     -H "Content-Type: application/json"
     "http://${pageserver}:9898/v1/tenant/${tenant_id}/timeline"
)

result=$(curl "${PARAMS[@]}")
echo $result | jq .

tenant_id=$(echo ${result} | jq -r .tenant_id)
timeline_id=$(echo ${result} | jq -r .timeline_id)

echo "Tenant id: $tenant_id"
echo "Timeline id: $timeline_id"
