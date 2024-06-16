export CUDA_VISIBLE_DEVICES=0


model_name=DSIN_PMA

for pred_len in 96 192 336
do
python -u run.py \
      --is_training 1 \
      --root_path ./dataset/ETT-small/ \
      --data_path ETTh1.csv \
      --model_id ETTh1_96_96_$pred_len \
      --model $model_name \
      --data ETTh1 \
      --features M \
      --seq_len 96 \
      --pred_len $pred_len \
      --e_layers_time 1 \
      --e_layers_variate 1 \
      --factor 3 \
      --enc_in 7 \
      --dec_in 7 \
      --c_out 7 \
      --des 'Exp' \
      --d_model 256 \
      --d_ff 128 \
      --batch_size 64 \
      --dropout 0.2 \
      --learning_rate 0.001 \
      --train_epochs 10 \
      --patience 3 \
      --alpha 0 \
      --n_heads 16
done


for pred_len in 720
do
python -u run.py \
      --is_training 1 \
      --root_path ./dataset/ETT-small/ \
      --data_path ETTh1.csv \
      --model_id ETTh1_96_96_$pred_len \
      --model $model_name \
      --data ETTh1 \
      --features M \
      --seq_len 96 \
      --pred_len $pred_len \
      --e_layers_time 1 \
      --e_layers_variate 1 \
      --factor 3 \
      --enc_in 7 \
      --dec_in 7 \
      --c_out 7 \
      --des 'Exp' \
      --d_model 256 \
      --d_ff 128 \
      --batch_size 64 \
      --dropout 0.2 \
      --learning_rate 0.001 \
      --train_epochs 20 \
      --patience 3 \
      --alpha 0 \
      --n_heads 16
done


