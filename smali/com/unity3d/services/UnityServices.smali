.class public Lcom/unity3d/services/UnityServices;
.super Ljava/lang/Object;
.source "UnityServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/UnityServices$UnityServicesError;
    }
.end annotation


# static fields
.field private static _configurationInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/services/UnityServices;->_configurationInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugMode()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/IUnityServicesListener;ZZ)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/services/IUnityServicesListener;
    .param p3, "testMode"    # Z
    .param p4, "enablePerPlacementLoad"    # Z

    .prologue
    .line 30
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 33
    sget-boolean v1, Lcom/unity3d/services/UnityServices;->_configurationInitialized:Z

    if-eqz v1, :cond_1

    .line 34
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "You are trying to re-initialize with a different gameId"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/unity3d/services/UnityServices;->_configurationInitialized:Z

    .line 42
    invoke-static {}, Lcom/unity3d/services/UnityServices;->isSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    const-string v1, "Error while initializing Unity Services: device is not supported"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializationTime(J)V

    .line 49
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 50
    :cond_3
    const-string v1, "Error while initializing Unity Services: empty game ID, halting Unity Ads init"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 51
    if-eqz p2, :cond_0

    .line 52
    sget-object v1, Lcom/unity3d/services/UnityServices$UnityServicesError;->INVALID_ARGUMENT:Lcom/unity3d/services/UnityServices$UnityServicesError;

    const-string v2, "Empty game ID"

    invoke-interface {p2, v1, v2}, Lcom/unity3d/services/IUnityServicesListener;->onUnityServicesError(Lcom/unity3d/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    if-nez p0, :cond_5

    .line 58
    const-string v1, "Error while initializing Unity Services: null activity, halting Unity Ads init"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 59
    if-eqz p2, :cond_0

    .line 60
    sget-object v1, Lcom/unity3d/services/UnityServices$UnityServicesError;->INVALID_ARGUMENT:Lcom/unity3d/services/UnityServices$UnityServicesError;

    const-string v2, "Null activity"

    invoke-interface {p2, v1, v2}, Lcom/unity3d/services/IUnityServicesListener;->onUnityServicesError(Lcom/unity3d/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_5
    if-eqz p3, :cond_6

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing Unity Services "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with game id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in test mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 71
    :goto_1
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getDebugMode()Z

    move-result v1

    invoke-static {v1}, Lcom/unity3d/services/core/properties/SdkProperties;->setDebugMode(Z)V

    .line 72
    invoke-static {p2}, Lcom/unity3d/services/core/properties/SdkProperties;->setListener(Lcom/unity3d/services/IUnityServicesListener;)V

    .line 73
    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setGameId(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplication(Landroid/app/Application;)V

    .line 76
    invoke-static {p4}, Lcom/unity3d/services/core/properties/SdkProperties;->setPerPlacementLoadEnabled(Z)V

    .line 77
    invoke-static {p3}, Lcom/unity3d/services/core/properties/SdkProperties;->setTestMode(Z)V

    .line 79
    invoke-static {}, Lcom/unity3d/services/core/configuration/EnvironmentCheck;->isEnvironmentOk()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 80
    const-string v1, "Unity Services environment check OK"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/Configuration;-><init>()V

    .line 90
    .local v0, "configuration":Lcom/unity3d/services/core/configuration/Configuration;
    invoke-static {v0}, Lcom/unity3d/services/core/configuration/InitializeThread;->initialize(Lcom/unity3d/services/core/configuration/Configuration;)V

    goto/16 :goto_0

    .line 68
    .end local v0    # "configuration":Lcom/unity3d/services/core/configuration/Configuration;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing Unity Services "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with game id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in production mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :cond_7
    const-string v1, "Error during Unity Services environment check, halting Unity Services init"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 83
    if-eqz p2, :cond_0

    .line 84
    sget-object v1, Lcom/unity3d/services/UnityServices$UnityServicesError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/services/UnityServices$UnityServicesError;

    const-string v2, "Unity Services init environment check failed"

    invoke-interface {p2, v1, v2}, Lcom/unity3d/services/IUnityServicesListener;->onUnityServicesError(Lcom/unity3d/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debugMode"    # Z

    .prologue
    .line 111
    invoke-static {p0}, Lcom/unity3d/services/core/properties/SdkProperties;->setDebugMode(Z)V

    .line 112
    return-void
.end method
