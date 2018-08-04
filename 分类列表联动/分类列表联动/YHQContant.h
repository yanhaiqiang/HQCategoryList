//
//  YHQContant.h
//  分类列表联动
//
//  Created by yifo on 2018/8/3.
//  Copyright © 2018年 yanhaiqiang. All rights reserved.
//

#ifndef YHQContant_h
#define YHQContant_h

/** 屏幕宽高 */
#define KScreenWidth [[UIScreen mainScreen]bounds].size.width
#define KScreenHeight [[UIScreen mainScreen]bounds].size.height


/**屏幕适配*/
#define iPhone6Adaptive_width(a) (CGFloat)a * KScreenWidth / 375.0

#define NavigateHeight (KScreenHeight == 812.0 ? 88 : 64)



#endif /* YHQContant_h */
