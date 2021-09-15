.class public Lcom/unity3d/services/ads/adunit/WebViewHandler;
.super Ljava/lang/Object;
.source "WebViewHandler.java"

# interfaces
.implements Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z
    .locals 1
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()Z
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 18
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Lcom/unity3d/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    return-void
.end method

.method public onDestroy(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/WebViewHandler;->destroy()Z

    .line 46
    return-void
.end method

.method public onPause(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 42
    return-void
.end method

.method public onResume(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 39
    return-void
.end method

.method public onStart(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 33
    return-void
.end method

.method public onStop(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 36
    return-void
.end method
