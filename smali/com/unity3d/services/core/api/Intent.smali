.class public Lcom/unity3d/services/core/api/Intent;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/api/Intent$IntentException;,
        Lcom/unity3d/services/core/api/Intent$IntentError;
    }
.end annotation


# static fields
.field private static _activeActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canOpenIntent(Lorg/json/JSONObject;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 8
    .param p0, "intentData"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/services/core/api/Intent;->intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v1

    .line 184
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v1}, Lcom/unity3d/services/core/api/Intent;->checkIntentResolvable(Landroid/content/Intent;)Z

    move-result v2

    .line 185
    .local v2, "resolvable":Z
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/unity3d/services/core/api/Intent$IntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvable":Z
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lcom/unity3d/services/core/api/Intent$IntentException;
    const-string v3, "Couldn\'t resolve intent"

    invoke-static {v3, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 188
    invoke-virtual {v0}, Lcom/unity3d/services/core/api/Intent$IntentException;->getError()Lcom/unity3d/services/core/api/Intent$IntentError;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unity3d/services/core/api/Intent$IntentException;->getField()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static canOpenIntents(Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 12
    .param p0, "intents"    # Lorg/json/JSONArray;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 194
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v7, "results":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 196
    .local v5, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 197
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 198
    .local v4, "intentData":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/unity3d/services/core/api/Intent;->intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v3

    .line 201
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v3}, Lcom/unity3d/services/core/api/Intent;->checkIntentResolvable(Landroid/content/Intent;)Z

    move-result v6

    .line 202
    .local v6, "resolvable":Z
    invoke-virtual {v7, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/unity3d/services/core/api/Intent$IntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "resolvable":Z
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lcom/unity3d/services/core/api/Intent$IntentException;
    const-string v8, "Exception parsing intent"

    invoke-static {v8, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    invoke-virtual {v0}, Lcom/unity3d/services/core/api/Intent$IntentException;->getError()Lcom/unity3d/services/core/api/Intent$IntentError;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unity3d/services/core/api/Intent$IntentException;->getField()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p1, v8, v9}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 213
    .end local v0    # "e":Lcom/unity3d/services/core/api/Intent$IntentException;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "intentData":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 207
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v4    # "intentData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/unity3d/services/core/api/Intent$IntentError;->JSON_EXCEPTION:Lcom/unity3d/services/core/api/Intent$IntentError;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p1, v8, v9}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 212
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "intentData":Lorg/json/JSONObject;
    :cond_0
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v7, v8, v11

    invoke-virtual {p1, v8}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static checkIntentResolvable(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 217
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static getStartingActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "act":Landroid/app/Activity;
    sget-object v1, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    sget-object v1, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "act":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 162
    .restart local v0    # "act":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method private static intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 12
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/services/core/api/Intent$IntentException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 223
    const-string v10, "className"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, "className":Ljava/lang/String;
    const-string v10, "packageName"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 225
    .local v7, "packageName":Ljava/lang/String;
    const-string v10, "action"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    .local v0, "action":Ljava/lang/String;
    const-string v10, "uri"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 227
    .local v9, "uri":Ljava/lang/String;
    const-string v10, "mimeType"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 228
    .local v6, "mimeType":Ljava/lang/String;
    const-string v10, "categories"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 229
    .local v1, "categories":Lorg/json/JSONArray;
    const-string v10, "flags"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 230
    .local v4, "flags":Ljava/lang/Integer;
    const-string v10, "extras"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 232
    .local v3, "extras":Lorg/json/JSONArray;
    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 233
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 234
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 236
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_0

    .line 237
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-object v5

    .line 241
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 243
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 244
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    :cond_2
    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :cond_3
    if-eqz v9, :cond_4

    .line 250
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    :cond_4
    if-eqz v6, :cond_5

    .line 253
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_6

    .line 256
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    :cond_6
    invoke-static {v5, v1}, Lcom/unity3d/services/core/api/Intent;->setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 259
    new-instance v10, Lcom/unity3d/services/core/api/Intent$IntentException;

    sget-object v11, Lcom/unity3d/services/core/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/services/core/api/Intent$IntentError;

    invoke-direct {v10, v11, v1}, Lcom/unity3d/services/core/api/Intent$IntentException;-><init>(Lcom/unity3d/services/core/api/Intent$IntentError;Ljava/lang/Object;)V

    throw v10

    .line 261
    :cond_7
    invoke-static {v5, v3}, Lcom/unity3d/services/core/api/Intent;->setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 262
    new-instance v10, Lcom/unity3d/services/core/api/Intent$IntentException;

    sget-object v11, Lcom/unity3d/services/core/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/services/core/api/Intent$IntentError;

    invoke-direct {v10, v11, v3}, Lcom/unity3d/services/core/api/Intent$IntentException;-><init>(Lcom/unity3d/services/core/api/Intent$IntentError;Ljava/lang/Object;)V

    throw v10
.end method

.method public static launch(Lorg/json/JSONObject;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 14
    .param p0, "intentData"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 33
    const-string v10, "className"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    .local v2, "className":Ljava/lang/String;
    const-string v10, "packageName"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 35
    .local v7, "packageName":Ljava/lang/String;
    const-string v10, "action"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string v10, "uri"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 37
    .local v9, "uri":Ljava/lang/String;
    const-string v10, "mimeType"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 38
    .local v6, "mimeType":Ljava/lang/String;
    const-string v10, "categories"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 39
    .local v1, "categories":Lorg/json/JSONArray;
    const-string v10, "flags"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 40
    .local v4, "flags":Ljava/lang/Integer;
    const-string v10, "extras"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 42
    .local v3, "extras":Lorg/json/JSONArray;
    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 43
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 44
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 46
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_0

    .line 47
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-eqz v5, :cond_a

    .line 78
    invoke-static {}, Lcom/unity3d/services/core/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 79
    invoke-static {}, Lcom/unity3d/services/core/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 89
    :goto_1
    return-void

    .line 51
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 53
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 54
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_2
    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_3
    if-eqz v9, :cond_7

    if-eqz v6, :cond_7

    .line 60
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_5

    .line 68
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    :cond_5
    invoke-static {v5, v1}, Lcom/unity3d/services/core/api/Intent;->setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 71
    sget-object v10, Lcom/unity3d/services/core/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/services/core/api/Intent$IntentError;

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v1, v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 73
    :cond_6
    invoke-static {v5, v3}, Lcom/unity3d/services/core/api/Intent;->setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 74
    sget-object v10, Lcom/unity3d/services/core/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/services/core/api/Intent$IntentError;

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v3, v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_7
    if-eqz v9, :cond_8

    .line 62
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 63
    :cond_8
    if-eqz v6, :cond_4

    .line 64
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 83
    :cond_9
    sget-object v10, Lcom/unity3d/services/core/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/services/core/api/Intent$IntentError;

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_a
    sget-object v10, Lcom/unity3d/services/core/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/services/core/api/Intent$IntentError;

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static removeActiveActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    sget-object v0, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    .line 178
    :cond_0
    return-void
.end method

.method public static setActiveActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method private static setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "categories"    # Lorg/json/JSONArray;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t parse categories for intent"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 98
    const/4 v2, 0x0

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 132
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 135
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 136
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 138
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 139
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_0

    .line 141
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 142
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 145
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse launch intent extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extras"    # Lorg/json/JSONArray;

    .prologue
    const/4 v5, 0x0

    .line 107
    if-eqz p1, :cond_1

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 114
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 115
    .local v2, "item":Lorg/json/JSONObject;
    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "key":Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 123
    .local v4, "value":Ljava/lang/Object;
    invoke-static {p0, v3, v4}, Lcom/unity3d/services/core/api/Intent;->setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    return v5

    .line 118
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Couldn\'t parse extras"

    invoke-static {v6, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "item":Lorg/json/JSONObject;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method
