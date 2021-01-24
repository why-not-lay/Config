# Algorithm

### Morris中序遍历
~~~C++
/*
  * *root 根节点(当前节点)
  * *predecessor 前驱节点
*/

while(root != nullptr){
  //判断当前节点的左节点是否为空
  //不为空时,代表仍有未遍历的节点
  if(root -> left){
    predecessor = root -> left;
    //前驱节点到达 当前节点左子树最右边的节点
    while(predecessor->right != nullptr && predecessor->right != root){
      predecessor = predecessor -> right;
    }
    //此时前驱节点在最后节点,如果右指针为空,代表该节点仍未被遍历
    if(predecessor->right == nullptr){
      predecessor->right = root;
      //当前节点进入左子树
      root = root->left;
    }
    //此时前驱节点的右指针指向root,代表当前子树仅剩该节点未遍历
    else{
      /*
        *遍历操作
        code
      */
      //断开连接
      predecessor->right = nullptr;
      //当前节点进入右子树
      root = root -> right
    }
  }
  //为空时,代表该节点为当前树的最左边节点
  else{
    /*
      *遍历操作
      code
    */
    //当前节点进入右子树
    root = root -> right
  }

}
~~~

### 基数排序
适用于全是非负整数的数组  
时间复杂度为O(n)
~~~C++
//defination
int a[n]; //待排序数组
int buf[n]; //辅助数组
int exp = 1; //位数,从低位起

//首先找到数组中最大的数，用以确定之后的循环时候的位数
int maxVal = max(a);

while(maxVal > exp){
  int cnt[10]; //用于保存各个位的个数

  for(int i = 0; i < n; i++){
    //获取各个值相应位数的值
    int digit = (nums[i] / exp) %10;
    //对该位数的值进行计数
    cnt[digit]++;
  }

  //累加循环是为了限定插入的位置，越靠后的值的被限定的位置越后
  //一直向后累加可以保证精确限定位置的个数
  for(int i = 1; i < 10; i++){
    cnt[i] += cn[i-1];
  }

  //该循环是对当前位数进行排序
  /*
  * 为什么是从后往前循环?
  * 因为对于从十位开始的循环，数组在此之前已经对低位有了初步的排序，位置越靠后的数值在
  * 低位的值是越大。从后往前循环保证了对于位数相同值的 待排序值，低位的值越大，其位置越
  * 往后
  */
  for(int i = n-1; i >= 0; i--){
    int digit = (nums[i] / exp) % 10;
    buf[cnt[digit]-1] = nums[i];
    cnt[digit]--;
  }

  //每次向高位递增一位
  exp *= 10;
}

~~~

### 获取指定长度的单调栈
~~~C++
//pre-defination
int k = ?? //指定长度k的栈
vector<int> nums //给定数组

//defination
//给定数组长度
int n = nums.size();
//可倒退的次数
int remain = n - k;
//栈顶索引
int top = -1;
//初始化stack
vector<int> stack(k,0);

for(int i = 0; i < n; i++){
  int num = nums[i];
  //当数组的元素大于栈顶元素，进行倒退，直至栈顶元素大于等于数组元素
  //倒退前提要有倒退次数
  while(top > 0 && stack[top] < num && remain > 0){
    top--;
    remain--;
  }
  //此时放入到栈顶的元素必定是最大的(栈中)
  if(top < k - 1){
    stack[++top] = num;
  }
  //此时栈已经填满了，由于后续数组的未知(在后续数组元素中或许还有比栈顶元素更大的数)，且随着数组的往后遍历，可倒退的次数必定逐次减少
  else{
    remain--;
  }
}
~~~

