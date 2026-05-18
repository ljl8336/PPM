
seq_len=96
pred_len=192
model_name=MLP
root_path_name=./dataset/ETT-small/
data_path_name=ETTh1.csv
model_id_name=ETTh1
data_name=ETTh1

random_seed=2021
# 0.3 0.1
for k in 100; do
for var in 0.3; do
for tau in 0.1; do
python -u run.py \
        --is_training 1\
        --seed $random_seed \
        --root_path $root_path_name \
        --data_path $data_path_name \
        --model_id $model_id_name'_'$model_name'_K'$k \
        --model $model_name \
        --data $data_name \
        --data_name $model_id_name\
        --features M \
        --seq_len $seq_len \
        --label_len 48 \
        --pred_len $pred_len \
        --enc_in 7\
        --dec_in 7\
        --c_out  7\
        --d_model 256\
        --e_layers 2\
        --d_ff 512\
        --num_workers 0\
        --itr 1\
        --train_epochs 30\
        --batch_size 64\
        --test_batch_size 32\
        --learning_rate 0.0001\
        --des 'Exp'\
        --lradj 'type1'\
        --gpu 0 \
        --var $var\
        --tau $tau\
        --K $k  | tee ./logs/MLP/$model_id_name'_'$seq_len'_'$pred_len'_K'$k.log
done
done
done


#--nu $nu\