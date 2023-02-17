echo "Start compute node"
SPEC_FILE='spec.json'
/mnt/data/vadim/neon/release/compute_ctl --pgdata /mnt/data/vadim/neon/pgdata_55434 \
     -C "postgresql://cloud_admin@localhost:55434/postgres"  \
     -b /mnt/data/vadim/neon/v15/bin/postgres                              \
     -S ${SPEC_FILE}
