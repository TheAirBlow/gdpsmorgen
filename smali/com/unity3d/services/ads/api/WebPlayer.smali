.class public Lcom/unity3d/services/ads/api/WebPlayer;
.super Ljava/lang/Object;
.source "WebPlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSettings(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "viewId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v0

    .line 114
    .local v0, "webPlayerSettingsCache":Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;
    invoke-virtual {v0, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->removeWebSettings(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->removeWebPlayerSettings(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->removeWebPlayerEventSettings(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v1

    .line 118
    .local v1, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v1, :cond_0

    .line 119
    new-instance v2, Lcom/unity3d/services/ads/api/WebPlayer$6;

    invoke-direct {v2, v1}, Lcom/unity3d/services/ads/api/WebPlayer$6;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)V

    invoke-static {v2}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v2, Lcom/unity3d/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/services/ads/webplayer/WebPlayerError;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getErroredSettings(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 9
    .param p0, "viewId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 136
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v5

    .line 137
    .local v5, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v5, :cond_1

    .line 138
    invoke-virtual {v5}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->getErroredSettings()Ljava/util/Map;

    move-result-object v2

    .line 139
    .local v2, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v4, "retObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    .local v1, "errorIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 145
    .local v3, "pair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "errorIterator":Ljava/util/Iterator;
    .end local v3    # "pair":Ljava/util/Map$Entry;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Error forming JSON object"

    invoke-static {v6, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p1, v6}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 152
    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 156
    .end local v2    # "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "retObj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 154
    :cond_1
    sget-object v6, Lcom/unity3d/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/services/ads/webplayer/WebPlayerError;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getFrame(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callId"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 171
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v0

    .line 173
    .local v0, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Lcom/unity3d/services/ads/api/WebPlayer$7;

    invoke-direct {v1, v0, p0, p1}, Lcom/unity3d/services/ads/api/WebPlayer$7;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    :cond_0
    return-void
.end method

.method public static sendEvent(Lorg/json/JSONArray;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "parameters"    # Lorg/json/JSONArray;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v0

    .line 161
    .local v0, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->sendEvent(Lorg/json/JSONArray;)V

    .line 163
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/services/ads/webplayer/WebPlayerError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v0

    .line 43
    .local v0, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/unity3d/services/ads/api/WebPlayer$2;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/unity3d/services/ads/api/WebPlayer$2;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/services/ads/webplayer/WebPlayerError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setDataWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 7
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "viewId"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v1

    .line 59
    .local v1, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Lcom/unity3d/services/ads/api/WebPlayer$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/services/ads/api/WebPlayer$3;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/services/ads/webplayer/WebPlayerError;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setEventSettings(Lorg/json/JSONObject;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "eventSettings"    # Lorg/json/JSONObject;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->addWebPlayerEventSettings(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 97
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v0

    .line 98
    .local v0, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lcom/unity3d/services/ads/api/WebPlayer$5;

    invoke-direct {v1, v0, p0}, Lcom/unity3d/services/ads/api/WebPlayer$5;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/services/ads/webplayer/WebPlayerError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "webSettings"    # Lorg/json/JSONObject;
    .param p1, "webPlayerSettings"    # Lorg/json/JSONObject;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->addWebSettings(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 76
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->addWebPlayerSettings(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 78
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v0

    .line 79
    .local v0, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Lcom/unity3d/services/ads/api/WebPlayer$4;

    invoke-direct {v1, v0, p0, p1}, Lcom/unity3d/services/ads/api/WebPlayer$4;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/services/ads/webplayer/WebPlayerError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setUrl(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v0

    .line 27
    .local v0, "webPlayerView":Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lcom/unity3d/services/ads/api/WebPlayer$1;

    invoke-direct {v1, v0, p0}, Lcom/unity3d/services/ads/api/WebPlayer$1;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/services/ads/webplayer/WebPlayerError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
