#/bin/bash
g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /opt/conda/envs/a-cnn/lib/python3.6/site-packages/tensorflow/include -I /usr/local/cuda-11.0/include -lcudart -L /usr/local/cuda-11.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0
