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
#import <Adjust/Adjust.h>

NS_ASSUME_NONNULL_BEGIN

@interface TRSDKManager : NSObject<AdjustDelegate>


/**
 Get the SDKManager object
 @return TRSDKManager
 */
+ (instancetype)manager;



/**
 初始化SDK

 @param projectId projectId description 项目id
 @param appid appid description 应用id
 @param version version description 版本号
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





/// 登录游戏成功通知SDK
/// @param userId 游戏中用户ID
/// @param name 角色名
/// @param area 角色所在区服
/// @param level 角色等级
/// @param vlevel 角色VIP等级
- (void)gameLoginWithUserId:(NSString *)userId
                   userName:(NSString *)name
                   userArea:(NSString *)area
                  userLevel:(NSString *)level
                  uVIPLevel:(NSString *)vlevel;




/// 购买接口
/// @param orderId 游戏订单id
/// @param productId 商品id
/// @param productName 商品名字
/// @param productAttr 商品描述
/// @param productPrice 商品价格
/// @param userName 用户角色名字
/// @param userArea 用户角色所在区服
/// @param userID 游戏角色id
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
                      userID:(NSString *)userID
                   attachOne:(NSString * _Nullable)attachOne
                   attachTwo:(NSString * _Nullable)attachTwo
                     success:(void (^)(NSDictionary *successDict))success
                     failure:(void (^)(NSDictionary *failureDict))failure;




/**
 退出登录
 @return 退出的结果 Bool类型
 */
- (BOOL)logoutSDKAcount;



/// openUrl
/// @param app app description
/// @param url url description
/// @param options options description
- (BOOL)application:(UIApplication *)app openURL:(nonnull NSURL *)url options:(nonnull NSDictionary<NSString *, id> *)options;

@end

NS_ASSUME_NONNULL_END
