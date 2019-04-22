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



- (void)initSDKWithAppid:(NSString *)appid
                 success:(void (^)(NSDictionary *successDict))success
                 failure:(void (^)(NSDictionary *failureDict))failure;



- (BOOL)applicationOpenURL:(nonnull NSURL *)url
                   options:(nonnull NSDictionary<NSString *, id> *)options;


- (void)loginWithSuccess:(void (^)(TRLoginCallbackModel *model))success
                      failure:(void (^)(id error))failure;

- (void)logoutSDKAcount;

@end

NS_ASSUME_NONNULL_END
