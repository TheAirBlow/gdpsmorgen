.class public Lcom/unity3d/services/core/api/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v0

    .line 136
    .local v0, "s":Lcom/unity3d/services/core/device/Storage;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/unity3d/services/core/device/Storage;->clearStorage()Z

    move-result v1

    .line 138
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 139
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {p1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 148
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 142
    .restart local v1    # "success":Z
    :cond_0
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_CLEAR_STORAGE:Lcom/unity3d/services/core/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/services/core/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 152
    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v0

    .line 154
    .local v0, "s":Lcom/unity3d/services/core/device/Storage;
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/device/Storage;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 156
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 157
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {p2, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 166
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 160
    .restart local v1    # "success":Z
    :cond_0
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_DELETE_VALUE:Lcom/unity3d/services/core/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/services/core/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v1

    .line 69
    .local v1, "s":Lcom/unity3d/services/core/device/Storage;
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1, p1}, Lcom/unity3d/services/core/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 73
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_GET_VALUE:Lcom/unity3d/services/core/device/StorageError;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 82
    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 76
    .restart local v0    # "retObj":Ljava/lang/Object;
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p2, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    .end local v0    # "retObj":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/services/core/device/StorageError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {p2, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "recursive"    # Ljava/lang/Boolean;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v1

    .line 88
    .local v1, "s":Lcom/unity3d/services/core/device/Storage;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/unity3d/services/core/device/Storage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 91
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v4

    invoke-virtual {p3, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 99
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 93
    .restart local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    aput-object v3, v2, v4

    invoke-virtual {p3, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/services/core/device/StorageError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getStorage(Ljava/lang/String;)Lcom/unity3d/services/core/device/Storage;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p0}, Lcom/unity3d/services/core/device/StorageManager$StorageType;->valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/device/StorageManager$StorageType;

    move-result-object v0

    .line 171
    .local v0, "storageType":Lcom/unity3d/services/core/device/StorageManager$StorageType;
    invoke-static {v0}, Lcom/unity3d/services/core/device/StorageManager;->getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v1

    return-object v1
.end method

.method public static read(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v0

    .line 105
    .local v0, "s":Lcom/unity3d/services/core/device/Storage;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/unity3d/services/core/device/Storage;->readStorage()Z

    .line 107
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {p1, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v1, Lcom/unity3d/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/services/core/device/StorageError;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V

    .line 22
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V

    .line 32
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V

    .line 17
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V

    .line 27
    return-void
.end method

.method private static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v0

    .line 52
    .local v0, "s":Lcom/unity3d/services/core/device/Storage;
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/unity3d/services/core/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 54
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 55
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p3, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 63
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 57
    .restart local v1    # "success":Z
    :cond_0
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_SET_VALUE:Lcom/unity3d/services/core/device/StorageError;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/services/core/device/StorageError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {p3, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V

    .line 37
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V

    .line 47
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V

    .line 42
    return-void
.end method

.method public static write(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/services/core/device/Storage;

    move-result-object v0

    .line 118
    .local v0, "s":Lcom/unity3d/services/core/device/Storage;
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/unity3d/services/core/device/Storage;->writeStorage()Z

    move-result v1

    .line 120
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 121
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {p1, v2}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 130
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 124
    .restart local v1    # "success":Z
    :cond_0
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_WRITE_STORAGE_TO_CACHE:Lcom/unity3d/services/core/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    .end local v1    # "success":Z
    :cond_1
    sget-object v2, Lcom/unity3d/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/services/core/device/StorageError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
