//
//  BDJPostModel.m
//  百思不得姐
//
//  Created by 付星 on 2016/11/21.
//  Copyright © 2016年 yizzuide. All rights reserved.
//

#import "BDJPostModel.h"
#import "MJExtension.h"

@implementation BDJPostModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{
             @"ID":@"id",
             @"image_thumb":@"image0",
             @"image_large":@"image1",
             @"image_middle":@"image2",
             @"top_cmt":@"top_cmt[0]" // 只要数组中[0]的元素，因为最热评论就固定的一条
             };
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"BDJPostModel description:%@\n user_id: %zd\noriginal_pid: %zd\nsina_v: %i\njie_v: %i\nID: %zd\nstatus: %zd\ncache_version: %zd\nt: %zd\ntype: %zd\nrepost: %zd\nding: %zd\nhate: %zd\ncomment: %zd\nfavourite: %zd\nbookmark: %zd\ncai: %zd\nlove: %zd\ntheme_type: %zd\ntheme_id: %zd\nis_gif: %i\nimage0: %@\nimage1: %@\nimage2: %@\nvoicetime: %zd\nvoicelength: %zd\nvideotime: %zd\nplaycount: %zd\nplayfcount: %zd\nwidth: %zd\nheight: %zd\n",[super description], self.user_id, self.original_pid, self.sina_v, self.jie_v, self.ID, self.status, self.cache_version, self.t, self.type, self.repost, self.ding, self.hate, self.comment, self.favourite, self.bookmark, self.cai, self.love, self.theme_type, self.theme_id, self.is_gif, self.image_thumb, self.image_large, self.image_middle, self.voicetime, self.voicelength, self.videotime, self.playcount, self.playfcount, self.width, self.height];
}
@end
