.class final Lcom/unity3d/services/store/core/api/Store$3;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/core/api/Store;->getPurchaseHistory(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$maxPurchases:Ljava/lang/Integer;

.field final synthetic val$operationId:Ljava/lang/Integer;

.field final synthetic val$purchaseType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$purchaseType:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$maxPurchases:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$purchaseType:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$maxPurchases:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/unity3d/services/store/StoreMonitor;->getPurchaseHistory(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 146
    .local v1, "result":Lorg/json/JSONObject;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_RESULT:Lcom/unity3d/services/store/StoreEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/unity3d/services/store/core/StoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 162
    .end local v1    # "result":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    aput-object v6, v5, v8

    sget-object v6, Lcom/unity3d/services/store/StoreError;->NO_SUCH_METHOD:Lcom/unity3d/services/store/StoreError;

    aput-object v6, v5, v9

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Lcom/unity3d/services/store/core/StoreException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v5, v12, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    aput-object v6, v5, v8

    sget-object v6, Lcom/unity3d/services/store/StoreError;->STORE_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v6, v5, v9

    invoke-virtual {v0}, Lcom/unity3d/services/store/core/StoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0}, Lcom/unity3d/services/store/core/StoreException;->getResultCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v0    # "e":Lcom/unity3d/services/store/core/StoreException;
    :catch_2
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    aput-object v6, v5, v8

    sget-object v6, Lcom/unity3d/services/store/StoreError;->ILLEGAL_ACCESS:Lcom/unity3d/services/store/StoreError;

    aput-object v6, v5, v9

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 154
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    aput-object v6, v5, v8

    sget-object v6, Lcom/unity3d/services/store/StoreError;->JSON_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v6, v5, v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    aput-object v6, v5, v8

    sget-object v6, Lcom/unity3d/services/store/StoreError;->INVOCATION_TARGET:Lcom/unity3d/services/store/StoreError;

    aput-object v6, v5, v9

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    aput-object v6, v5, v8

    sget-object v6, Lcom/unity3d/services/store/StoreError;->CLASS_NOT_FOUND:Lcom/unity3d/services/store/StoreError;

    aput-object v6, v5, v9

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    new-array v5, v12, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/services/store/core/api/Store$3;->val$operationId:Ljava/lang/Integer;

    aput-object v6, v5, v8

    sget-object v6, Lcom/unity3d/services/store/StoreError;->UNKNOWN_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v6, v5, v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
