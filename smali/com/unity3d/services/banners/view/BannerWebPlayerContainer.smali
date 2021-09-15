.class public Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;
.super Landroid/widget/RelativeLayout;
.source "BannerWebPlayerContainer.java"


# instance fields
.field private _bannerAdId:Ljava/lang/String;

.field private _lastVisibility:I

.field private _size:Lcom/unity3d/services/banners/UnityBannerSize;

.field private _unsubscribeLayoutChange:Ljava/lang/Runnable;

.field private _webPlayerEventSettings:Lorg/json/JSONObject;

.field private _webPlayerSettings:Lorg/json/JSONObject;

.field private _webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

.field private _webSettings:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/unity3d/services/banners/UnityBannerSize;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bannerAdId"    # Ljava/lang/String;
    .param p3, "webSettings"    # Lorg/json/JSONObject;
    .param p4, "webPlayerSettings"    # Lorg/json/JSONObject;
    .param p5, "webPlayerEventSettings"    # Lorg/json/JSONObject;
    .param p6, "size"    # Lcom/unity3d/services/banners/UnityBannerSize;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_lastVisibility:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    .line 34
    iput-object p6, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_size:Lcom/unity3d/services/banners/UnityBannerSize;

    .line 35
    iput-object p2, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_bannerAdId:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webSettings:Lorg/json/JSONObject;

    .line 37
    iput-object p4, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerSettings:Lorg/json/JSONObject;

    .line 38
    iput-object p5, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerEventSettings:Lorg/json/JSONObject;

    .line 39
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webSettings:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerSettings:Lorg/json/JSONObject;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    .line 40
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerEventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setEventSettings(Lorg/json/JSONObject;)V

    .line 41
    invoke-direct {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->subscribeOnLayoutChange()V

    .line 42
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->addView(Landroid/view/View;)V

    .line 43
    invoke-direct {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->setupLayoutParams()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;
    .param p1, "x1"    # Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    return-object p1
.end method

.method private setupLayoutParams()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 68
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_size:Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-virtual {v5}, Lcom/unity3d/services/banners/UnityBannerSize;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/unity3d/services/core/misc/ViewUtilities;->pxFromDp(Landroid/content/Context;F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 69
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_size:Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-virtual {v5}, Lcom/unity3d/services/banners/UnityBannerSize;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/unity3d/services/core/misc/ViewUtilities;->pxFromDp(Landroid/content/Context;F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 70
    .local v0, "height":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v4, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-virtual {v4}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 73
    .local v2, "webviewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    iget-object v4, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-virtual {v4, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

.method private subscribeOnLayoutChange()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 50
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 51
    new-instance v0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$1;

    invoke-direct {v0, p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$1;-><init>(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)V

    .line 57
    .local v0, "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {p0, v0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 58
    new-instance v1, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$2;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$2;-><init>(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    .line 65
    .end local v0    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 92
    :cond_0
    move-object v0, p0

    .line 93
    .local v0, "self":Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;
    new-instance v1, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;-><init>(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public getWebPlayer()Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 117
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_bannerAdId:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/services/banners/bridge/BannerBridge;->didAttach(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 123
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_bannerAdId:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/services/banners/bridge/BannerBridge;->didDetach(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 162
    const/high16 v5, 0x3f800000    # 1.0f

    .line 163
    .local v5, "alpha":F
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getAlpha()F

    move-result v5

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_bannerAdId:Ljava/lang/String;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/banners/bridge/BannerBridge;->resize(Ljava/lang/String;IIIIF)V

    .line 167
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 170
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getHitRect(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const/16 v0, 0x8

    invoke-virtual {p0, p0, v0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->onVisibilityChanged(Landroid/view/View;I)V

    .line 177
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 130
    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getLeft()I

    move-result v1

    .line 132
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getRight()I

    move-result v2

    .line 133
    .local v2, "right":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 134
    .local v5, "alpha":F
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getAlpha()F

    move-result v5

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_bannerAdId:Ljava/lang/String;

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/banners/bridge/BannerBridge;->resize(Ljava/lang/String;IIIIF)V

    .line 139
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 140
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getHitRect(Landroid/graphics/Rect;)V

    .line 141
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const/16 v0, 0x8

    invoke-virtual {p0, p0, v0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->onVisibilityChanged(Landroid/view/View;I)V

    .line 145
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v5    # "alpha":F
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 149
    if-ne p1, p0, :cond_0

    .line 150
    iget v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_lastVisibility:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 151
    iput p2, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_lastVisibility:I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_lastVisibility:I

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_bannerAdId:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/unity3d/services/banners/bridge/BannerBridge;->visibilityChanged(Ljava/lang/String;I)V

    .line 156
    :cond_2
    iput p2, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_lastVisibility:I

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 10
    .param p1, "alpha"    # F

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 183
    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getBottom()I

    move-result v9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 184
    return-void
.end method

.method public setWebPlayerEventSettings(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "webPlayerEventSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerEventSettings:Lorg/json/JSONObject;

    .line 80
    return-void
.end method

.method public setWebPlayerSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "webSettings"    # Lorg/json/JSONObject;
    .param p2, "webPlayerSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webSettings:Lorg/json/JSONObject;

    .line 85
    iput-object p2, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->_webPlayerSettings:Lorg/json/JSONObject;

    .line 86
    return-void
.end method
