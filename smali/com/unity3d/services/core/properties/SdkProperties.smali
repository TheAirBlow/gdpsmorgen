.class public Lcom/unity3d/services/core/properties/SdkProperties;
.super Ljava/lang/Object;
.source "SdkProperties.java"


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "UnityAdsCache"

.field private static final CHINA_ISO_ALPHA_2_CODE:Ljava/lang/String; = "CN"

.field private static final CHINA_ISO_ALPHA_3_CODE:Ljava/lang/String; = "CHN"

.field private static final LOCAL_CACHE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsCache-"

.field private static final LOCAL_STORAGE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsStorage-"

.field private static _cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

.field private static _configUrl:Ljava/lang/String;

.field private static _debugMode:Z

.field private static _initializationTime:J

.field private static _initialized:Z

.field private static _listener:Lcom/unity3d/services/IUnityServicesListener;

.field private static _perPlacementLoadEnabled:Z

.field private static _reinitialized:Z

.field private static _testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 17
    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTime:J

    .line 27
    sput-boolean v2, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    .line 28
    sput-boolean v2, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    .line 29
    sput-boolean v2, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    .line 30
    sput-boolean v2, Lcom/unity3d/services/core/properties/SdkProperties;->_perPlacementLoadEnabled:Z

    .line 31
    sput-boolean v2, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/unity3d/services/core/cache/CacheDirectory;

    const-string v1, "UnityAdsCache"

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/cache/CacheDirectory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->setCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V

    .line 125
    :cond_0
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    invoke-virtual {v0, p0}, Lcom/unity3d/services/core/cache/CacheDirectory;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "UnityAdsCache"

    return-object v0
.end method

.method public static getCacheDirectoryObject()Lcom/unity3d/services/core/cache/CacheDirectory;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    return-object v0
.end method

.method public static getCacheFilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "UnityAdsCache-"

    return-object v0
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "release"

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 93
    :cond_0
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getDebugMode()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    return v0
.end method

.method public static getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "flavor"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getNetworkCountryISO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/services/core/properties/SdkProperties;->isChinaLocale(Ljava/lang/String;)Z

    move-result v1

    .line 98
    .local v1, "isChinaLocale":Z
    const-string v0, "https://config.unityads.unity3d.col/webview/"

    .line 99
    .local v0, "baseURI":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 100
    const-string v0, "https://config.unityads.unitychina.cn/webview/"

    .line 102
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getWebViewBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/config.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInitializationTime()J
    .locals 2

    .prologue
    .line 141
    sget-wide v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTime:J

    return-wide v0
.end method

.method public static getListener()Lcom/unity3d/services/IUnityServicesListener;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_listener:Lcom/unity3d/services/IUnityServicesListener;

    return-object v0
.end method

.method public static getLocalStorageFilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "UnityAdsStorage-"

    return-object v0
.end method

.method public static getLocalWebViewFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/UnityAdsWebApp.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xce4

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "3.3.0"

    return-object v0
.end method

.method private static getWebViewBranch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChinaLocale(Ljava/lang/String;)Z
    .locals 1
    .param p0, "networkISOCode"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHN"

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    return v0
.end method

.method public static isPerPlacementLoadEnabled()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_perPlacementLoadEnabled:Z

    return v0
.end method

.method public static isReinitialized()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    return v0
.end method

.method public static isTestMode()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    return v0
.end method

.method public static setCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V
    .locals 0
    .param p0, "cacheDirectory"    # Lcom/unity3d/services/core/cache/CacheDirectory;

    .prologue
    .line 129
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    .line 130
    return-void
.end method

.method public static setConfigUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    throw v1

    .line 79
    :cond_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    throw v1

    .line 83
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "u":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 86
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "debugMode"    # Z

    .prologue
    .line 153
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    .line 155
    if-eqz p0, :cond_0

    .line 156
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->setLogLevel(I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->setLogLevel(I)V

    goto :goto_0
.end method

.method public static setInitializationTime(J)V
    .locals 0
    .param p0, "milliseconds"    # J

    .prologue
    .line 137
    sput-wide p0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTime:J

    .line 138
    return-void
.end method

.method public static setInitialized(Z)V
    .locals 0
    .param p0, "initialized"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    .line 39
    return-void
.end method

.method public static setListener(Lcom/unity3d/services/IUnityServicesListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/services/IUnityServicesListener;

    .prologue
    .line 167
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_listener:Lcom/unity3d/services/IUnityServicesListener;

    .line 168
    return-void
.end method

.method public static setPerPlacementLoadEnabled(Z)V
    .locals 0
    .param p0, "perPlacementLoad"    # Z

    .prologue
    .line 52
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_perPlacementLoadEnabled:Z

    .line 53
    return-void
.end method

.method public static setReinitialized(Z)V
    .locals 0
    .param p0, "status"    # Z

    .prologue
    .line 145
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    .line 146
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0
    .param p0, "testMode"    # Z

    .prologue
    .line 46
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    .line 47
    return-void
.end method
