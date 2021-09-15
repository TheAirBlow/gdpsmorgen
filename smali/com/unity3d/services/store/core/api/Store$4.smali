.class final Lcom/unity3d/services/store/core/api/Store$4;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/core/api/Store;->getSkuDetails(Ljava/lang/Integer;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$operationId:Ljava/lang/Integer;

.field final synthetic val$purchaseType:Ljava/lang/String;

.field final synthetic val$skuList:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$skuList:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$purchaseType:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 179
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v3, "skuArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$skuList:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$skuList:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$purchaseType:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/unity3d/services/store/StoreMonitor;->getSkuDetails(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .line 185
    .local v2, "result":Lorg/json/JSONArray;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_RESULT:Lcom/unity3d/services/store/StoreEvent;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/unity3d/services/store/core/StoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 201
    .end local v1    # "i":I
    .end local v2    # "result":Lorg/json/JSONArray;
    .end local v3    # "skuArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v13, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    sget-object v8, Lcom/unity3d/services/store/StoreError;->JSON_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v11

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v13, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    sget-object v8, Lcom/unity3d/services/store/StoreError;->NO_SUCH_METHOD:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v13, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    sget-object v8, Lcom/unity3d/services/store/StoreError;->ILLEGAL_ACCESS:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 193
    .local v0, "e":Lcom/unity3d/services/store/core/StoreException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v14, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    sget-object v8, Lcom/unity3d/services/store/StoreError;->STORE_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v11

    invoke-virtual {v0}, Lcom/unity3d/services/store/core/StoreException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v0}, Lcom/unity3d/services/store/core/StoreException;->getResultCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    .end local v0    # "e":Lcom/unity3d/services/store/core/StoreException;
    :catch_4
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v13, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    sget-object v8, Lcom/unity3d/services/store/StoreError;->CLASS_NOT_FOUND:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 196
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v13, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    sget-object v8, Lcom/unity3d/services/store/StoreError;->INVOCATION_TARGET:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 198
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v7, v14, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/unity3d/services/store/core/api/Store$4;->val$operationId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    sget-object v8, Lcom/unity3d/services/store/StoreError;->UNKNOWN_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v8, v7, v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
