//
//  HJCheckBox.h
//  GXK
//
//  Created by 七 on 15/9/1.
//  Copyright (c) 2015年 七. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HJCheckBoxDelegate;


@interface HJCheckBox : UIButton
{
    id<HJCheckBoxDelegate> _delegate;
    BOOL _checked;
    id _userInfo;
}

@property(nonatomic, assign)id<HJCheckBoxDelegate> delegate;
@property(nonatomic, assign)BOOL checked;
@property(nonatomic, retain)id userInfo;

- (id)initWithDelegate:(id)delegate;

@end

@protocol HJCheckBoxDelegate <NSObject>

@optional

- (void)didSelectedCheckBox:(HJCheckBox *)checkbox checked:(BOOL)checked;

@end
