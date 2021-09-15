.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;
.super Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateCreate"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/services/core/configuration/Configuration;

.field private _webViewData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;
    .param p2, "webViewData"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$1;)V

    .line 313
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 314
    iput-object p2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
    .locals 7

    .prologue
    .line 327
    const-string v3, "Unity Ads init: creating webapp"

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 330
    .local v0, "configuration":Lcom/unity3d/services/core/configuration/Configuration;
    iget-object v3, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/unity3d/services/core/configuration/Configuration;->setWebViewData(Ljava/lang/String;)V

    .line 334
    :try_start_0
    invoke-static {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->create(Lcom/unity3d/services/core/configuration/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 341
    .local v1, "createSuccessFull":Z
    if-eqz v1, :cond_0

    .line 342
    new-instance v3, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateComplete;

    iget-object v4, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v3, v4}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateComplete;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 346
    .end local v1    # "createSuccessFull":Z
    :goto_0
    return-object v3

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/IllegalThreadStateException;
    const-string v3, "Illegal Thread"

    invoke-static {v3, v2}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 338
    new-instance v3, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v4, "create webapp"

    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v3, v4, v2, v5}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    goto :goto_0

    .line 345
    .end local v2    # "e":Ljava/lang/IllegalThreadStateException;
    .restart local v1    # "createSuccessFull":Z
    :cond_0
    const-string v3, "Unity Ads WebApp creation failed!"

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 346
    new-instance v3, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v4, "create webapp"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Creation of WebApp failed!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v3, v4, v5, v6}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    return-object v0
.end method

.method public getWebData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    return-object v0
.end method
