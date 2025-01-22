# Build the image
docker context create remote --docker "host=tcp://docker.hpc-cluster-hopper.hpc.internal.huggingface.tech:2376,ca=/etc/docker/docker-ca-certificate.pem,cert=/etc/docker/docker-client-certificate.pem,key=/etc/docker/docker-client-certificate.key"
docker context use remote

# Build with cluster registry tag
#docker build --no-cache -t registry.hpc-cluster-hopper.hpc.internal.huggingface.tech/library/custom-tgi-qwen:latest .
docker build -t registry.hpc-cluster-hopper.hpc.internal.huggingface.tech/library/custom-tgi-qwen:latest .

# Push to cluster registry
docker push registry.hpc-cluster-hopper.hpc.internal.huggingface.tech/library/custom-tgi-qwen:latest
