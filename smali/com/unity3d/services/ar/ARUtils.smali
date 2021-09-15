.class public Lcom/unity3d/services/ar/ARUtils;
.super Ljava/lang/Object;
.source "ARUtils.java"


# static fields
.field public static final AR_CHECK_NOT_SUPPORTED:I = 0x0

.field public static final AR_CHECK_SUPPORTED:I = 0x1

.field public static final AR_CHECK_TRANSIENT:I = 0x2

.field private static lightEstimationModes:[Lcom/google/ar/core/Config$LightEstimationMode;

.field private static planeFindingModes:[Lcom/google/ar/core/Config$PlaneFindingMode;

.field private static updateModes:[Lcom/google/ar/core/Config$UpdateMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConfiguration(Lorg/json/JSONObject;Lcom/google/ar/core/Session;)Lcom/google/ar/core/Config;
    .locals 13
    .param p0, "properties"    # Lorg/json/JSONObject;
    .param p1, "session"    # Lcom/google/ar/core/Session;

    .prologue
    const/4 v8, 0x0

    .line 68
    new-instance v0, Lcom/google/ar/core/Config;

    invoke-direct {v0, p1}, Lcom/google/ar/core/Config;-><init>(Lcom/google/ar/core/Session;)V

    .line 70
    .local v0, "config":Lcom/google/ar/core/Config;
    const-string v9, "lightEstimationMode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 72
    :try_start_0
    const-string v9, "lightEstimationMode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "lightEstimationMode":Ljava/lang/String;
    sget-object v10, Lcom/unity3d/services/ar/ARUtils;->lightEstimationModes:[Lcom/google/ar/core/Config$LightEstimationMode;

    array-length v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v2, v10, v9

    .line 74
    .local v2, "lem":Lcom/google/ar/core/Config$LightEstimationMode;
    invoke-virtual {v2}, Lcom/google/ar/core/Config$LightEstimationMode;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 75
    invoke-virtual {v0, v2}, Lcom/google/ar/core/Config;->setLightEstimationMode(Lcom/google/ar/core/Config$LightEstimationMode;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2    # "lem":Lcom/google/ar/core/Config$LightEstimationMode;
    .end local v3    # "lightEstimationMode":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, "planeFindingMode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 86
    :try_start_1
    const-string v9, "planeFindingMode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "planeFindingMode":Ljava/lang/String;
    sget-object v10, Lcom/unity3d/services/ar/ARUtils;->planeFindingModes:[Lcom/google/ar/core/Config$PlaneFindingMode;

    array-length v11, v10

    move v9, v8

    :goto_2
    if-ge v9, v11, :cond_1

    aget-object v4, v10, v9

    .line 88
    .local v4, "pfm":Lcom/google/ar/core/Config$PlaneFindingMode;
    invoke-virtual {v4}, Lcom/google/ar/core/Config$PlaneFindingMode;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 89
    invoke-virtual {v0, v4}, Lcom/google/ar/core/Config;->setPlaneFindingMode(Lcom/google/ar/core/Config$PlaneFindingMode;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .end local v4    # "pfm":Lcom/google/ar/core/Config$PlaneFindingMode;
    .end local v5    # "planeFindingMode":Ljava/lang/String;
    :cond_1
    :goto_3
    const-string v9, "updateMode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 100
    :try_start_2
    const-string v9, "updateMode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "updateMode":Ljava/lang/String;
    sget-object v9, Lcom/unity3d/services/ar/ARUtils;->updateModes:[Lcom/google/ar/core/Config$UpdateMode;

    array-length v10, v9

    :goto_4
    if-ge v8, v10, :cond_2

    aget-object v6, v9, v8

    .line 102
    .local v6, "um":Lcom/google/ar/core/Config$UpdateMode;
    invoke-virtual {v6}, Lcom/google/ar/core/Config$UpdateMode;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 103
    invoke-virtual {v0, v6}, Lcom/google/ar/core/Config;->setUpdateMode(Lcom/google/ar/core/Config$UpdateMode;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    .end local v6    # "um":Lcom/google/ar/core/Config$UpdateMode;
    .end local v7    # "updateMode":Ljava/lang/String;
    :cond_2
    :goto_5
    return-object v0

    .line 73
    .restart local v2    # "lem":Lcom/google/ar/core/Config$LightEstimationMode;
    .restart local v3    # "lightEstimationMode":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "lem":Lcom/google/ar/core/Config$LightEstimationMode;
    .end local v3    # "lightEstimationMode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Lorg/json/JSONException;
    const-string v9, "lightEstimationEnabled is not a string."

    invoke-static {v9}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "pfm":Lcom/google/ar/core/Config$PlaneFindingMode;
    .restart local v5    # "planeFindingMode":Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 93
    .end local v4    # "pfm":Lcom/google/ar/core/Config$PlaneFindingMode;
    .end local v5    # "planeFindingMode":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 94
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string v9, "planeFindingMode is not a string."

    invoke-static {v9}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    goto :goto_3

    .line 101
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v6    # "um":Lcom/google/ar/core/Config$UpdateMode;
    .restart local v7    # "updateMode":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 107
    .end local v6    # "um":Lcom/google/ar/core/Config$UpdateMode;
    .end local v7    # "updateMode":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 108
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string v8, "updateMode is not a string."

    invoke-static {v8}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static getConfigEnums()Lorg/json/JSONObject;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v0, "enums":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/ar/core/Config$LightEstimationMode;->values()[Lcom/google/ar/core/Config$LightEstimationMode;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v7, v6

    .line 122
    .local v1, "lem":Lcom/google/ar/core/Config$LightEstimationMode;
    invoke-virtual {v1}, Lcom/google/ar/core/Config$LightEstimationMode;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "lem":Lcom/google/ar/core/Config$LightEstimationMode;
    :cond_0
    const-string v6, "lightEstimationMode"

    new-instance v7, Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 127
    invoke-static {}, Lcom/google/ar/core/Config$PlaneFindingMode;->values()[Lcom/google/ar/core/Config$PlaneFindingMode;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v2, v7, v6

    .line 128
    .local v2, "pfm":Lcom/google/ar/core/Config$PlaneFindingMode;
    invoke-virtual {v2}, Lcom/google/ar/core/Config$PlaneFindingMode;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    .end local v2    # "pfm":Lcom/google/ar/core/Config$PlaneFindingMode;
    :cond_1
    const-string v6, "planeFindingMode"

    new-instance v7, Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 133
    invoke-static {}, Lcom/google/ar/core/Config$UpdateMode;->values()[Lcom/google/ar/core/Config$UpdateMode;

    move-result-object v6

    array-length v7, v6

    :goto_2
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 134
    .local v3, "um":Lcom/google/ar/core/Config$UpdateMode;
    invoke-virtual {v3}, Lcom/google/ar/core/Config$UpdateMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 136
    .end local v3    # "um":Lcom/google/ar/core/Config$UpdateMode;
    :cond_2
    const-string v5, "updateMode"

    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    return-object v0

    .line 137
    :catch_0
    move-exception v5

    goto :goto_3
.end method

.method public static isSupported(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-static {}, Lcom/unity3d/services/ar/ARCheck;->isFrameworkPresent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    sget-object v3, Lcom/unity3d/services/ar/ARUtils;->planeFindingModes:[Lcom/google/ar/core/Config$PlaneFindingMode;

    if-nez v3, :cond_2

    .line 35
    invoke-static {}, Lcom/google/ar/core/Config$PlaneFindingMode;->values()[Lcom/google/ar/core/Config$PlaneFindingMode;

    move-result-object v3

    sput-object v3, Lcom/unity3d/services/ar/ARUtils;->planeFindingModes:[Lcom/google/ar/core/Config$PlaneFindingMode;

    .line 36
    invoke-static {}, Lcom/google/ar/core/Config$LightEstimationMode;->values()[Lcom/google/ar/core/Config$LightEstimationMode;

    move-result-object v3

    sput-object v3, Lcom/unity3d/services/ar/ARUtils;->lightEstimationModes:[Lcom/google/ar/core/Config$LightEstimationMode;

    .line 37
    invoke-static {}, Lcom/google/ar/core/Config$UpdateMode;->values()[Lcom/google/ar/core/Config$UpdateMode;

    move-result-object v3

    sput-object v3, Lcom/unity3d/services/ar/ARUtils;->updateModes:[Lcom/google/ar/core/Config$UpdateMode;

    .line 40
    :cond_2
    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/ar/core/ArCoreApk;->checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;

    move-result-object v0

    .line 41
    .local v0, "availability":Lcom/google/ar/core/ArCoreApk$Availability;
    invoke-virtual {v0}, Lcom/google/ar/core/ArCoreApk$Availability;->isTransient()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    const/4 v2, 0x2

    goto :goto_0

    .line 50
    :cond_3
    sget-object v3, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    if-ne v0, v3, :cond_0

    .line 53
    :try_start_0
    new-instance v3, Lcom/google/ar/core/Session;

    invoke-direct {v3, p0}, Lcom/google/ar/core/Session;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/ar/core/exceptions/UnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_2
    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 54
    :catch_2
    move-exception v1

    goto :goto_2
.end method
