.class public Lcom/unity3d/services/analytics/UnityAnalytics;
.super Ljava/lang/Object;
.source "UnityAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/analytics/UnityAnalytics$AnalyticsEventType;
    }
.end annotation


# static fields
.field protected static eventQueue:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/unity3d/services/analytics/UnityAnalytics;->eventQueue:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAdComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "network"    # Ljava/lang/String;
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "rewarded"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "rewarded"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v3, "network"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v3, "placement_id"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v2, "msg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "custom_params"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v3, "ts"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v3, "name"

    const-string v4, "ad_complete"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "type"

    const-string v4, "analytics.custom.v1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method private static createIapTransaction(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/Float;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "isPromo"    # Ljava/lang/Boolean;
    .param p4, "receipt"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v1, "msg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ts"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v2, "productid"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v2, "amount"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "currency"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "promo"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "receipt"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "type"

    const-string v3, "analytics.transaction.v1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v2
.end method

.method private static createItemAcquired(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/analytics/AcquisitionType;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "transactionContext"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/Float;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "balance"    # Ljava/lang/Float;
    .param p4, "itemType"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/String;
    .param p6, "transactionId"    # Ljava/lang/String;
    .param p7, "acquisitionType"    # Lcom/unity3d/services/analytics/AcquisitionType;

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "currency_type"

    invoke-virtual {p7}, Lcom/unity3d/services/analytics/AcquisitionType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v3, "transaction_context"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v3, "amount"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v3, "item_id"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v3, "balance"

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v3, "item_type"

    invoke-virtual {v0, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "level"

    invoke-virtual {v0, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v3, "transaction_id"

    invoke-virtual {v0, v3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v2, "msg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "custom_params"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v3, "ts"

    const-wide v4, 0x1651159d0b5L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "name"

    const-string v4, "item_acquired"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "type"

    const-string v4, "analytics.custom.v1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method private static createItemSpent(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/analytics/AcquisitionType;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "transactionContext"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/Float;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "balance"    # Ljava/lang/Float;
    .param p4, "itemType"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/String;
    .param p6, "transactionId"    # Ljava/lang/String;
    .param p7, "acquisitionType"    # Lcom/unity3d/services/analytics/AcquisitionType;

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "currency_type"

    invoke-virtual {p7}, Lcom/unity3d/services/analytics/AcquisitionType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v3, "transaction_context"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v3, "amount"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v3, "item_id"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v3, "balance"

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v3, "item_type"

    invoke-virtual {v0, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v3, "level"

    invoke-virtual {v0, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v3, "transaction_id"

    invoke-virtual {v0, v3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v2, "msg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "custom_params"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "ts"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "name"

    const-string v4, "item_spent"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "type"

    const-string v4, "analytics.custom.v1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method private static createLevelFail(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "levelIndex"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "level_index"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v2, "msg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "custom_params"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "ts"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "name"

    const-string v4, "level_fail"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "type"

    const-string v4, "analytics.custom.v1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method private static createLevelUp(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newLevelIndex"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "new_level_index"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v2, "msg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "custom_params"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v3, "ts"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v3, "name"

    const-string v4, "level_up"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "type"

    const-string v4, "analytics.custom.v1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method public static onAdComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "network"    # Ljava/lang/String;
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "rewarded"    # Ljava/lang/Boolean;

    .prologue
    .line 136
    invoke-static {p0, p1, p2}, Lcom/unity3d/services/analytics/UnityAnalytics;->createAdComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/unity3d/services/analytics/UnityAnalytics;->postEvent(Lorg/json/JSONObject;)V

    .line 138
    return-void
.end method

.method public static onEvent(Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "jsonEvent"    # Lorg/json/JSONObject;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/unity3d/services/analytics/UnityAnalytics;->postEvent(Lorg/json/JSONObject;)V

    .line 147
    return-void
.end method

.method public static onIapTransaction(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/Float;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "isPromo"    # Ljava/lang/Boolean;
    .param p4, "receipt"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p0, p1, p2, p3, p4}, Lcom/unity3d/services/analytics/UnityAnalytics;->createIapTransaction(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/unity3d/services/analytics/UnityAnalytics;->postEvent(Lorg/json/JSONObject;)V

    .line 143
    return-void
.end method

.method public static onItemAcquired(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/analytics/AcquisitionType;)V
    .locals 1
    .param p0, "transactionContext"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/Float;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "balance"    # Ljava/lang/Float;
    .param p4, "itemType"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/String;
    .param p6, "transactionId"    # Ljava/lang/String;
    .param p7, "acquisitionType"    # Lcom/unity3d/services/analytics/AcquisitionType;

    .prologue
    .line 116
    invoke-static/range {p0 .. p7}, Lcom/unity3d/services/analytics/UnityAnalytics;->createItemAcquired(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/analytics/AcquisitionType;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/unity3d/services/analytics/UnityAnalytics;->postEvent(Lorg/json/JSONObject;)V

    .line 118
    return-void
.end method

.method public static onItemSpent(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/analytics/AcquisitionType;)V
    .locals 1
    .param p0, "transactionContext"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/Float;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "balance"    # Ljava/lang/Float;
    .param p4, "itemType"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/String;
    .param p6, "transactionId"    # Ljava/lang/String;
    .param p7, "acquisitionType"    # Lcom/unity3d/services/analytics/AcquisitionType;

    .prologue
    .line 121
    invoke-static/range {p0 .. p7}, Lcom/unity3d/services/analytics/UnityAnalytics;->createItemSpent(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/analytics/AcquisitionType;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/unity3d/services/analytics/UnityAnalytics;->postEvent(Lorg/json/JSONObject;)V

    .line 123
    return-void
.end method

.method public static onLevelFail(Ljava/lang/String;)V
    .locals 1
    .param p0, "levelIndex"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/unity3d/services/analytics/UnityAnalytics;->createLevelFail(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/unity3d/services/analytics/UnityAnalytics;->postEvent(Lorg/json/JSONObject;)V

    .line 128
    return-void
.end method

.method public static onLevelUp(Ljava/lang/String;)V
    .locals 1
    .param p0, "newLevelIndex"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0}, Lcom/unity3d/services/analytics/UnityAnalytics;->createLevelUp(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/unity3d/services/analytics/UnityAnalytics;->postEvent(Lorg/json/JSONObject;)V

    .line 133
    return-void
.end method

.method private static declared-synchronized postEvent(Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "event"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    const-class v3, Lcom/unity3d/services/analytics/UnityAnalytics;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/unity3d/services/analytics/UnityAnalytics;->eventQueue:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v4, 0xc8

    if-ge v2, v4, :cond_0

    .line 152
    sget-object v2, Lcom/unity3d/services/analytics/UnityAnalytics;->eventQueue:Lorg/json/JSONArray;

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 154
    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    .line 155
    .local v0, "currentApp":Lcom/unity3d/services/core/webview/WebViewApp;
    if-eqz v0, :cond_1

    .line 156
    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ANALYTICS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/analytics/UnityAnalytics$AnalyticsEventType;->POSTEVENT:Lcom/unity3d/services/analytics/UnityAnalytics$AnalyticsEventType;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/unity3d/services/analytics/UnityAnalytics;->eventQueue:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 157
    .local v1, "success":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sput-object v2, Lcom/unity3d/services/analytics/UnityAnalytics;->eventQueue:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v1    # "success":Ljava/lang/Boolean;
    :cond_1
    monitor-exit v3

    return-void

    .line 150
    .end local v0    # "currentApp":Lcom/unity3d/services/core/webview/WebViewApp;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
