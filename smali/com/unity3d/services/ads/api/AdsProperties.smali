.class public Lcom/unity3d/services/ads/api/AdsProperties;
.super Ljava/lang/Object;
.source "AdsProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShowTimeout(Ljava/lang/Integer;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "timeout"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/properties/AdsProperties;->setShowTimeout(I)V

    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 11
    return-void
.end method
