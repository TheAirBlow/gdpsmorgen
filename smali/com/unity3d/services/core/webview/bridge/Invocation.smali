.class public Lcom/unity3d/services/core/webview/bridge/Invocation;
.super Ljava/lang/Object;
.source "Invocation.java"


# static fields
.field private static _idCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static _invocationSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/services/core/webview/bridge/Invocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _invocationId:I

.field private _invocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private _responses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_idCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_idCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationId:I

    .line 22
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    .line 26
    :cond_0
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    iget v1, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInvocationById(I)Lcom/unity3d/services/core/webview/bridge/Invocation;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 87
    const-class v1, Lcom/unity3d/services/core/webview/bridge/Invocation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/webview/bridge/Invocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .param p4, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationId:I

    return v0
.end method

.method public getResponses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public nextInvocation()Z
    .locals 11

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 43
    iget-object v6, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 44
    iget-object v6, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 46
    .local v3, "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "methodName":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, [Ljava/lang/Object;

    .line 49
    .local v5, "params":[Ljava/lang/Object;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;

    .line 52
    .local v0, "callback":Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    :try_start_0
    invoke-static {v1, v4, v5, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewBridge;->handleInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v6, v7

    .line 61
    .end local v0    # "callback":Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_1
    return v6

    .line 54
    .restart local v0    # "callback":Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v3    # "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v4    # "methodName":Ljava/lang/String;
    .restart local v5    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Error handling invocation %s.%s(%s)"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v8

    aput-object v4, v9, v7

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .end local v0    # "callback":Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "invocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "params":[Ljava/lang/Object;
    :cond_0
    move v6, v8

    .line 61
    goto :goto_1
.end method

.method public sendInvocationCallback()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/unity3d/services/core/webview/bridge/Invocation;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeCallback(Lcom/unity3d/services/core/webview/bridge/Invocation;)Z

    .line 76
    return-void
.end method

.method public varargs setInvocationResponse(Lcom/unity3d/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "status"    # Lcom/unity3d/services/core/webview/bridge/CallbackStatus;
    .param p2, "error"    # Ljava/lang/Enum;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lcom/unity3d/services/core/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
