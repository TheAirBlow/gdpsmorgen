.class public Lcom/unity3d/services/ads/webplayer/WebPlayerView;
.super Landroid/webkit/WebView;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerDownloadListener;,
        Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;,
        Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerClient;,
        Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;
    }
.end annotation


# instance fields
.field private _erroredSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _evaluateJavascript:Ljava/lang/reflect/Method;

.field private _eventSettings:Lorg/json/JSONObject;

.field private _unsubscribeLayoutChange:Ljava/lang/Runnable;

.field private viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "webSettings"    # Lorg/json/JSONObject;
    .param p4, "webPlayerSettings"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v8, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    .line 53
    iput-object v8, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    .line 58
    iput-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->viewId:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 62
    .local v1, "settings":Landroid/webkit/WebSettings;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 63
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 64
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 66
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 68
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "evaluateJavascript"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/ValueCallback;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_evaluateJavascript:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 76
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 77
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 79
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 80
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 81
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 84
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 85
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 86
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 87
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 89
    invoke-virtual {p0, v7}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setHorizontalScrollBarEnabled(Z)V

    .line 90
    invoke-virtual {p0, v7}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setVerticalScrollBarEnabled(Z)V

    .line 91
    invoke-virtual {p0, v7}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setInitialScale(I)V

    .line 92
    invoke-virtual {p0, v7}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setBackgroundColor(I)V

    .line 93
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v2}, Lcom/unity3d/services/core/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0, v7}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setBackgroundResource(I)V

    .line 96
    invoke-virtual {p0, p3, p4}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 98
    new-instance v2, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerClient;

    invoke-direct {v2, p0, v8}, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerClient;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    new-instance v2, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;

    invoke-direct {v2, p0, v8}, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerChromeClient;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 100
    new-instance v2, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerDownloadListener;

    invoke-direct {v2, p0, v8}, Lcom/unity3d/services/ads/webplayer/WebPlayerView$WebPlayerDownloadListener;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 102
    new-instance v2, Lcom/unity3d/services/ads/webplayer/WebPlayerBridgeInterface;

    invoke-direct {v2, p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerBridgeInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "webplayerbridge"

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v2

    invoke-virtual {v2, p2, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->addWebPlayer(Ljava/lang/String;Lcom/unity3d/services/ads/webplayer/WebPlayerView;)V

    .line 106
    invoke-direct {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->subscribeOnLayoutChange()V

    .line 107
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Method evaluateJavascript not found"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    iput-object v8, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_evaluateJavascript:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->viewId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->shouldCallSuper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->shouldSendEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->hasReturnValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getReturnValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addErroredSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_erroredSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_erroredSettings:Ljava/util/Map;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_erroredSettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method

.method private getReturnValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "returnValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "returnValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 377
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p3

    .line 373
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error getting default return value"

    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getTypes(Lorg/json/JSONArray;)[Ljava/lang/Class;
    .locals 7
    .param p1, "parameters"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 241
    if-nez p1, :cond_1

    .line 242
    const/4 v5, 0x0

    .line 265
    :cond_0
    return-object v5

    .line 244
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v5, v6, [Ljava/lang/Class;

    .line 247
    .local v5, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 248
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 249
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 250
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 251
    .local v3, "param":Lorg/json/JSONObject;
    const-string v6, "className"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 254
    .local v4, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_2

    .line 255
    aput-object v4, v5, v2

    .line 248
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v4    # "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 260
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_1
.end method

.method private getValues(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 10
    .param p1, "parameters"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 296
    if-nez p1, :cond_1

    .line 297
    const/4 v7, 0x0

    .line 330
    :cond_0
    :goto_0
    return-object v7

    .line 299
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v7, v8, [Ljava/lang/Object;

    .line 302
    .local v7, "values":[Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v4, v8, [Ljava/lang/Object;

    .line 303
    .local v4, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 304
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/json/JSONObject;

    if-eqz v8, :cond_4

    .line 305
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 306
    .local v3, "param":Lorg/json/JSONObject;
    const-string v8, "value"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 307
    .local v6, "value":Ljava/lang/Object;
    const-string v8, "type"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 310
    .local v0, "className":Ljava/lang/String;
    const-string v8, "className"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 311
    const-string v8, "className"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_2
    if-eqz v0, :cond_3

    const-string v8, "Enum"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 315
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 316
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_3

    .line 317
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v1, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    aput-object v8, v4, v2

    .line 303
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v5    # "type":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 322
    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v2

    goto :goto_2

    .line 326
    :cond_5
    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private hasReturnValue(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "returnValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const/4 v1, 0x1

    .line 390
    :goto_0
    return v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error getting default return value"

    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "targetObj"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/json/JSONObject;

    .prologue
    .line 180
    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 182
    .local v2, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 186
    .local v4, "parameters":Lorg/json/JSONArray;
    invoke-direct {p0, v4}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getTypes(Lorg/json/JSONArray;)[Ljava/lang/Class;

    move-result-object v5

    .line 187
    .local v5, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 188
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v4}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getValues(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "parameters":Lorg/json/JSONArray;
    .end local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->addErroredSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v6, "Setting errored"

    invoke-static {v6, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object p1
.end method

.method private shouldCallSuper(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "callSuper"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "callSuper"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 351
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error getting super call status"

    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shouldSendEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sendEvent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sendEvent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 364
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error getting send event status"

    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private subscribeOnLayoutChange()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 113
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 114
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;

    invoke-direct {v0, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)V

    .line 120
    .local v0, "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {p0, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 121
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerView$2;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView$2;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    .line 128
    .end local v0    # "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 135
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->removeWebPlayer(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_unsubscribeLayoutChange:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 139
    :cond_0
    return-void
.end method

.method public getErroredSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_erroredSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "typeName":Ljava/lang/String;
    const-string v1, "java.lang.Byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 290
    .end local p1    # "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p1

    .line 273
    .restart local p1    # "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v1, "java.lang.Short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 275
    :cond_2
    const-string v1, "java.lang.Integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 277
    :cond_3
    const-string v1, "java.lang.Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 279
    :cond_4
    const-string v1, "java.lang.Character"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 280
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 281
    :cond_5
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 283
    :cond_6
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 284
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 285
    :cond_7
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 286
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 287
    :cond_8
    const-string v1, "java.lang.Void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0
.end method

.method public invokeJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;

    invoke-direct {v0, p0, p1, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public onLayoutChange()V
    .locals 8

    .prologue
    .line 162
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 163
    .local v6, "location":[I
    invoke-virtual {p0, v6}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getLocationOnScreen([I)V

    .line 164
    const/4 v0, 0x0

    aget v1, v6, v0

    .line 165
    .local v1, "x":I
    const/4 v0, 0x1

    aget v2, v6, v0

    .line 166
    .local v2, "y":I
    invoke-virtual {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getWidth()I

    move-result v3

    .line 167
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getHeight()I

    move-result v4

    .line 168
    .local v4, "height":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 169
    .local v5, "alpha":F
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v0, v7, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getAlpha()F

    move-result v5

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->viewId:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/ads/webplayer/WebPlayerEventBridge;->sendFrameUpdate(Ljava/lang/String;IIIIF)V

    .line 173
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 158
    invoke-virtual {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->onLayoutChange()V

    .line 159
    return-void
.end method

.method public sendEvent(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "params"    # Lorg/json/JSONArray;

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:window.nativebridge.receiveEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->invokeJavascript(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setEventSettings(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "eventSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_eventSettings:Lorg/json/JSONObject;

    .line 143
    return-void
.end method

.method public setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "webSettings"    # Lorg/json/JSONObject;
    .param p2, "webPlayerSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_erroredSettings:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->_erroredSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 151
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-direct {p0, v0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 152
    invoke-direct {p0, p0, p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 153
    return-void
.end method
