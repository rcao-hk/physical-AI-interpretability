export PYTHONPATH="/home/roboarm/physical-AI-interpretability:$PYTHONPATH"
for i in {0..19}; do
    echo "Running episode $i ..."
    python examples/visualise_original_data_attention.py \
        --dataset-repo-id lerobot/cuarm \
        --dataset-root '/home/roboarm/lerobot/data/cuarm_small_9_12' \
        --episode-id $i \
        --policy-path /home/roboarm/lerobot/outputs/train/cuarm_small_9_12_bs32_cs20_lr2e-5_ens0.01/checkpoints/020000/pretrained_model \
        --output-dir ./output/attention_analysis_results
done