FROM nimbix/ubuntu-desktop:trusty

# CUDA 8.0
ADD http://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1404-8-0-local_8.0.44-1_amd64-deb /tmp/cuda-repo-ubuntu1404-8-0-local_8.0.44-1_amd64-deb
RUN dpkg --install /tmp/cuda-repo-ubuntu1404-8-0-local_8.0.44-1_amd64-deb && \
    rm -f /tmp/cuda-repo-ubuntu1404-8-0-local_8.0.44-1_amd64-deb && \
    apt-get update && apt-get -y install cuda-toolkit-8-0 && sudo apt-get clean 
