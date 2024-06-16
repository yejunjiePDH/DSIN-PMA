export CUDA_VISIBLE_DEVICES=0

model_name=DSIN_PMA


for pred_len in 96 192 336
do
    python -u run.py \
    --is_training 1 \
    --root_path ./dataset/ETT-small/ \
    --data_path ETTm2.csv \
    --model_id ETTm2_96_96_$pred_len \
    --model $model_name \
    --data ETTm2 \
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
    --d_model 128 \
    --d_ff 256 \
    --batch_size 64 \
    --dropout 0.3 \
    --learning_rate 0.0005 \
    --train_epochs 10 \
    --patience 3 \
    --n_heads 4 \
    --alpha 0
done


for pred_len in 720
do
python -u run.py \
      --is_training 1 \
      --root_path ./dataset/ETT-small/ \
      --data_path ETTm2.csv \
      --model_id ETTm2_96_96_$pred_len \
      --model $model_name \
      --data ETTm2 \
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
      --d_ff 256 \
     --batch_size 32 \
      --dropout 0.3 \
      --learning_rate 0.0005 \
      --train_epochs 10 \
      --patience 3 \
      --n_heads 4 \
      --alpha 0
done

