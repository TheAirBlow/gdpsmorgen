.class final Lcom/unity3d/services/core/request/WebRequestThread$1;
.super Ljava/lang/Object;
.source "WebRequestThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/request/WebRequestThread;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/services/core/request/WebRequestThread;->access$002(Z)Z

    .line 34
    invoke-static {}, Lcom/unity3d/services/core/request/WebRequestThread;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-static {}, Lcom/unity3d/services/core/request/WebRequestThread;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
