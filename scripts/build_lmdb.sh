MODEL=$1
DATASET=$2

for SPLIT in train val; do
  RAW=/mnt/disks/datasets/data/cfunit/
  LMDB=dataset/${DATASET}/${SPLIT}
  echo ${LMDB}
  python scripts/build_lmdb.py --config configs/projects/${MODEL}/${DATASET}/config.yaml --data_root ${RAW}/${SPLIT} --output_root ${LMDB} --overwrite
done
