.class public Lcom/unity3d/services/core/request/WebRequestThread;
.super Ljava/lang/Object;
.source "WebRequestThread.java"


# static fields
.field private static _corePoolSize:I

.field private static _keepAliveTime:J

.field private static _maximumPoolSize:I

.field private static _pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

.field private static _queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static _ready:Z

.field private static final _readyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/services/core/request/WebRequestThread;->_ready:Z

    .line 19
    sput v1, Lcom/unity3d/services/core/request/WebRequestThread;->_corePoolSize:I

    .line 20
    sput v1, Lcom/unity3d/services/core/request/WebRequestThread;->_maximumPoolSize:I

    .line 21
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/unity3d/services/core/request/WebRequestThread;->_keepAliveTime:J

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lcom/unity3d/services/core/request/WebRequestThread;->_ready:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 69
    const-class v2, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v1, :cond_2

    .line 70
    sget-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->cancel()V

    .line 71
    sget-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 72
    .local v0, "runnable":Ljava/lang/Runnable;
    instance-of v3, v0, Lcom/unity3d/services/core/request/WebRequestRunnable;

    if-eqz v3, :cond_0

    .line 73
    check-cast v0, Lcom/unity3d/services/core/request/WebRequestRunnable;

    .end local v0    # "runnable":Ljava/lang/Runnable;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/unity3d/services/core/request/WebRequestRunnable;->setCancelStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 75
    :cond_1
    :try_start_1
    sget-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 76
    sget-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->purge()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :cond_2
    monitor-exit v2

    return-void
.end method

