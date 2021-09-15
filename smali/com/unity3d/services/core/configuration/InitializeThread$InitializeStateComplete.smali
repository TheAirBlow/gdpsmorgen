.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateComplete;
.super Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateComplete"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/services/core/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$1;)V

    .line 355
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateComplete;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 356
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
    .locals 6

    .prologue
    .line 360
    iget-object v2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateComplete;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 361
    .local v1, "moduleName":Ljava/lang/String;
    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateComplete;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v5, v1}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    move-result-object v0

    .line 362
    .local v0, "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    if-eqz v0, :cond_0

    .line 363
    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateComplete;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-interface {v0, v5}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->initCompleteState(Lcom/unity3d/services/core/configuration/Configuration;)Z

    .line 360
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    .end local v1    # "moduleName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
