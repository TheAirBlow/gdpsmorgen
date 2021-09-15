.class public Lcom/unity3d/services/store/StoreMonitor;
.super Ljava/lang/Object;
.source "StoreMonitor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static _billingService:Ljava/lang/Object;

.field private static _lifecycleListener:Lcom/unity3d/services/store/StoreLifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_billingService:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    sput-object p0, Lcom/unity3d/services/store/StoreMonitor;->_billingService:Ljava/lang/Object;

    return-object p0
.end method

.method public static getPurchaseHistory(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2
    .param p0, "purchaseType"    # Ljava/lang/String;
    .param p1, "maxPurchases"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Lcom/unity3d/services/store/core/StoreException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_billingService:Ljava/lang/Object;

    invoke-static {v0, v1, p0, p1}, Lcom/unity3d/services/store/StoreBilling;->getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getPurchases(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "purchaseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/unity3d/services/store/core/StoreException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_billingService:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/unity3d/services/store/StoreBilling;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getSkuDetails(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "purchaseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Lcom/unity3d/services/store/core/StoreException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_billingService:Ljava/lang/Object;

    invoke-static {v0, v1, p0, p1}, Lcom/unity3d/services/store/StoreBilling;->getSkuDetails(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "intentName"    # Ljava/lang/String;
    .param p1, "intentPackage"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    new-instance v1, Lcom/unity3d/services/store/StoreMonitor$1;

    invoke-direct {v1}, Lcom/unity3d/services/store/StoreMonitor$1;-><init>()V

    .line 50
    .local v1, "serviceConnection":Landroid/content/ServiceConnection;
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 51
    return-void
.end method

.method public static isBillingSupported(Ljava/lang/String;)I
    .locals 2
    .param p0, "purchaseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/unity3d/services/store/core/StoreException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_billingService:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/unity3d/services/store/StoreBilling;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_billingService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendPurchaseStatusOnResume(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "purchaseTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 90
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    const-string v8, "StoreMonitor not initialized"

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 122
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v2, "results":Lorg/json/JSONObject;
    const-string v4, "inapp"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const-string v4, "inapp"

    invoke-static {v4}, Lcom/unity3d/services/store/StoreMonitor;->getPurchases(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    .local v1, "inAppStatus":Lorg/json/JSONObject;
    const-string v4, "inapp"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .end local v1    # "inAppStatus":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "subs"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    const-string v4, "subs"

    invoke-static {v4}, Lcom/unity3d/services/store/StoreMonitor;->getPurchases(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 105
    .local v3, "subsStatus":Lorg/json/JSONObject;
    const-string v4, "subs"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .end local v3    # "subsStatus":Lorg/json/JSONObject;
    :cond_2
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME:Lcom/unity3d/services/store/StoreEvent;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/unity3d/services/store/core/StoreException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 109
    .end local v2    # "results":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->CLASS_NOT_FOUND:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->NO_SUCH_METHOD:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->INVOCATION_TARGET:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->JSON_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->ILLEGAL_ACCESS:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 120
    .local v0, "e":Lcom/unity3d/services/store/core/StoreException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->STORE_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Lcom/unity3d/services/store/core/StoreException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v0}, Lcom/unity3d/services/store/core/StoreException;->getResultCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static sendPurchaseStatusOnStop(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "purchaseTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 125
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    const-string v8, "StoreMonitor not initialized"

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 157
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v2, "results":Lorg/json/JSONObject;
    const-string v4, "inapp"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    const-string v4, "inapp"

    invoke-static {v4}, Lcom/unity3d/services/store/StoreMonitor;->getPurchases(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 135
    .local v1, "inAppStatus":Lorg/json/JSONObject;
    const-string v4, "inapp"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    .end local v1    # "inAppStatus":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "subs"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    const-string v4, "subs"

    invoke-static {v4}, Lcom/unity3d/services/store/StoreMonitor;->getPurchases(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 140
    .local v3, "subsStatus":Lorg/json/JSONObject;
    const-string v4, "subs"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    .end local v3    # "subsStatus":Lorg/json/JSONObject;
    :cond_2
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP:Lcom/unity3d/services/store/StoreEvent;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/unity3d/services/store/core/StoreException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 144
    .end local v2    # "results":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->CLASS_NOT_FOUND:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->NO_SUCH_METHOD:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->INVOCATION_TARGET:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->JSON_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 152
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->ILLEGAL_ACCESS:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 155
    .local v0, "e":Lcom/unity3d/services/store/core/StoreException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/store/StoreError;->STORE_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v9

    aput-object p0, v7, v10

    invoke-virtual {v0}, Lcom/unity3d/services/store/core/StoreException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v0}, Lcom/unity3d/services/store/core/StoreException;->getResultCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static startPurchaseTracking(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "trackAllActivities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "purchaseTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/StoreLifecycleListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/unity3d/services/store/StoreMonitor;->stopPurchaseTracking()V

    .line 78
    :cond_0
    new-instance v0, Lcom/unity3d/services/store/StoreLifecycleListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/services/store/StoreLifecycleListener;-><init>(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    sput-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/StoreLifecycleListener;

    .line 79
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/StoreLifecycleListener;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 80
    return-void
.end method

.method public static stopPurchaseTracking()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/StoreLifecycleListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/StoreLifecycleListener;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/store/StoreMonitor;->_lifecycleListener:Lcom/unity3d/services/store/StoreLifecycleListener;

    .line 87
    :cond_0
    return-void
.end method
