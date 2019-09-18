//
//  TRSDKManager.h
//  TianRuiSDK
//
//  Created by apple on 2019/4/17.
//  Copyright © 2019 xiao_er_ge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TRLoginCallbackModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TRSDKManager : NSObject


/**
 Get the SDKManager object
 @return TRSDKManager
 */
+ (instancetype)manager;



/**
 初始化SDK

 @param projectId projectId description
 @param appid appid description
 @param version version description
 @param success {@"code":0,@"msg":@"ok"} //初始化成功
 @param failure {@"code":-1,@"msg":@"error msg"} //初始化失败
 */
- (void)initSDKWithProjectId:(NSString *)projectId
                       appid:(NSString *)appid
                     version:(NSString *)version
                 success:(void (^)(NSDictionary *successDict))success
                 failure:(void (^)(NSDictionary *failureDict))failure;






/// 登录回调
/// @param success model model.userUid model.session
/// @param failure {@"code":-1,@"msg":@"error msg"}
- (void)loginWithSuccess:(void (^)(TRLoginCallbackModel *model))success
                 failure:(void (^)(id error))failure;






/// 购买接口
/// @param orderId 游戏订单id
/// @param productId 商品id
/// @param productName 商品名字
/// @param productAttr 商品描述
/// @param productPrice 商品价格
/// @param userName 用户角色名字
/// @param userArea 用户角色所在区服
/// @param attachOne 附加字段1，可选
/// @param attachTwo 附加字段2，可选
/// @param success {@"code":0,@"msg":@"ok",@"orderId":@"orderId"}
/// @param failure {@"code":-1,@"msg":@"error msg"}
- (void)TRPayWithGameOrderId:(NSString *)orderId
                   productId:(NSString *)productId
                 productName:(NSString *)productName
                 productAttr:(NSString *)productAttr
                prodcutPrice:(NSString *)productPrice
                    userName:(NSString *)userName
                    userArea:(NSString *)userArea
                   attachOne:(NSString * _Nullable)attachOne
                   attachTwo:(NSString * _Nullable)attachTwo
                     success:(void (^)(NSDictionary *successDict))success
                     failure:(void (^)(NSDictionary *failureDict))failure;




/**
 退出登录
 @return 退出的结果 Bool类型
 */
- (BOOL)logoutSDKAcount;



- (BOOL)applicationOpenURL:(nonnull NSURL *)url
                   options:(nonnull NSDictionary<NSString *, id> *)options;


- (BOOL)application:(UIApplication *)app openURL:(nonnull NSURL *)url options:(nonnull NSDictionary<NSString *, id> *)options;

@end

NS_ASSUME_NONNULL_END
