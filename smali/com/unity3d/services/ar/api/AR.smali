.class public Lcom/unity3d/services/ar/api/AR;
.super Ljava/lang/Object;
.source "AR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAnchor(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "matrix"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 108
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/unity3d/services/ar/view/ARView;->addAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v1, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static advanceFrame(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 130
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/ar/view/ARView;->setDrawNextCameraFrame()V

    .line 132
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v1, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getARView()Lcom/unity3d/services/ar/view/ARView;
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 185
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    .line 186
    const-string v2, "arview"

    invoke-virtual {v0, v2}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v1

    .line 187
    .local v1, "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v1}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/ar/view/ARView;

    .line 192
    .end local v1    # "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAndroidConfigEnums(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-static {}, Lcom/unity3d/services/ar/ARCheck;->isFrameworkPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/unity3d/services/ar/ARError;->AR_NOT_SUPPORTED:Lcom/unity3d/services/ar/ARError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/services/ar/ARUtils;->getConfigEnums()Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getSupportedVideoFormats(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "ignored"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 170
    .local v0, "supportedFormats":Lorg/json/JSONArray;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public static hideCameraFeed(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 50
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/unity3d/services/ar/view/ARView;->setShowCameraFrame(Z)V

    .line 52
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v1, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isARSupported(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 8
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 22
    invoke-static {}, Lcom/unity3d/services/ar/ARCheck;->isFrameworkPresent()Z

    move-result v6

    if-nez v6, :cond_1

    .line 23
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p0, v6}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 29
    invoke-static {v0}, Lcom/unity3d/services/ar/ARUtils;->isSupported(Landroid/content/Context;)I

    move-result v3

    .line 30
    .local v3, "result":I
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_2

    move v2, v4

    .line 31
    .local v2, "isTransient":Z
    :goto_1
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_3

    move v1, v4

    .line 32
    .local v1, "isSupported":Z
    :goto_2
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p0, v6}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "isSupported":Z
    .end local v2    # "isTransient":Z
    :cond_2
    move v2, v5

    .line 30
    goto :goto_1

    .restart local v2    # "isTransient":Z
    :cond_3
    move v1, v5

    .line 31
    goto :goto_2
.end method

.method public static removeAnchor(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 119
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/unity3d/services/ar/view/ARView;->removeAnchor(Ljava/lang/String;)V

    .line 121
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v1, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static restartSession(Lorg/json/JSONObject;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "properties"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 61
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/unity3d/services/ar/view/ARView;->restartSession(Lorg/json/JSONObject;)V

    .line 64
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/unity3d/services/ar/ARError;->ARCONFIG_INVALID:Lcom/unity3d/services/ar/ARError;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    sget-object v2, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setDepthFar(Ljava/lang/Double;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "far"    # Ljava/lang/Double;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p0, :cond_0

    .line 76
    sget-object v1, Lcom/unity3d/services/ar/ARError;->INVALID_VALUE:Lcom/unity3d/services/ar/ARError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 81
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unity3d/services/ar/view/ARView;->setArFar(F)V

    .line 83
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_1
    sget-object v1, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setDepthNear(Ljava/lang/Double;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "near"    # Ljava/lang/Double;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 91
    if-nez p0, :cond_0

    .line 92
    sget-object v1, Lcom/unity3d/services/ar/ARError;->INVALID_VALUE:Lcom/unity3d/services/ar/ARError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 97
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unity3d/services/ar/view/ARView;->setArNear(F)V

    .line 99
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    sget-object v1, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setViewRenderMode(Ljava/lang/Integer;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "mode"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 152
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 154
    :try_start_0
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/unity3d/services/ar/view/ARView;->setRenderMode(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 163
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/unity3d/services/ar/ARError;->INVALID_VALUE:Lcom/unity3d/services/ar/ARError;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    sget-object v2, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static showCameraFeed(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 39
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unity3d/services/ar/view/ARView;->setShowCameraFrame(Z)V

    .line 41
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v1, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static swapBuffers(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 141
    .local v0, "activity":Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Lcom/unity3d/services/ar/api/AR;->getARView()Lcom/unity3d/services/ar/view/ARView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/ar/view/ARView;->swapBuffers()V

    .line 143
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v1, Lcom/unity3d/services/ar/ARError;->ARVIEW_NULL:Lcom/unity3d/services/ar/ARError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
