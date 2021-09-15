.class public Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;
.super Ljava/lang/Object;
.source "AdsModuleConfiguration.java"

# interfaces
.implements Lcom/unity3d/services/ads/configuration/IAdsModuleConfiguration;


# instance fields
.field private _address:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;->_address:Ljava/net/InetAddress;

    return-object p1
.end method


# virtual methods
.method public getAdUnitViewHandlers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>;"
    const-string v1, "videoplayer"

    const-class v2, Lcom/unity3d/services/ads/adunit/VideoPlayerHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "webplayer"

    const-class v2, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "webview"

    const-class v2, Lcom/unity3d/services/ads/adunit/WebViewHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-object v0
.end method

.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 3

    .prologue
    .line 23
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/unity3d/services/ads/api/AdUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/unity3d/services/ads/api/Listener;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/unity3d/services/ads/api/VideoPlayer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/unity3d/services/ads/api/Placement;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/unity3d/services/ads/api/WebPlayer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/unity3d/services/ads/api/Purchasing;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/unity3d/services/ads/api/AdsProperties;

    aput-object v2, v0, v1

    .line 33
    .local v0, "list":[Ljava/lang/Class;
    return-object v0
.end method

.method public initCompleteState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public initErrorState(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init failed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$3;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$3;-><init>(Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    const/4 v1, 0x1

    return v1
.end method

.method public initModuleState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 8
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    const/4 v4, 0x1

    .line 42
    const-string v5, "Unity Ads init: checking for ad blockers"

    invoke-static {v5}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 46
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    .local v0, "configHost":Ljava/lang/String;
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 53
    .local v1, "cv":Landroid/os/ConditionVariable;
    new-instance v5, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;-><init>(Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 64
    invoke-virtual {v5}, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->start()V

    .line 67
    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v3

    .line 68
    .local v3, "success":Z
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;->_address:Ljava/net/InetAddress;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;->_address:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    const-string v4, "Unity Ads init: halting init because Unity Ads config resolves to loopback address (due to ad blocker?)"

    invoke-static {v4}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 72
    new-instance v4, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$2;

    invoke-direct {v4, p0}, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$2;-><init>(Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;)V

    invoke-static {v4}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    const/4 v4, 0x0

    .line 83
    .end local v0    # "configHost":Ljava/lang/String;
    .end local v1    # "cv":Landroid/os/ConditionVariable;
    .end local v3    # "success":Z
    :cond_0
    :goto_0
    return v4

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/net/MalformedURLException;
    goto :goto_0
.end method

.method public resetState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 37
    invoke-static {}, Lcom/unity3d/services/ads/placement/Placement;->reset()V

    .line 38
    const/4 v0, 0x1

    return v0
.end method
