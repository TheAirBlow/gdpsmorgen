.class public Lcom/unity3d/services/core/configuration/CoreModuleConfiguration;
.super Ljava/lang/Object;
.source "CoreModuleConfiguration.java"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IModuleConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 3

    .prologue
    .line 14
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/unity3d/services/core/api/Broadcast;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/unity3d/services/core/api/Cache;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/unity3d/services/core/api/Connectivity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/unity3d/services/core/api/DeviceInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/unity3d/services/core/api/Storage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/unity3d/services/core/api/Sdk;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/unity3d/services/core/api/Request;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/unity3d/services/core/api/Resolve;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/unity3d/services/core/api/Intent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/unity3d/services/core/api/Lifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/unity3d/services/core/api/Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/unity3d/services/core/api/SensorInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/unity3d/services/core/api/Permissions;

    aput-object v2, v0, v1

    .line 30
    .local v0, "list":[Ljava/lang/Class;
    return-object v0
.end method

.method public initCompleteState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public initErrorState(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public initModuleState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public resetState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 35
    invoke-static {}, Lcom/unity3d/services/core/broadcast/BroadcastMonitor;->removeAllBroadcastListeners()V

    .line 36
    invoke-static {}, Lcom/unity3d/services/core/cache/CacheThread;->cancel()V

    .line 37
    invoke-static {}, Lcom/unity3d/services/core/request/WebRequestThread;->cancel()V

    .line 38
    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->stopAll()V

    .line 40
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/device/StorageManager;->init(Landroid/content/Context;)Z

    .line 41
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/device/AdvertisingId;->init(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/unity3d/services/core/device/VolumeChange;->clearAllListeners()V

    .line 44
    const/4 v0, 0x1

    return v0
.end method
