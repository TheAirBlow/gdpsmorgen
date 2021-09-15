.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;
.super Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateReset"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/services/core/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$1;)V

    .line 71
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 72
    return-void
.end method

.method private unregisterLifecycleCallbacks()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/unity3d/services/core/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/services/core/lifecycle/LifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/services/core/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/services/core/lifecycle/LifecycleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/services/core/api/Lifecycle;->setLifecycleListener(Lcom/unity3d/services/core/lifecycle/LifecycleListener;)V

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$InitializeState;
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v6, 0x0

    .line 76
    const-string v7, "Unity Ads init: starting init"

    invoke-static {v7}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 78
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 79
    .local v2, "cv":Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    .line 80
    .local v1, "currentApp":Lcom/unity3d/services/core/webview/WebViewApp;
    const/4 v5, 0x1

    .line 82
    .local v5, "success":Z
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1, v6}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppLoaded(Z)V

    .line 84
    invoke-virtual {v2, v8, v9}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v5

    .line 85
    invoke-virtual {v1, v6}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppInitialized(Z)V

    .line 87
    invoke-virtual {v1}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 88
    new-instance v7, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset$1;

    invoke-direct {v7, p0, v1, v2}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset$1;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;Lcom/unity3d/services/core/webview/WebViewApp;Landroid/os/ConditionVariable;)V

    invoke-static {v7}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v2, v8, v9}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v5

    .line 100
    :cond_0
    if-nez v5, :cond_1

    .line 101
    new-instance v6, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v7, "reset webapp"

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Reset failed on opening ConditionVariable"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v6, v7, v8, v9}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 126
    :goto_0
    return-object v6

    .line 105
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xd

    if-le v7, v8, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->unregisterLifecycleCallbacks()V

    .line 109
    :cond_2
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/unity3d/services/core/properties/SdkProperties;->setCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V

    .line 110
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_3

    .line 112
    new-instance v6, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v7, "reset webapp"

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Cache directory is NULL"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v6, v7, v8, v9}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    goto :goto_0

    .line 115
    :cond_3
    invoke-static {v6}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitialized(Z)V

    .line 117
    iget-object v7, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/unity3d/services/core/configuration/Configuration;->setConfigUrl(Ljava/lang/String;)V

    .line 119
    iget-object v7, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v7}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_5

    aget-object v4, v7, v6

    .line 120
    .local v4, "moduleName":Ljava/lang/String;
    iget-object v9, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v9, v4}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    move-result-object v3

    .line 121
    .local v3, "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    if-eqz v3, :cond_4

    .line 122
    iget-object v9, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-interface {v3, v9}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->resetState(Lcom/unity3d/services/core/configuration/Configuration;)Z

    .line 119
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 126
    .end local v3    # "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    .end local v4    # "moduleName":Ljava/lang/String;
    :cond_5
    new-instance v6, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;

    iget-object v7, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v6, v7}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateInitModules;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    goto :goto_0
.end method
