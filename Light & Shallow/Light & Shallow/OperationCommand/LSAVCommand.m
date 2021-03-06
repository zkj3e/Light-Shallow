//
//  LSAVCommand.m
//  Light & Shallow
//
//  Created by 王珑宾 on 2018/10/24.
//  Copyright © 2018年 Ronb X. All rights reserved.
//
//  ******************************************************
//  * Disclaimer: IMPORTANT:  This idea comes from Apple *
//  ******************************************************

#import "LSAVCommand.h"

@implementation LSAVCommand

- (instancetype)initWithComposition:(AVMutableComposition *)composition videoComposition:(AVMutableVideoComposition *)videoComposition audioMix:(AVMutableAudioMix *)audioMix{
    if (self = [super init]) {
        self.mutableComposition = composition;
        self.mutableVideoComposition = videoComposition;
        self.mutableAudioMix = audioMix;
        self.executeStatus = YES;
    }
    return self;
}

- (void)performWithAsset:(AVAsset *)asset completion:(processResult)block{
    NSParameterAssert(asset);
    //If the subclass does not implement this method, the program will throw an exception.
    [self doesNotRecognizeSelector:_cmd];
}
@end
