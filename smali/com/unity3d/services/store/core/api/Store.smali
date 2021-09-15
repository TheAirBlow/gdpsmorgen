.class public Lcom/unity3d/services/store/core/api/Store;
.super Ljava/lang/Object;
.source "Store.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPurchaseHistory(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "operationId"    # Ljava/lang/Integer;
    .param p1, "purchaseType"    # Ljava/lang/String;
    .param p2, "maxPurchases"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 166
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/services/store/core/api/Store$3;

    invoke-direct {v1, p1, p2, p0}, Lcom/unity3d/services/store/core/api/Store$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 165
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getPurchases(Ljava/lang/Integer;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "operationId"    # Ljava/lang/Integer;
    .param p1, "purchaseType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/services/store/core/api/Store$2;

    invoke-direct {v1, p1, p0}, Lcom/unity3d/services/store/core/api/Store$2;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getSkuDetails(Ljava/lang/Integer;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "operationId"    # Ljava/lang/Integer;
    .param p1, "purchaseType"    # Ljava/lang/String;
    .param p2, "skuList"    # Lorg/json/JSONArray;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/services/store/core/api/Store$4;

    invoke-direct {v1, p2, p1, p0}, Lcom/unity3d/services/store/core/api/Store$4;-><init>(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "intentName"    # Ljava/lang/String;
    .param p1, "intentPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 23
    :try_start_0
    invoke-static {p0, p1}, Lcom/unity3d/services/store/StoreMonitor;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/unity3d/services/store/StoreError;->UNKNOWN_ERROR:Lcom/unity3d/services/store/StoreError;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isBillingSupported(Ljava/lang/Integer;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "operationId"    # Ljava/lang/Integer;
    .param p1, "purchaseType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/services/store/core/api/Store$1;

    invoke-direct {v1, p1, p0}, Lcom/unity3d/services/store/core/api/Store$1;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static startPurchaseTracking(Ljava/lang/Boolean;Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 8
    .param p0, "trackAllActivities"    # Ljava/lang/Boolean;
    .param p1, "exceptions"    # Lorg/json/JSONArray;
    .param p2, "purchaseTypes"    # Lorg/json/JSONArray;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 32
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    sget-object v4, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p3, v4, v5}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 55
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "exceptionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v3, "purchaseTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 42
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 46
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/unity3d/services/store/StoreError;->JSON_ERROR:Lcom/unity3d/services/store/StoreError;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p3, v4, v5}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4, v1, v3}, Lcom/unity3d/services/store/StoreMonitor;->startPurchaseTracking(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 54
    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p3, v4}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static stopPurchaseTracking(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->stopPurchaseTracking()V

    .line 65
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
