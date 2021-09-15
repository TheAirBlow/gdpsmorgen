.class public final Lcom/unity3d/services/purchasing/core/TransactionErrorDetailsUtilities;
.super Ljava/lang/Object;
.source "TransactionErrorDetailsUtilities.java"


# static fields
.field public static final EXCEPTION_MESSAGE:Ljava/lang/String; = "exceptionMessage"

.field public static final EXTRAS:Ljava/lang/String; = "extras"

.field public static final STORE:Ljava/lang/String; = "store"

.field public static final STORE_SPECIFIC_ERROR_CODE:Ljava/lang/String; = "storeSpecificErrorCode"

.field public static final TRANSACTION_ERROR:Ljava/lang/String; = "transactionError"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJSONObjectForTransactionErrorDetails(Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "details"    # Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;

    .prologue
    .line 17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "transactionError"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;->getTransactionError()Lcom/unity3d/services/purchasing/core/TransactionError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/services/purchasing/core/TransactionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v2, "exceptionMessage"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;->getExceptionMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v2, "store"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;->getStore()Lcom/unity3d/services/purchasing/core/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/services/purchasing/core/Store;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v2, "storeSpecificErrorCode"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;->getStoreSpecificErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v2, "extras"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/monetization/core/utilities/JSONUtilities;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Could not generate JSON for Transaction Error Details: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