.method private static declared-synchronized init()V
    .locals 9

    .prologue
    .line 25
    const-class v8, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v8

    :try_start_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    new-instance v1, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    sget v2, Lcom/unity3d/services/core/request/WebRequestThread;->_corePoolSize:I

    sget v3, Lcom/unity3d/services/core/request/WebRequestThread;->_maximumPoolSize:I

    sget-wide v4, Lcom/unity3d/services/core/request/WebRequestThread;->_keepAliveTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/unity3d/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v1 .. v7}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/LinkedBlockingQueue;)V

    sput-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    .line 27
    sget-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 29
    sget-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/unity3d/services/core/request/WebRequestThread$1;

    invoke-direct {v2}, Lcom/unity3d/services/core/request/WebRequestThread$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_0
    sget-boolean v1, Lcom/unity3d/services/core/request/WebRequestThread;->_ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 42
    :try_start_1
    sget-object v2, Lcom/unity3d/services/core/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    sget-object v1, Lcom/unity3d/services/core/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 44
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "Couldn\'t synchronize thread"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 50
    :cond_0
    monitor-exit v8

    return-void

    .line 25
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public static declared-synchronized request(Ljava/lang/String;Lcom/unity3d/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/services/core/request/IWebRequestListener;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestType"    # Lcom/unity3d/services/core/request/WebRequest$RequestType;
    .param p3, "connectTimeout"    # Ljava/lang/Integer;
    .param p4, "readTimeout"    # Ljava/lang/Integer;
    .param p5, "listener"    # Lcom/unity3d/services/core/request/IWebRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/core/request/WebRequest$RequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/services/core/request/IWebRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v7, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/unity3d/services/core/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/services/core/request/IWebRequestListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit v7

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized request(Ljava/lang/String;Lcom/unity3d/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/services/core/request/IWebRequestListener;)V
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestType"    # Lcom/unity3d/services/core/request/WebRequest$RequestType;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # Ljava/lang/Integer;
    .param p5, "readTimeout"    # Ljava/lang/Integer;
    .param p6, "listener"    # Lcom/unity3d/services/core/request/IWebRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/core/request/WebRequest$RequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/services/core/request/IWebRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v9, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v9

    :try_start_0
    sget-boolean v1, Lcom/unity3d/services/core/request/WebRequestThread;->_ready:Z

    if-nez v1, :cond_0

    .line 86
    invoke-static {}, Lcom/unity3d/services/core/request/WebRequestThread;->init()V

    .line 89
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 90
    :cond_1
    const-string v1, "Request is NULL or too short"

    move-object/from16 v0, p6

    invoke-interface {v0, p0, v1}, Lcom/unity3d/services/core/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit v9

    return-void

    .line 94
    :cond_2
    :try_start_1
    sget-object v10, Lcom/unity3d/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/unity3d/services/core/request/WebRequestRunnable;

    invoke-virtual {p1}, Lcom/unity3d/services/core/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, p0

    move-object v4, p3

    move-object v7, p2

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/unity3d/services/core/request/WebRequestRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/unity3d/services/core/request/IWebRequestListener;)V

    invoke-virtual {v10, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public static declared-synchronized reset()V
    .locals 5

    .prologue
    .line 53
    const-class v1, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/unity3d/services/core/request/WebRequestThread;->cancel()V

    .line 55
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_0
    :try_start_2
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/services/core/request/WebRequestThread;->_ready:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized resolve(Ljava/lang/String;Lcom/unity3d/services/core/request/IResolveHostListener;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/unity3d/services/core/request/IResolveHostListener;

    .prologue
    .line 124
    const-class v1, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 125
    :cond_0
    sget-object v0, Lcom/unity3d/services/core/request/ResolveHostError;->INVALID_HOST:Lcom/unity3d/services/core/request/ResolveHostError;

    const-string v2, "Host is NULL"

    invoke-interface {p1, p0, v0, v2}, Lcom/unity3d/services/core/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/services/core/request/ResolveHostError;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    const/4 v0, 0x0

    .line 165
    :goto_0
    monitor-exit v1

    return v0

    .line 129
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/unity3d/services/core/request/WebRequestThread$2;

    invoke-direct {v2, p0, p1}, Lcom/unity3d/services/core/request/WebRequestThread$2;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/request/IResolveHostListener;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setConcurrentRequestCount(I)V
    .locals 3
    .param p0, "count"    # I

    .prologue
    .line 98
    const-class v1, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/unity3d/services/core/request/WebRequestThread;->_corePoolSize:I

    .line 99
    sget v0, Lcom/unity3d/services/core/request/WebRequestThread;->_corePoolSize:I

    sput v0, Lcom/unity3d/services/core/request/WebRequestThread;->_maximumPoolSize:I

    .line 101
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    sget v2, Lcom/unity3d/services/core/request/WebRequestThread;->_corePoolSize:I

    invoke-virtual {v0, v2}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->setCorePoolSize(I)V

    .line 103
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    sget v2, Lcom/unity3d/services/core/request/WebRequestThread;->_maximumPoolSize:I

    invoke-virtual {v0, v2}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->setMaximumPoolSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit v1

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setKeepAliveTime(J)V
    .locals 6
    .param p0, "milliseconds"    # J

    .prologue
    .line 116
    const-class v1, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_0
    sput-wide p0, Lcom/unity3d/services/core/request/WebRequestThread;->_keepAliveTime:J

    .line 118
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    sget-wide v2, Lcom/unity3d/services/core/request/WebRequestThread;->_keepAliveTime:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit v1

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setMaximumPoolSize(I)V
    .locals 3
    .param p0, "count"    # I

    .prologue
    .line 108
    const-class v1, Lcom/unity3d/services/core/request/WebRequestThread;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/unity3d/services/core/request/WebRequestThread;->_maximumPoolSize:I

    .line 110
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/unity3d/services/core/request/WebRequestThread;->_pool:Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;

    sget v2, Lcom/unity3d/services/core/request/WebRequestThread;->_maximumPoolSize:I

    invoke-virtual {v0, v2}, Lcom/unity3d/services/core/request/CancelableThreadPoolExecutor;->setMaximumPoolSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit v1

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
