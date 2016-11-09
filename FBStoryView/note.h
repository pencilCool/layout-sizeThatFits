/*
 
 
 
 ##sizeThatFits
 让view 计算并且返回一个size。这个size是最适合的size
 
 这是函数的默认实现就，返回view 现在size的大小。
 
 UIView 的子类可以重载这个函数，根据子视图的布局：来返回特定的值
 
 ###比如：
 - UISwitch object 返回一个修正后的size value 用来表示。switch view 的标准尺寸。（对呀貌似UISwitch 的大小是修改不了的~~，或者没人修改？ 这里还不太清楚）
 
 - UIImageView 也是根据图片的大小返回它的。
 
 这个函数不会改变调用者的尺寸。
 
 size ：
 
 The size for which the view should calculate its best-fitting size.
 
 
 
 
 
 
 
 
 
 
 
 
 */
