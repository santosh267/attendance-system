echo $(date -u) Tile 10400100305A7E00 starting >> tilelog.txt
CUDA_VISIBLE_DEVICES='0' python object_detection/inference/data_infer_batch.py \
--input_path="/media/ssd1/data/10400100305A7E00_jpg.tif_tiles/19/" \
--inference_graph="/media/ssd1/sat_data_models/faster_rcnn/large/export/frozen_inference_graph.pb" \
--output_path="/media/ssd1/tile_output/10400100305A7E00" \
--shard_path="/media/ssd1/tile_output/10400100305A7E00" \
--batch_size=8 \
--shard=0 \
--shard_size=2 \
--vis_path="/media/ssd1/tile_output/vis/10400100305A7E00" \
--restore_from_json=False

CUDA_VISIBLE_DEVICES='3' python object_detection/inference/data_infer_batch.py \
--input_path="/media/ssd1/data/10400100305A7E00_jpg.tif_tiles/19/" \
--inference_graph="/media/ssd1/sat_data_models/faster_rcnn/large/export/frozen_inference_graph.pb" \
--output_path="/media/ssd1/tile_output/10400100305A7E00" \
--shard_path="/media/ssd1/tile_output/10400100305A7E00" \
--batch_size=8 \
--shard=1 \
--shard_size=2 \
--vis_path="/media/ssd1/tile_output/vis/10400100305A7E00" \
--restore_from_json=False
