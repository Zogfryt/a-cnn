#/bin/bash
/usr/local/cuda-11.0/bin/nvcc tf_sampling_g.cu -o tf_sampling_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
g++ -std=c++11 tf_sampling.cpp tf_sampling_g.cu.o -o tf_sampling_so.so -shared -fPIC -I /opt/conda/envs/a-cnn/lib/python3.6/site-packages/tensorflow/include -I /usr/local/cuda-11.0/include -lcudart -L /usr/local/cuda-11.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0
