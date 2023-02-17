tenant_id=$1
timeline_id=$2
SPEC_FILE_ORG='spec.tmp.json'
SPEC_FILE='spec.json'


sed "s/TENANT_ID/${tenant_id}/" ${SPEC_FILE_ORG} > ${SPEC_FILE}
sed -i "s/TIMELINE_ID/${timeline_id}/" ${SPEC_FILE}

cat ${SPEC_FILE}
