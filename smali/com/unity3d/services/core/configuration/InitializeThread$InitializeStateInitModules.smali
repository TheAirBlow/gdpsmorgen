.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;
.super Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateInitModules"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/services/core/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$1;)V

    .line 158
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 159
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
    .locals 6

    .prologue
    .line 167
    iget-object v2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 168
    .local v1, "moduleName":Ljava/lang/String;
    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v5, v1}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    move-result-object v0

    .line 169
    .local v0, "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    if-eqz v0, :cond_0

    .line 170
    iget-object v5, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-interface {v0, v5}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->initModuleState(Lcom/unity3d/services/core/configuration/Configuration;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    const/4 v2, 0x0

    .line 176
    .end local v0    # "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    .end local v1    # "moduleName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 167
    .restart local v0    # "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    .restart local v1    # "moduleName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    .end local v1    # "moduleName":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateConfig;

    iget-object v3, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v2, v3}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    goto :goto_1
.end method

.method public getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    return-object v0
.end method
