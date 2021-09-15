.class public Lcom/unity3d/services/store/StoreBilling;
.super Ljava/lang/Object;
.source "StoreBilling.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 21
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 26
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    const-string v5, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    .local v2, "billingServiceStub":Ljava/lang/Class;
    :try_start_1
    const-string v5, "asInterface"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 42
    .local v1, "asInterface":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    .line 49
    .end local v1    # "asInterface":Ljava/lang/reflect/Method;
    .end local v2    # "billingServiceStub":Ljava/lang/Class;
    :goto_0
    return-object v4

    .line 27
    :catch_0
    move-exception v3

    .line 28
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "Billing service stub not found"

    invoke-static {v5, v3}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 36
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "billingServiceStub":Ljava/lang/Class;
    :catch_1
    move-exception v3

    .line 37
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "asInterface method not found"

    invoke-static {v5, v3}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 43
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "asInterface":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "Illegal access exception while invoking asInterface"

    invoke-static {v5, v3}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 45
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "Invocation target exception while invoking asInterface"

    invoke-static {v5, v3}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "billingServiceObject"    # Ljava/lang/Object;
    .param p2, "purchaseType"    # Ljava/lang/String;
    .param p3, "maxPurchases"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;,
            Lcom/unity3d/services/store/core/StoreException;
        }
    .end annotation

    .prologue
    .line 118
    const-string v19, "com.android.vending.billing.IInAppBillingService"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 119
    .local v2, "billingService":Ljava/lang/Class;
    const-string v19, "getPurchaseHistory"

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-class v22, Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-class v22, Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-class v22, Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-class v22, Landroid/os/Bundle;

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 121
    .local v4, "getPurchaseHistory":Ljava/lang/reflect/Method;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v15, "resultObject":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v10, "purchaseDataArray":Lorg/json/JSONArray;
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 124
    .local v17, "signatureArray":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 126
    .local v6, "productArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 127
    .local v3, "continuationToken":Ljava/lang/String;
    const/4 v9, 0x0

    .line 130
    .local v9, "purchaseCount":I
    :cond_0
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getAppName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    aput-object p2, v19, v20

    const/16 v20, 0x3

    aput-object v3, v19, v20

    const/16 v20, 0x4

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 131
    .local v13, "result":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 133
    instance-of v0, v13, Landroid/os/Bundle;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object v14, v13

    .line 134
    check-cast v14, Landroid/os/Bundle;

    .line 136
    .local v14, "resultBundle":Landroid/os/Bundle;
    const-string v19, "RESPONSE_CODE"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 138
    .local v12, "responseCode":I
    if-nez v12, :cond_5

    .line 139
    const-string v19, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 140
    .local v11, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 141
    .local v8, "purchase":Ljava/lang/String;
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 142
    add-int/lit8 v9, v9, 0x1

    .line 143
    goto :goto_0

    .line 145
    .end local v8    # "purchase":Ljava/lang/String;
    :cond_1
    const-string v19, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 146
    .local v18, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 147
    .local v16, "signature":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 150
    .end local v16    # "signature":Ljava/lang/String;
    :cond_2
    const-string v19, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 151
    .local v7, "productList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    .local v5, "product":Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 155
    .end local v5    # "product":Ljava/lang/String;
    :cond_3
    const-string v19, "INAPP_CONTINUATION_TOKEN"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_4

    if-eqz p3, :cond_0

    move/from16 v0, p3

    if-lt v9, v0, :cond_0

    .line 164
    :cond_4
    const-string v19, "purchaseDataList"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v19, "signatureList"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v19, "purchaseItemList"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    return-object v15

    .line 157
    .end local v7    # "productList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    new-instance v19, Lcom/unity3d/services/store/core/StoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Lcom/unity3d/services/store/core/StoreException;-><init>(I)V

    throw v19

    .line 160
    .end local v12    # "responseCode":I
    .end local v14    # "resultBundle":Landroid/os/Bundle;
    :cond_6
    new-instance v19, Lcom/unity3d/services/store/core/StoreException;

    invoke-direct/range {v19 .. v19}, Lcom/unity3d/services/store/core/StoreException;-><init>()V

    throw v19
.end method

