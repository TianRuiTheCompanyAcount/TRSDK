//
//  TRLoginCallbackModel.h
//  TianRuiSDK
//
//  Created by apple on 2019/4/18.
//  Copyright © 2019 xiao_er_ge. All rights reserved.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TRLoginCallbackModel : NSObject

@property (nonatomic ,copy)NSString *userUid;//用户ID





- (id)initContentWithDic:(NSDictionary *)jsonDic;

- (void)setAttributes:(NSDictionary *)jsonDic;

- (NSDictionary *)attributeMapDictionary:(NSDictionary *)jsonDic;

@end

NS_ASSUME_NONNULL_END
