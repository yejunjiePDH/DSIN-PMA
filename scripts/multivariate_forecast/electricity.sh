#export CUDA_VISIBLE_DEVICES=1

model_name=DSIN_PMA

for pred_len in 96 192 336 720
do
python -u run.py \
        --is_training 1 \
        --root_path ./dataset/electricity/ \
        --data_path electricity.csv \
        --model_id ECL_96_96_$pred_len \
        --model $model_name \
        --data custom \
        --features M \
        --seq_len 96 \
        --label_len 48 \
        --pred_len $pred_len \
        --e_layers_time 1 \
        --e_layers_variate 3 \
        --factor 3 \
        --enc_in 321 \
        --dec_in 321 \
        --c_out 321 \
        --des 'Exp' \
        --d_model 256 \
        --d_ff 128 \
        --batch_size 4 \
        --dropout 0.1 \
        --learning_rate 0.001 \
        --patience 3 \
        --n_heads 8 \
        --train_epochs 10 \
        --alpha 0.2 \
        --itr 1
done


