.class Lcom/unity3d/services/core/request/WebRequestThread$2$1;
.super Ljava/lang/Object;
.source "WebRequestThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/request/WebRequestThread$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/core/request/WebRequestThread$2;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/request/WebRequestThread$2;Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/services/core/request/WebRequestThread$2;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/unity3d/services/core/request/WebRequestThread$2$1;->this$0:Lcom/unity3d/services/core/request/WebRequestThread$2;

    iput-object p2, p0, Lcom/unity3d/services/core/request/WebRequestThread$2$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/unity3d/services/core/request/WebRequestThread$2$1;->this$0:Lcom/unity3d/services/core/request/WebRequestThread$2;

    iget-object v3, v3, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$host:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 140
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "strAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/unity3d/services/core/request/WebRequestThread$2$1;->this$0:Lcom/unity3d/services/core/request/WebRequestThread$2;

    iget-object v3, v3, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$listener:Lcom/unity3d/services/core/request/IResolveHostListener;

    iget-object v4, p0, Lcom/unity3d/services/core/request/WebRequestThread$2$1;->this$0:Lcom/unity3d/services/core/request/WebRequestThread$2;

    iget-object v4, v4, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$host:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/unity3d/services/core/request/IResolveHostListener;->onResolve(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "strAddress":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/unity3d/services/core/request/WebRequestThread$2$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 147
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v3, "Unknown host"

    invoke-static {v3, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 144
    iget-object v3, p0, Lcom/unity3d/services/core/request/WebRequestThread$2$1;->this$0:Lcom/unity3d/services/core/request/WebRequestThread$2;

    iget-object v3, v3, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$listener:Lcom/unity3d/services/core/request/IResolveHostListener;

    iget-object v4, p0, Lcom/unity3d/services/core/request/WebRequestThread$2$1;->this$0:Lcom/unity3d/services/core/request/WebRequestThread$2;

    iget-object v4, v4, Lcom/unity3d/services/core/request/WebRequestThread$2;->val$host:Ljava/lang/String;

    sget-object v5, Lcom/unity3d/services/core/request/ResolveHostError;->UNKNOWN_HOST:Lcom/unity3d/services/core/request/ResolveHostError;

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/unity3d/services/core/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/services/core/request/ResolveHostError;Ljava/lang/String;)V

    goto :goto_0
.end method
