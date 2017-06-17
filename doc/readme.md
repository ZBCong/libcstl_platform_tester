在tornado2.2.1中编译libcstl会出错.原因是用的**C语言标准**不一样. 不认识`__VA_ARGS__`宏, 也不认识`_Bool`.
- 解决`_Bool`问题: 在tornado工程的编译选项中, 添加宏_MSC_VER. 即可解决
- 解决`__VA_ARGS__`问题: 这个需要修改libcstl源码, 将其中用到`__VA_ARGS__`的地方, 针对不同的编译环境, 做不同的处理.
