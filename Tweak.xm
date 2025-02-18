%hook KSAdSplashViewController

// 屏蔽启动广告
- (void)viewDidLoad {
    %orig;
    [self.view removeFromSuperview];
    [self dismissViewControllerAnimated:NO completion:nil];
}

%end

%hook KSAdFeedCell

// 屏蔽信息流广告
- (void)setAdModel:(id)model {
    %orig;
    self.hidden = YES;
    self.frame = CGRectZero;
}

%end

%hook KSAdPlayerView

// 屏蔽视频贴片广告
- (void)playAd {
    %orig;
    [self removeFromSuperview];
}

%end
