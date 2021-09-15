.class public final Lcom/unity3d/services/purchasing/core/TransactionDetailsUtilities;
.super Ljava/lang/Object;
.source "TransactionDetailsUtilities.java"


# static fields
.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final EXTRAS:Ljava/lang/String; = "extras"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final PRODUCT_ID:Ljava/lang/String; = "productId"

.field public static final RECEIPT:Ljava/lang/String; = "receipt"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transactionId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventDataForTransactionDetails(Lcom/unity3d/services/purchasing/core/TransactionDetails;)Ljava/util/Map;
    .locals 3
    .param p0, "details"    # Lcom/unity3d/services/purchasing/core/TransactionDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/purchasing/core/TransactionDetails;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "transactionId"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "productId"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "price"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "currency"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "receipt"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getReceipt()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "extras"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object v0
.end method

.method public static getJSONObjectForTransactionDetails(Lcom/unity3d/services/purchasing/core/TransactionDetails;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "details"    # Lcom/unity3d/services/purchasing/core/TransactionDetails;

    .prologue
    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "transactionId"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v2, "productId"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v2, "price"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getPrice()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v2, "currency"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v2, "receipt"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getReceipt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v2, "extras"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionDetails;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/monetization/core/utilities/JSONUtilities;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Could not generate JSON for transaction details: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
