.class public Lcom/unity3d/services/core/request/WebRequestRunnable;
.super Ljava/lang/Object;
.source "WebRequestRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final _body:Ljava/lang/String;

.field private _canceled:Z

.field private final _connectTimeout:I

.field private _currentRequest:Lcom/unity3d/services/core/request/WebRequest;

.field private final _headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _listener:Lcom/unity3d/services/core/request/IWebRequestListener;

.field private final _readTimeout:I

.field private final _type:Ljava/lang/String;

.field private final _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/unity3d/services/core/request/IWebRequestListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # I
    .param p5, "readTimeout"    # I
    .param p7, "listener"    # Lcom/unity3d/services/core/request/IWebRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/unity3d/services/core/request/IWebRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_canceled:Z

    .line 27
    iput-object p1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_type:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_body:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_connectTimeout:I

    .line 31
    iput p5, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_readTimeout:I

    .line 32
    iput-object p6, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_headers:Ljava/util/Map;

    .line 33
    iput-object p7, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_listener:Lcom/unity3d/services/core/request/IWebRequestListener;

    .line 34
    return-void
.end method

.method private getResponseHeaders(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 6
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 113
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    .restart local v1    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "tmpAr":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    .end local v0    # "k":Ljava/lang/String;
    .end local v2    # "tmpAr":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;II)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "connectTimeout"    # I
    .param p6, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-boolean v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_canceled:Z

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v1, Lcom/unity3d/services/core/request/WebRequest;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    iput-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 62
    if-eqz p4, :cond_2

    .line 63
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/unity3d/services/core/request/WebRequest;->setBody(Ljava/lang/String;)V

    .line 68
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->makeRequest()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 76
    .local v10, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v7, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 83
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v1, "null"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v12, v1, [Ljava/lang/String;

    .line 88
    .local v12, "values":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "valueidx":I
    :goto_2
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 89
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v12, v11

    .line 88
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 69
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "response":Ljava/lang/String;
    .end local v11    # "valueidx":I
    .end local v12    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 70
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    const-string v1, "Error completing request"

    invoke-static {v1, v8}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unity3d/services/core/request/WebRequestRunnable;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "data":Landroid/os/Bundle;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "response":Ljava/lang/String;
    .restart local v11    # "valueidx":I
    .restart local v12    # "values":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v9, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 95
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "valueidx":I
    .end local v12    # "values":[Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseCode()I

    move-result v1

    invoke-direct {p0, v7}, Lcom/unity3d/services/core/request/WebRequestRunnable;->getResponseHeaders(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v10, v1, v2}, Lcom/unity3d/services/core/request/WebRequestRunnable;->onSucceed(Ljava/lang/String;ILjava/util/Map;)V

    goto/16 :goto_0

    .line 69
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v10    # "response":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v8

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_3
.end method

.method private onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_listener:Lcom/unity3d/services/core/request/IWebRequestListener;

    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/unity3d/services/core/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private onSucceed(Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_listener:Lcom/unity3d/services/core/request/IWebRequestListener;

    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/unity3d/services/core/request/IWebRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling request message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_body:Ljava/lang/String;

    iget v5, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_connectTimeout:I

    iget v6, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_readTimeout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/services/core/request/WebRequestRunnable;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v7

    .line 42
    .local v7, "e":Ljava/net/MalformedURLException;
    const-string v0, "Malformed URL"

    invoke-static {v0, v7}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 43
    const-string v0, "Malformed URL"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/request/WebRequestRunnable;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCancelStatus(Z)V
    .locals 1
    .param p1, "canceled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_canceled:Z

    .line 50
    iget-boolean v0, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_canceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/unity3d/services/core/request/WebRequestRunnable;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->cancel()V

    .line 53
    :cond_0
    return-void
.end method
