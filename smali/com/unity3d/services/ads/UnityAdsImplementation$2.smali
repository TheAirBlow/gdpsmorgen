.class final Lcom/unity3d/services/ads/UnityAdsImplementation$2;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 227
    iget-object v6, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$activity:Landroid/app/Activity;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 228
    .local v0, "defaultDisplay":Landroid/view/Display;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v5, "options":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "requestedOrientation"

    iget-object v7, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .local v1, "display":Lorg/json/JSONObject;
    const-string v6, "rotation"

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-lt v6, v7, :cond_1

    .line 235
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 236
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 237
    const-string v6, "width"

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    const-string v6, "height"

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    .end local v2    # "displaySize":Landroid/graphics/Point;
    :goto_0
    const-string v6, "display"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v1    # "display":Lorg/json/JSONObject;
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/unity3d/services/ads/adunit/AdUnitOpen;->open(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 250
    iget-object v6, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    sget-object v7, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v8, "Webapp timeout, shutting down Unity Ads"

    invoke-static {v6, v7, v8}, Lcom/unity3d/services/ads/UnityAdsImplementation;->access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :cond_0
    :goto_2
    return-void

    .line 240
    .restart local v1    # "display":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v6, "width"

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v6, "height"

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 244
    .end local v1    # "display":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 245
    .local v3, "e":Lorg/json/JSONException;
    const-string v6, "JSON error while constructing show options"

    invoke-static {v6, v3}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 253
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    .line 254
    .local v4, "exception":Ljava/lang/NoSuchMethodException;
    const-string v6, "Could not get callback method"

    invoke-static {v6, v4}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 255
    iget-object v6, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    sget-object v7, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v8, "Could not get com.unity3d.ads.properties.showCallback method"

    invoke-static {v6, v7, v8}, Lcom/unity3d/services/ads/UnityAdsImplementation;->access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_2
.end method
