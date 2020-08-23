# 张量(Tensor)

> Pytorch基础运算单位，类似Numpy的ndarray，前者可以在GPU上运行，后者仅能在CPU上运行

### 与Numpy之间的转换
> 转换后Tensor和numpy对象共享内存
* tensor转化为ndarray
``` python
a = torch.randn((3,2))
numpy_a = a.numpy()
```
* ndarray转化为tensor
``` python
torch_a = torch.from_numpy(numpy_a)
```

### GPU和CPU间转换
* CPU转到GPU
``` python
gpu_a = cpu_a.cuda()
```
* GPU转到CPU
``` python
cpu_b = gpu_a.cpu()
```

### 初始化
* 生成[0,1]均匀分布的随机化二维矩阵
``` python
rnd = torch.rand(5,3)
```
* 全1张量
``` python
one = torch.ones(2,2)
```
* 全0张量
``` python
zero = torch.zeros(2,2)
```
* 单位矩阵
``` python
eye = torch.eye(2,2)
```

