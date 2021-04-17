# NBMiner-docker
Docker image with [NBMiner](https://github.com/NebuTech/NBMiner).
Tested only with CUDA.

## Usage
1. Install [nvidia-docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker)
2. Build image by running: `docker build -t nbminer .`
3. Run container with needed options, for example: `docker run --gpus all nbminer -a kawpow -o stratum+ssl://stratum-ravencoin.flypool.org:3443 -u RDYRroe1hFxpZypKgBJZSjBvP7hyky3G6s`

## Known issues
* The image was tested only on CUDA (nvidia-docker) setup. It needs additional work to run with AMD GPUs.
* There is an `Failed to initialize NVML` warning, which leads to lack of GPU statistics:
```
[16:56:18] WARN - Failed to initialize NVML. Nvidia GPUs' health information will not display.
...
[16:56:38] INFO - ======================== Summary 2021-04-17 16:56:38 ========================
[16:56:38] INFO - |ID|Device|Hashrate|Accept|Reject|Inv|Powr|Temp|Fan|CClk|GMClk|MUtl|Eff/Watt|
[16:56:38] INFO - | 0|  2070| 19.29 M|     1|     0|  0|    |    |   |    |     |    |        |
[16:56:38] INFO - |------------------+------+------+---+----+---------------------------------|
```
