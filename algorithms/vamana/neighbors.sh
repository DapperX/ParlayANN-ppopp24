#!/bin/bash
cd ~/ParlayANN-ppopp24/algorithms/vamana
make 

P=/ssd1/data/bigann
# ./neighbors -R 64 -L 128 -alpha 1.2 -data_type uint8 -dist_func Euclidian -base_path $P/base.1B.u8bin.crop_nb_1000000
G=/ssd1/data/indices/vamana/BigANNDataset-1000000000/R64_L128_alpha1.2_threads144/R64_L128_alpha1.2_threads144

# PARLAY_NUM_THREADS=1 
./neighbors -R 64 -L 128 -alpha 1.2 -two_pass 0 -data_type uint8 -dist_func Euclidian -graph_path $G -query_path $P/query.public.10K.u8bin -gt_path $P/GT.public.1B.ibin -res_path test.csv -base_path $P/base.1B.u8bin
# ./neighbors -R 64 -L 128 -alpha 1.2 -two_pass 0 -data_type uint8 -dist_func Euclidian -graph_path $P/test_graph -query_path $P/query.public.10K.u8bin -gt_path $P/bigann-100M -res_path test.csv -base_path $P/base.1B.u8bin.crop_nb_100000000

# ./neighbors -R 64 -L 128 -alpha 1.2 -data_type uint8 -dist_func Euclidian -graph_path $P/graph-10M -query_path $P/query.public.10K.u8bin -gt_path $P/bigann-10M -res_path test.csv -base_path $P/base.1B.u8bin.crop_nb_10000000

