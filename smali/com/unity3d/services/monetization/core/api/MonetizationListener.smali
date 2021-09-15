.class public Lcom/unity3d/services/monetization/core/api/MonetizationListener;
.super Ljava/lang/Object;
.source "MonetizationListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMonetizationEnabled(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/services/monetization/core/properties/ClientProperties;->isMonetizationEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static sendPlacementContentReady(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 21
    invoke-static {}, Lcom/unity3d/services/monetization/core/properties/ClientProperties;->getListener()Lcom/unity3d/services/monetization/IUnityMonetizationListener;

    move-result-object v2

    .line 22
    .local v2, "placementContentListener":Lcom/unity3d/services/monetization/IUnityMonetizationListener;
    if-eqz v2, :cond_0

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents;->getPlacementContent(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;

    move-result-object v1

    .line 25
    .local v1, "placementContent":Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
    invoke-interface {v2, p0, v1}, Lcom/unity3d/services/monetization/IUnityMonetizationListener;->onPlacementContentReady(Ljava/lang/String;Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;)V

    .line 26
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "placementContent":Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->PLACEMENTCONTENT_LISTENER_ERROR:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->PLACEMENTCONTENT_LISTENER_NULL:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static sendPlacementContentStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "previousState"    # Ljava/lang/String;
    .param p2, "newState"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-static {}, Lcom/unity3d/services/monetization/core/properties/ClientProperties;->getListener()Lcom/unity3d/services/monetization/IUnityMonetizationListener;

    move-result-object v2

    .line 38
    .local v2, "placementContentListener":Lcom/unity3d/services/monetization/IUnityMonetizationListener;
    if-eqz v2, :cond_0

    .line 40
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents;->getPlacementContent(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;

    move-result-object v1

    .line 43
    .local v1, "placementContent":Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
    invoke-static {p1}, Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;->valueOf(Ljava/lang/String;)Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    move-result-object v3

    .line 44
    invoke-static {p2}, Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;->valueOf(Ljava/lang/String;)Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    move-result-object v4

    .line 41
    invoke-interface {v2, p0, v1, v3, v4}, Lcom/unity3d/services/monetization/IUnityMonetizationListener;->onPlacementContentStateChange(Ljava/lang/String;Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;)V

    .line 45
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p3, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "placementContent":Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->PLACEMENTCONTENT_LISTENER_ERROR:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p3, v3, v4}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->PLACEMENTCONTENT_LISTENER_NULL:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p3, v3, v4}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
