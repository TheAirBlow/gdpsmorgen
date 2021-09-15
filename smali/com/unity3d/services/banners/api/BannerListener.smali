.class public Lcom/unity3d/services/banners/api/BannerListener;
.super Ljava/lang/Object;
.source "BannerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendClickEvent(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "bannerAdId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/banners/BannerViewCache;->triggerBannerClickEvent(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static sendErrorEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "bannerAdId"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/unity3d/services/banners/BannerErrorInfo;

    invoke-static {}, Lcom/unity3d/services/banners/BannerErrorCode;->values()[Lcom/unity3d/services/banners/BannerErrorCode;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {v0, p2, v1}, Lcom/unity3d/services/banners/BannerErrorInfo;-><init>(Ljava/lang/String;Lcom/unity3d/services/banners/BannerErrorCode;)V

    .line 26
    .local v0, "bannerErrorInfo":Lcom/unity3d/services/banners/BannerErrorInfo;
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/unity3d/services/banners/BannerViewCache;->triggerBannerErrorEvent(Ljava/lang/String;Lcom/unity3d/services/banners/BannerErrorInfo;)V

    .line 27
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static sendLeaveApplicationEvent(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "bannerAdId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/banners/BannerViewCache;->triggerBannerLeftApplicationEvent(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static sendLoadEvent(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "bannerAdId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 13
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/banners/BannerViewCache;->triggerBannerLoadEvent(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 15
    return-void
.end method
