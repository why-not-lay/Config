# Transformation
* 二维变换
  * 线性变换（同一维度）
    * 缩放 
    > ![Scale](./pic/Scale.png)

    * 对称
    > ![Reflection](./pic/Reflection.png)
    * 切变
    > 示例：
    > ![Shear example](pic/Shear%20example.png)
    > 变换公式：
    > ![Shear](pic/Shear.png)
    * 旋转
    > ![Rotate](./pic/rotate.png)
    > $R_{\theta} R_{\theta}^{-1} = 1$,其中$R_{-\theta} = R_{\theta}^{-1} = R_{\theta}^{T}$
    * 变换总公式
    > ![transformation](./pic/transformation.png)
    * 平移
    > ![translation](./pic/Translation.png)
  * 仿射变换
  > ![Affine map](./pic/Affine%20map.png)
  * 逆变换
  > 变换后乘逆矩阵
* 三维变换
  * 齐次坐标
  > ![3D coordinates](./pic/3D_coordinate.png)

### 齐次坐标
![Homogenous Coordinates](pic/Homogenous_Coordinate%20.png)
> 为了平移的情况也适用于线性变换，坐标添加一个新的纬度  
> 向量具有平移不变性

![h](./pic/Homogenous_Coordinate1.png)

### 变换组合
> * 变换组合的矩阵依次在原矩阵左边添加
> * 变换分解

### 三维变换
* 缩放(Scale)
> ![scale](./pic/Scale3.png)
* 平移(Translation)
> ![Translation](./pic/Translation3.png)
* 绕X轴旋转
> ![x-axis](./pic/x-axis.png)
* 绕y轴旋转
> ![y-axis](./pic/y-axis.png)
* 绕z轴旋转
> ![z-axis](./pic/z-axis.png)
* 任意旋转(rotation)
> 拆分成x，y，z轴旋转  
> ![rotation](./pic/rotation3.png)  
> 通用公式
> ![Rodrigues' Rotation Formula](./pic/Rodrigues_Rotation_Formula.png)
### 观测变换（Viewing transformation)
* 视图变换(View/Camera transformation)
* 投影变换(Projection transformation)
  * 正交(Orthographic projection)
  * 透视(Perspective projection)
