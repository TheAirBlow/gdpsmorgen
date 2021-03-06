.class public Lcom/unity3d/services/banners/BannerViewCache;
.super Ljava/lang/Object;
.source "BannerViewCache.java"


# static fields
.field private static instance:Lcom/unity3d/services/banners/BannerViewCache;


# instance fields
.field private _bannerViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unity3d/services/banners/BannerView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/banners/BannerViewCache;->_bannerViews:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/unity3d/services/banners/BannerViewCache;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/unity3d/services/banners/BannerViewCache;->instance:Lcom/unity3d/services/banners/BannerViewCache;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/unity3d/services/banners/BannerViewCache;

    invoke-direct {v0}, Lcom/unity3d/services/banners/BannerViewCache;-><init>()V

    sput-object v0, Lcom/unity3d/services/banners/BannerViewCache;->instance:Lcom/unity3d/services/banners/BannerViewCache;

    .line 16
    :cond_0
    sget-object v0, Lcom/unity3d/services/banners/BannerViewCache;->instance:Lcom/unity3d/services/banners/BannerViewCache;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addBannerView(Lcom/unity3d/services/banners/BannerView;)Ljava/lang/String;
    .locals 3
    .param p1, "bannerAdView"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .local v0, "weakBannerView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/unity3d/services/banners/BannerView;>;"
    iget-object v1, p0, Lcom/unity3d/services/banners/BannerViewCache;->_bannerViews:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/unity3d/services/banners/BannerView;->getViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Lcom/unity3d/services/banners/BannerView;->getViewId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 26
    .end local v0    # "weakBannerView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/unity3d/services/banners/BannerView;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;
    .locals 2
    .param p1, "bannerAdId"    # Ljava/lang/String;

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/banners/BannerViewCache;->_bannerViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 33
    .local v0, "weakBannerView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/unity3d/services/banners/BannerView;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/banners/BannerView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 32
    .end local v0    # "weakBannerView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/unity3d/services/banners/BannerView;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized loadWebPlayer(Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)Z
    .locals 2
    .param p1, "bannerAdId"    # Ljava/lang/String;
    .param p2, "size"    # Lcom/unity3d/services/banners/UnityBannerSize;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    .line 46
    .local v0, "bannerView":Lcom/unity3d/services/banners/BannerView;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p2}, Lcom/unity3d/services/banners/BannerView;->loadWebPlayer(Lcom/unity3d/services/banners/UnityBannerSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v1, 0x1

    .line 50
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 45
    .end local v0    # "bannerView":Lcom/unity3d/services/banners/BannerView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBannerView(Ljava/lang/String;)V
    .locals 1
    .param p1, "bannerAdId"    # Ljava/lang/String;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerViewCache;->_bannerViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized triggerBannerClickEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "bannerAdId"    # Ljava/lang/String;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    .line 69
    .local v0, "bannerView":Lcom/unity3d/services/banners/BannerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v1

    .line 71
    .local v1, "listener":Lcom/unity3d/services/banners/BannerView$IListener;
    new-instance v2, Lcom/unity3d/services/banners/BannerViewCache$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/unity3d/services/banners/BannerViewCache$2;-><init>(Lcom/unity3d/services/banners/BannerViewCache;Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;)V

    invoke-static {v2}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "listener":Lcom/unity3d/services/banners/BannerView$IListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    .end local v0    # "bannerView":Lcom/unity3d/services/banners/BannerView;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized triggerBannerErrorEvent(Ljava/lang/String;Lcom/unity3d/services/banners/BannerErrorInfo;)V
    .locals 3
    .param p1, "bannerAdId"    # Ljava/lang/String;
    .param p2, "bannerErrorInfo"    # Lcom/unity3d/services/banners/BannerErrorInfo;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    .line 82
    .local v0, "bannerView":Lcom/unity3d/services/banners/BannerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v1

    .line 84
    .local v1, "listener":Lcom/unity3d/services/banners/BannerView$IListener;
    new-instance v2, Lcom/unity3d/services/banners/BannerViewCache$3;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/unity3d/services/banners/BannerViewCache$3;-><init>(Lcom/unity3d/services/banners/BannerViewCache;Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V

    invoke-static {v2}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v1    # "listener":Lcom/unity3d/services/banners/BannerView$IListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    .end local v0    # "bannerView":Lcom/unity3d/services/banners/BannerView;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized triggerBannerLeftApplicationEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "bannerAdId"    # Ljava/lang/String;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    .line 95
    .local v0, "bannerView":Lcom/unity3d/services/banners/BannerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v1

    .line 97
    .local v1, "listener":Lcom/unity3d/services/banners/BannerView$IListener;
    new-instance v2, Lcom/unity3d/services/banners/BannerViewCache$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/unity3d/services/banners/BannerViewCache$4;-><init>(Lcom/unity3d/services/banners/BannerViewCache;Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;)V

    invoke-static {v2}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v1    # "listener":Lcom/unity3d/services/banners/BannerView$IListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "bannerView":Lcom/unity3d/services/banners/BannerView;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized triggerBannerLoadEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "bannerAdId"    # Ljava/lang/String;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    .line 56
    .local v0, "bannerView":Lcom/unity3d/services/banners/BannerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v1

    .line 58
    .local v1, "listener":Lcom/unity3d/services/banners/BannerView$IListener;
    new-instance v2, Lcom/unity3d/services/banners/BannerViewCache$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/unity3d/services/banners/BannerViewCache$1;-><init>(Lcom/unity3d/services/banners/BannerViewCache;Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;)V

    invoke-static {v2}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v1    # "listener":Lcom/unity3d/services/banners/BannerView$IListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    .end local v0    # "bannerView":Lcom/unity3d/services/banners/BannerView;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
