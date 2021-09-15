.class public Lcom/unity3d/services/banners/api/Banner;
.super Ljava/lang/Object;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/banners/api/Banner$BannerViewType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "bannerViewTypeString"    # Ljava/lang/String;
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "bannerAdId"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Lcom/unity3d/services/banners/api/Banner$BannerViewType;->fromString(Ljava/lang/String;)Lcom/unity3d/services/banners/api/Banner$BannerViewType;

    move-result-object v0

    .line 30
    .local v0, "bannerViewType":Lcom/unity3d/services/banners/api/Banner$BannerViewType;
    sget-object v2, Lcom/unity3d/services/banners/api/Banner$1;->$SwitchMap$com$unity3d$services$banners$api$Banner$BannerViewType:[I

    invoke-virtual {v0}, Lcom/unity3d/services/banners/api/Banner$BannerViewType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 42
    :cond_0
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 43
    return-void

    .line 32
    :pswitch_0
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v2

    new-instance v3, Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    invoke-virtual {v2, p3, v3}, Lcom/unity3d/services/banners/BannerViewCache;->loadWebPlayer(Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)Z

    move-result v1

    .line 33
    .local v1, "successfullyLoaded":Z
    if-eqz v1, :cond_0

    .line 34
    invoke-static {p3}, Lcom/unity3d/services/banners/bridge/BannerBridge;->didLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static setRefreshRate(Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "refreshRate"    # Ljava/lang/Integer;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 47
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 48
    invoke-static {}, Lcom/unity3d/services/banners/properties/BannerRefreshInfo;->getInstance()Lcom/unity3d/services/banners/properties/BannerRefreshInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/unity3d/services/banners/properties/BannerRefreshInfo;->setRefreshRate(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 51
    return-void
.end method
