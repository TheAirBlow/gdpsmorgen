.class public Lcom/unity3d/services/purchasing/core/api/CustomPurchasing;
.super Ljava/lang/Object;
.source "CustomPurchasing.java"


# static fields
.field private static retrieveProductsListener:Lcom/unity3d/services/purchasing/core/IRetrieveProductsListener;

.field private static transactionListener:Lcom/unity3d/services/purchasing/core/ITransactionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing$1;

    invoke-direct {v0}, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing$1;-><init>()V

    sput-object v0, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing;->retrieveProductsListener:Lcom/unity3d/services/purchasing/core/IRetrieveProductsListener;

    .line 40
    new-instance v0, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing$2;

    invoke-direct {v0}, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing$2;-><init>()V

    sput-object v0, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing;->transactionListener:Lcom/unity3d/services/purchasing/core/ITransactionListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/unity3d/services/purchasing/core/IRetrieveProductsListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing;->retrieveProductsListener:Lcom/unity3d/services/purchasing/core/IRetrieveProductsListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/unity3d/services/purchasing/core/ITransactionListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing;->transactionListener:Lcom/unity3d/services/purchasing/core/ITransactionListener;

    return-object v0
.end method

.method public static available(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-static {}, Lcom/unity3d/services/purchasing/core/properties/ClientProperties;->getAdapter()Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;

    move-result-object v0

    .line 85
    .local v0, "adapter":Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;
    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 86
    return-void

    :cond_0
    move v1, v2

    .line 85
    goto :goto_0
.end method

.method static getJSONArrayFromProductList(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/services/purchasing/core/Product;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "products":Ljava/util/List;, "Ljava/util/List<Lcom/unity3d/services/purchasing/core/Product;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 60
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/purchasing/core/Product;

    .line 62
    .local v2, "product":Lcom/unity3d/services/purchasing/core/Product;
    :try_start_0
    invoke-static {v2}, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing;->getJSONObjectForProduct(Lcom/unity3d/services/purchasing/core/Product;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "Could not generate JSON for product: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "product":Lcom/unity3d/services/purchasing/core/Product;
    :cond_0
    return-object v0
.end method

.method private static getJSONObjectForProduct(Lcom/unity3d/services/purchasing/core/Product;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "product"    # Lcom/unity3d/services/purchasing/core/Product;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "productId"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/Product;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "localizedPriceString"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/Product;->getLocalizedPriceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "localizedTitle"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/Product;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "isoCurrencyCode"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/Product;->getIsoCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "localizedPrice"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/Product;->getLocalizedPrice()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 77
    const-string v1, "localizedDescription"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/Product;->getLocalizedDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "productType"

    invoke-virtual {p0}, Lcom/unity3d/services/purchasing/core/Product;->getProductType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    return-object v0
.end method

.method public static purchaseItem(Ljava/lang/String;Lorg/json/JSONObject;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "productID"    # Ljava/lang/String;
    .param p1, "extras"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-static {}, Lcom/unity3d/services/purchasing/core/properties/ClientProperties;->getAdapter()Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;

    move-result-object v0

    .line 111
    .local v0, "adapter":Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;
    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing$4;

    invoke-direct {v1, v0, p0, p1}, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing$4;-><init>(Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v1, Lcom/unity3d/services/purchasing/core/PurchasingError;->PURCHASING_ADAPTER_NULL:Lcom/unity3d/services/purchasing/core/PurchasingError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static refreshCatalog(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-static {}, Lcom/unity3d/services/purchasing/core/properties/ClientProperties;->getAdapter()Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;

    move-result-object v0

    .line 91
    .local v0, "adapter":Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;
    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    new-instance v2, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing$3;

    invoke-direct {v2, v0}, Lcom/unity3d/services/purchasing/core/api/CustomPurchasing$3;-><init>(Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;)V

    invoke-static {v2}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/unity3d/services/purchasing/core/PurchasingError;->RETRIEVE_PRODUCTS_ERROR:Lcom/unity3d/services/purchasing/core/PurchasingError;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/unity3d/services/purchasing/core/PurchasingError;->PURCHASING_ADAPTER_NULL:Lcom/unity3d/services/purchasing/core/PurchasingError;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
