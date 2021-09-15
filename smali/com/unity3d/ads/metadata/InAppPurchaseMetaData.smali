.class public Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;
.super Lcom/unity3d/ads/metadata/MetaData;
.source "InAppPurchaseMetaData.java"


# static fields
.field public static final IAP_KEY:Ljava/lang/String; = "iap"

.field public static final KEY_CURRENCY:Ljava/lang/String; = "currency"

.field public static final KEY_PRICE:Ljava/lang/String; = "price"

.field public static final KEY_PRODUCT_ID:Ljava/lang/String; = "productId"

.field public static final KEY_RECEIPT_PURCHASE_DATA:Ljava/lang/String; = "receiptPurchaseData"

.field public static final KEY_SIGNATURE:Ljava/lang/String; = "signature"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 10

    .prologue
    .line 54
    iget-object v7, p0, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->_context:Landroid/content/Context;

    invoke-static {v7}, Lcom/unity3d/services/core/device/StorageManager;->init(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    sget-object v7, Lcom/unity3d/services/core/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    invoke-static {v7}, Lcom/unity3d/services/core/device/StorageManager;->getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v6

    .line 57
    .local v6, "storage":Lcom/unity3d/services/core/device/Storage;
    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->getData()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 58
    const-string v7, "iap.purchases"

    invoke-virtual {v6, v7}, Lcom/unity3d/services/core/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 59
    .local v4, "purchaseObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 61
    .local v5, "purchases":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 63
    :try_start_0
    move-object v0, v4

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 71
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "purchases":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 74
    .restart local v5    # "purchases":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->getData()Lorg/json/JSONObject;

    move-result-object v3

    .line 77
    .local v3, "purchase":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 85
    const-string v7, "iap.purchases"

    invoke-virtual {v6, v7, v5}, Lcom/unity3d/services/core/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v6}, Lcom/unity3d/services/core/device/Storage;->writeStorage()Z

    .line 87
    sget-object v7, Lcom/unity3d/services/core/device/StorageEvent;->SET:Lcom/unity3d/services/core/device/StorageEvent;

    const-string v8, "iap.purchases"

    invoke-virtual {v6, v8}, Lcom/unity3d/services/core/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/unity3d/services/core/device/Storage;->sendEvent(Lcom/unity3d/services/core/device/StorageEvent;Ljava/lang/Object;)V

    .line 93
    .end local v3    # "purchase":Lorg/json/JSONObject;
    .end local v4    # "purchaseObject":Ljava/lang/Object;
    .end local v5    # "purchases":Lorg/json/JSONArray;
    .end local v6    # "storage":Lcom/unity3d/services/core/device/Storage;
    :cond_2
    :goto_1
    return-void

    .line 65
    .restart local v4    # "purchaseObject":Ljava/lang/Object;
    .restart local v5    # "purchases":Lorg/json/JSONArray;
    .restart local v6    # "storage":Lcom/unity3d/services/core/device/Storage;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Invalid object type for purchases"

    invoke-static {v7}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "purchase":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 80
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "Error constructing purchase object"

    invoke-static {v7}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "purchase":Lorg/json/JSONObject;
    .end local v4    # "purchaseObject":Ljava/lang/Object;
    .end local v5    # "purchases":Lorg/json/JSONArray;
    .end local v6    # "storage":Lcom/unity3d/services/core/device/Storage;
    :cond_3
    const-string v7, "Unity Ads could not commit metadata due to storage error or the data is null"

    invoke-static {v7}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->setRaw(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 1
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "currency"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 1
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 32
    const-string v0, "price"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "productId"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public setReceiptPurchaseData(Ljava/lang/String;)V
    .locals 1
    .param p1, "receiptPurchaseData"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "receiptPurchaseData"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 1
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "signature"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/InAppPurchaseMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
