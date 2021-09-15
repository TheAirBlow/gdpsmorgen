.class final Lcom/unity3d/services/core/request/WebRequestThread$2;
.super Ljava/lang/Object;
.source "WebRequestThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/request/WebRequestThread;->resolve(Ljava/lang/String;Lcom/unity3d/services/core/request/IResolveHostListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$listener:Lcom/unity3d/services/core/request/IResolveHostListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/services/core/request/IResolveHostListener;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$host:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$listener:Lcom/unity3d/services/core/request/IResolveHostListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 132
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 133
    .local v0, "cv":Landroid/os/ConditionVariable;
    const/4 v3, 0x0

    .line 135
    .local v3, "t":Ljava/lang/Thread;
    :try_start_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/unity3d/services/core/request/WebRequestThread$2$1;

    invoke-direct {v5, p0, v0}, Lcom/unity3d/services/core/request/WebRequestThread$2$1;-><init>(Lcom/unity3d/services/core/request/WebRequestThread$2;Landroid/os/ConditionVariable;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v3    # "t":Ljava/lang/Thread;
    .local v4, "t":Ljava/lang/Thread;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 156
    .end local v4    # "t":Ljava/lang/Thread;
    .restart local v3    # "t":Ljava/lang/Thread;
    :goto_0
    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    .line 157
    .local v2, "success":Z
    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 159
    iget-object v5, p0, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$listener:Lcom/unity3d/services/core/request/IResolveHostListener;

    iget-object v6, p0, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$host:Ljava/lang/String;

    sget-object v7, Lcom/unity3d/services/core/request/ResolveHostError;->TIMEOUT:Lcom/unity3d/services/core/request/ResolveHostError;

    const-string v8, "Timeout"

    invoke-interface {v5, v6, v7, v8}, Lcom/unity3d/services/core/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/services/core/request/ResolveHostError;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void

    .line 151
    .end local v2    # "success":Z
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v5, "Exception while resolving host"

    invoke-static {v5, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    iget-object v5, p0, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$listener:Lcom/unity3d/services/core/request/IResolveHostListener;

    iget-object v6, p0, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$host:Ljava/lang/String;

    sget-object v7, Lcom/unity3d/services/core/request/ResolveHostError;->UNEXPECTED_EXCEPTION:Lcom/unity3d/services/core/request/ResolveHostError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/unity3d/services/core/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/services/core/request/ResolveHostError;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "t":Ljava/lang/Thread;
    .restart local v4    # "t":Ljava/lang/Thread;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "t":Ljava/lang/Thread;
    .restart local v3    # "t":Ljava/lang/Thread;
    goto :goto_1
.end method
