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

