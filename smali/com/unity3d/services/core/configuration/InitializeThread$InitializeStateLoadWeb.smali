.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;
.super Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateLoadWeb"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/services/core/configuration/Configuration;

.field private _maxRetries:I

.field private _retries:I

.field private _retryDelay:I


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$1;)V

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    .line 256
    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    .line 257
    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    .line 260
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 261
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
    .locals 8

    .prologue
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads init: loading webapp from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v5}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 274
    :try_start_0
    new-instance v1, Lcom/unity3d/services/core/request/WebRequest;

    iget-object v4, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v4}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .local v1, "request":Lcom/unity3d/services/core/request/WebRequest;
    :try_start_1
    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->makeRequest()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 295
    .local v2, "webViewData":Ljava/lang/String;
    iget-object v4, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v4}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "webViewHash":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/unity3d/services/core/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 297
    new-instance v4, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v5, "load web"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Invalid webViewHash"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v4, v5, v6, v7}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 304
    .end local v1    # "request":Lcom/unity3d/services/core/request/WebRequest;
    .end local v2    # "webViewData":Ljava/lang/String;
    .end local v3    # "webViewHash":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v4, "Malformed URL"

    invoke-static {v4, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 278
    new-instance v4, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v5, "make webrequest"

    iget-object v6, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v4, v5, v0, v6}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    goto :goto_0

    .line 285
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "request":Lcom/unity3d/services/core/request/WebRequest;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    iget v4, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    iget v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    if-ge v4, v5, :cond_0

    .line 287
    iget v4, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    .line 288
    iget v4, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    .line 289
    new-instance v4, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateRetry;

    iget v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    invoke-direct {v4, p0, v5}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;I)V

    goto :goto_0

    .line 292
    :cond_0
    new-instance v4, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateNetworkError;

    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v4, v0, p0, v5}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;Lcom/unity3d/services/core/configuration/Configuration;)V

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "webViewData":Ljava/lang/String;
    .restart local v3    # "webViewHash":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 301
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/unity3d/services/core/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 304
    :cond_2
    new-instance v4, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;

    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v4, v5, v2}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    return-object v0
.end method
