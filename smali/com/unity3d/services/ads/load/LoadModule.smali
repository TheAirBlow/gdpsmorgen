.class public Lcom/unity3d/services/ads/load/LoadModule;
.super Ljava/lang/Object;
.source "LoadModule.java"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IInitializationListener;


# static fields
.field private static instance:Lcom/unity3d/services/ads/load/LoadModule;


# instance fields
.field private _initializationNotificationCenter:Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;

.field private _loadBridge:Lcom/unity3d/services/ads/load/ILoadBridge;

.field private _loadEventBuffer:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/load/ILoadBridge;Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;)V
    .locals 1
    .param p1, "loadBridge"    # Lcom/unity3d/services/ads/load/ILoadBridge;
    .param p2, "initializationNotificationCenter"    # Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    .line 30
    iput-object p1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadBridge:Lcom/unity3d/services/ads/load/ILoadBridge;

    .line 31
    iput-object p2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_initializationNotificationCenter:Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;

    .line 32
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_initializationNotificationCenter:Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;

    invoke-interface {v0, p0}, Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;->addListener(Lcom/unity3d/services/core/configuration/IInitializationListener;)V

    .line 33
    return-void
.end method

.method private addPlacementId(Ljava/lang/String;)V
    .locals 5
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 56
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    .local v1, "updatedCount":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v1    # "updatedCount":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "count":Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v0    # "count":Ljava/lang/Integer;
    :cond_2
    iget-object v2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance()Lcom/unity3d/services/ads/load/LoadModule;
    .locals 3

    .prologue
    .line 17
    sget-object v2, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    if-nez v2, :cond_0

    .line 18
    new-instance v1, Lcom/unity3d/services/ads/load/LoadBridge;

    invoke-direct {v1}, Lcom/unity3d/services/ads/load/LoadBridge;-><init>()V

    .line 19
    .local v1, "loadBridge":Lcom/unity3d/services/ads/load/ILoadBridge;
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object v0

    .line 20
    .local v0, "initializationNotificationCenter":Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;
    new-instance v2, Lcom/unity3d/services/ads/load/LoadModule;

    invoke-direct {v2, v1, v0}, Lcom/unity3d/services/ads/load/LoadModule;-><init>(Lcom/unity3d/services/ads/load/ILoadBridge;Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;)V

    sput-object v2, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    .line 22
    :cond_0
    sget-object v2, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    return-object v2
.end method

.method private sendLoadEvents()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadBridge:Lcom/unity3d/services/ads/load/ILoadBridge;

    iget-object v1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1}, Lcom/unity3d/services/ads/load/ILoadBridge;->loadPlacements(Ljava/util/Map;)V

    .line 72
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    .line 73
    return-void
.end method


# virtual methods
.method public declared-synchronized load(Ljava/lang/String;)V
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/load/LoadModule;->addPlacementId(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/unity3d/services/ads/load/LoadModule;->sendLoadEvents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSdkInitializationFailed(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 50
    return-void
.end method

.method public declared-synchronized onSdkInitialized()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/services/ads/load/LoadModule;->sendLoadEvents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