.method public static getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "billingServiceObject"    # Ljava/lang/Object;
    .param p2, "purchaseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lorg/json/JSONException;,
            Lcom/unity3d/services/store/core/StoreException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v18, "com.android.vending.billing.IInAppBillingService"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 67
    .local v2, "billingService":Ljava/lang/Class;
    const-string v18, "getPurchases"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 69
    .local v4, "getPurchases":Ljava/lang/reflect/Method;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v14, "resultObject":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 71
    .local v9, "purchaseDataArray":Lorg/json/JSONArray;
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 72
    .local v16, "signatureArray":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 73
    .local v6, "productArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 76
    .local v3, "continuationToken":Ljava/lang/String;
    :cond_0
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getAppName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    aput-object p2, v18, v19

    const/16 v19, 0x3

    aput-object v3, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 77
    .local v12, "result":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 79
    instance-of v0, v12, Landroid/os/Bundle;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object v13, v12

    .line 80
    check-cast v13, Landroid/os/Bundle;

    .line 82
    .local v13, "resultBundle":Landroid/os/Bundle;
    const-string v18, "RESPONSE_CODE"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 83
    .local v11, "responseCode":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getPurchases responds with code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 85
    if-nez v11, :cond_4

    .line 86
    const-string v18, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 87
    .local v10, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 88
    .local v8, "purchase":Ljava/lang/String;
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 91
    .end local v8    # "purchase":Ljava/lang/String;
    :cond_1
    const-string v18, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 92
    .local v17, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 93
    .local v15, "signature":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 96
    .end local v15    # "signature":Ljava/lang/String;
    :cond_2
    const-string v18, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 97
    .local v7, "productList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 98
    .local v5, "product":Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 101
    .end local v5    # "product":Ljava/lang/String;
    :cond_3
    const-string v18, "INAPP_CONTINUATION_TOKEN"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    if-nez v3, :cond_0

    .line 110
    const-string v18, "purchaseDataList"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v18, "signatureList"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v18, "purchaseItemList"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    return-object v14

    .line 103
    .end local v7    # "productList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v18, Lcom/unity3d/services/store/core/StoreException;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Lcom/unity3d/services/store/core/StoreException;-><init>(I)V

    throw v18

    .line 106
    .end local v11    # "responseCode":I
    .end local v13    # "resultBundle":Landroid/os/Bundle;
    :cond_5
    new-instance v18, Lcom/unity3d/services/store/core/StoreException;

    invoke-direct/range {v18 .. v18}, Lcom/unity3d/services/store/core/StoreException;-><init>()V

    throw v18
.end method

.method public static getSkuDetails(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "billingServiceObject"    # Ljava/lang/Object;
    .param p2, "purchaseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
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
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/unity3d/services/store/core/StoreException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 172
    .local p3, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 173
    .local v2, "billingService":Ljava/lang/Class;
    const-string v10, "getSkuDetails"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-class v13, Landroid/os/Bundle;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 175
    .local v5, "getSkuDetails":Ljava/lang/reflect/Method;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v1, "args":Landroid/os/Bundle;
    const-string v10, "ITEM_ID_LIST"

    move-object/from16 v0, p3

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 178
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getAppName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object p2, v10, v11

    const/4 v11, 0x3

    aput-object v1, v10, v11

    invoke-virtual {v5, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 180
    .local v7, "result":Ljava/lang/Object;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 182
    .local v8, "resultArray":Lorg/json/JSONArray;
    instance-of v10, v7, Landroid/os/Bundle;

    if-eqz v10, :cond_1

    move-object v9, v7

    .line 183
    check-cast v9, Landroid/os/Bundle;

    .line 185
    .local v9, "resultBundle":Landroid/os/Bundle;
    const-string v10, "RESPONSE_CODE"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 187
    .local v6, "responseCode":I
    if-nez v6, :cond_0

    .line 188
    const-string v10, "DETAILS_LIST"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 190
    .local v4, "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "detail":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 194
    .end local v3    # "detail":Ljava/lang/String;
    .end local v4    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v10, Lcom/unity3d/services/store/core/StoreException;

    invoke-direct {v10, v6}, Lcom/unity3d/services/store/core/StoreException;-><init>(I)V

    throw v10

    .line 197
    .end local v6    # "responseCode":I
    .end local v9    # "resultBundle":Landroid/os/Bundle;
    :cond_1
    new-instance v10, Lcom/unity3d/services/store/core/StoreException;

    invoke-direct {v10}, Lcom/unity3d/services/store/core/StoreException;-><init>()V

    throw v10

    .line 200
    .restart local v4    # "detailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "responseCode":I
    .restart local v9    # "resultBundle":Landroid/os/Bundle;
    :cond_2
    return-object v8
.end method

.method public static isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "billingServiceObject"    # Ljava/lang/Object;
    .param p2, "purchaseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/unity3d/services/store/core/StoreException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 53
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "billingService":Ljava/lang/Class;
    const-string v3, "isBillingSupported"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    .local v1, "isBillingSupported":Ljava/lang/reflect/Method;
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p2, v3, v9

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 59
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 62
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lcom/unity3d/services/store/core/StoreException;

    invoke-direct {v3}, Lcom/unity3d/services/store/core/StoreException;-><init>()V

    throw v3
.end method
