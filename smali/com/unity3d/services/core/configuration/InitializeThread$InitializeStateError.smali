.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;
.super Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateError"
.end annotation


# instance fields
.field protected _configuration:Lcom/unity3d/services/core/configuration/Configuration;

.field _exception:Ljava/lang/Exception;

.field _state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$1;)V

    .line 377
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    .line 378
    iput-object p2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_exception:Ljava/lang/Exception;

    .line 379
    iput-object p3, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 380
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
    .locals 8

    .prologue
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads init: halting init in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_exception:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 387
    .local v1, "moduleName":Ljava/lang/String;
    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v5, v1}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    move-result-object v0

    .line 388
    .local v0, "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    if-eqz v0, :cond_0

    .line 389
    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    iget-object v6, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    iget-object v7, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;->_exception:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v5, v6, v7}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->initErrorState(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;Ljava/lang/String;)Z

    .line 386
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    .end local v1    # "moduleName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
