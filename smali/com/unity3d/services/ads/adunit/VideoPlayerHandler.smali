.class public Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;
.super Ljava/lang/Object;
.source "VideoPlayerHandler.java"

# interfaces
.implements Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;


# instance fields
.field private _videoContainer:Landroid/widget/RelativeLayout;

.field private _videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z
    .locals 3
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    const/4 v2, -0x1

    .line 17
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 18
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    if-nez v1, :cond_1

    .line 23
    new-instance v1, Lcom/unity3d/services/ads/video/VideoPlayerView;

    invoke-direct {v1, p1}, Lcom/unity3d/services/ads/video/VideoPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    .line 24
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    invoke-virtual {v1, v0}, Lcom/unity3d/services/ads/video/VideoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 28
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    invoke-static {v1}, Lcom/unity3d/services/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/services/ads/video/VideoPlayerView;)V

    .line 30
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public destroy()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 36
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 38
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/video/VideoPlayerView;->stopPlayback()V

    .line 39
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    invoke-static {v0}, Lcom/unity3d/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    invoke-static {}, Lcom/unity3d/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/services/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {v2}, Lcom/unity3d/services/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/services/ads/video/VideoPlayerView;)V

    .line 45
    :cond_0
    iput-object v2, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/services/ads/video/VideoPlayerView;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/unity3d/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 50
    iput-object v2, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    .line 53
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onCreate(Lcom/unity3d/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->create(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z

    .line 62
    return-void
.end method

.method public onDestroy(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 78
    return-void
.end method

.method public onPause(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;->destroy()Z

    .line 75
    return-void
.end method

.method public onResume(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 71
    return-void
.end method

.method public onStart(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 65
    return-void
.end method

.method public onStop(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 68
    return-void
.end method
