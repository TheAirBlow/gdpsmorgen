.class public Lcom/unity3d/services/core/configuration/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private _moduleConfigurationList:[Ljava/lang/String;

.field private _moduleConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/core/configuration/IModuleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private _url:Ljava/lang/String;

.field private _webAppApiClassList:[Ljava/lang/Class;

.field private _webViewData:Ljava/lang/String;

.field private _webViewHash:Ljava/lang/String;

.field private _webViewUrl:Ljava/lang/String;

.field private _webViewVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.unity3d.services.core.configuration.CoreModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.unity3d.services.ads.configuration.AdsModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.unity3d.services.monetization.core.configuration.MonetizationModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.unity3d.services.purchasing.core.configuration.PurchasingModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.unity3d.services.analytics.core.configuration.AnalyticsModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.unity3d.services.ar.configuration.ARModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.unity3d.services.banners.configuration.BannersModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.unity3d.services.store.core.configuration.StoreModuleConfiguration"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.unity3d.services.core.configuration.CoreModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.unity3d.services.ads.configuration.AdsModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.unity3d.services.monetization.core.configuration.MonetizationModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.unity3d.services.purchasing.core.configuration.PurchasingModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.unity3d.services.analytics.core.configuration.AnalyticsModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.unity3d.services.ar.configuration.ARModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.unity3d.services.banners.configuration.BannersModuleConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.unity3d.services.store.core.configuration.StoreModuleConfiguration"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private createWebAppApiClassList()V
    .locals 7

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "apiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 155
    .local v1, "moduleConfigClass":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    move-result-object v2

    .line 156
    .local v2, "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v2}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 158
    invoke-interface {v2}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "moduleConfigClass":Ljava/lang/String;
    .end local v2    # "moduleConfiguration":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    iput-object v3, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    .line 164
    return-void
.end method


# virtual methods
.method protected buildQueryString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?ts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdkVersionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "queryString":Ljava/lang/String;
    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v3, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    iget-object v2, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    .line 111
    :cond_0
    :goto_0
    return-object v2

    .line 99
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    .line 100
    .local v1, "module":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    if-eqz v1, :cond_0

    .line 101
    iget-object v3, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    .line 103
    iget-object v3, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v2, v1

    .line 106
    goto :goto_0

    .line 110
    .end local v1    # "module":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getModuleConfigurationList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/unity3d/services/core/configuration/Configuration;->createWebAppApiClassList()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWebViewData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewData:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected makeRequest()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;,
            Lcom/unity3d/services/core/request/NetworkIOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v4, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 122
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "Base URL is null"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/Configuration;->buildQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting configuration with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 128
    new-instance v2, Lcom/unity3d/services/core/request/WebRequest;

    const-string v4, "GET"

    invoke-direct {v2, v3, v4, v6}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    .local v2, "request":Lcom/unity3d/services/core/request/WebRequest;
    invoke-virtual {v2}, Lcom/unity3d/services/core/request/WebRequest;->makeRequest()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "data":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "config":Lorg/json/JSONObject;
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    .line 134
    const-string v4, "hash"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    const-string v4, "hash"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    .line 140
    :goto_0
    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    .line 146
    :goto_1
    iget-object v4, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    :cond_1
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "Invalid data. Web view URL is null or empty"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_2
    iput-object v6, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_3
    iput-object v6, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_4
    return-void
.end method

.method public setConfigUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setWebViewData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewData:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setWebViewHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setWebViewUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    .line 71
    return-void
.end method
