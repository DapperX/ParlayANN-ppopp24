set -x

./neighbors -R 32 -L 75 -alpha 1.21 -two_pass 0 -graph_outfile /colddata/zshen055/ANN/model/bigann100m.idx -data_type float -dist_func Euclidian -base_path /data/zshen055/ANN/BIGANN/base.100M.fbin -max_size 100000000
./neighbors -R 32 -L 75 -alpha 1.21 -two_pass 0 -graph_outfile /colddata/zshen055/ANN/model/deep100m.idx -data_type float -dist_func Euclidian -base_path /data/zshen055/ANN/Yandex-DEEP/base.1B.fbin -max_size 100000000
./neighbors -R 32 -L 75 -alpha 1.21 -two_pass 0 -graph_outfile /colddata/zshen055/ANN/model/openai5m.idx -data_type float -dist_func angular -base_path /data/zshen055/ANN/openai/openai_large_5m/base.fbin -max_size 5000000
./neighbors -R 32 -L 75 -alpha 1.21 -two_pass 0 -graph_outfile /colddata/zshen055/ANN/model/cohere10m.idx -data_type float -dist_func angular -base_path /data/zshen055/ANN/cohere/cohere_large_10m/base.fbin -max_size 10000000
