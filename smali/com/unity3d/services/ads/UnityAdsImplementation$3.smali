.class final Lcom/unity3d/services/ads/UnityAdsImplementation$3;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    iput-object p2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->val$errorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 277
    invoke-static {}, Lcom/unity3d/ads/properties/AdsProperties;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/IUnityAdsListener;

    .line 278
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    iget-object v2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    iget-object v3, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->val$placementId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->val$placementId:Ljava/lang/String;

    sget-object v3, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-interface {v0, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    goto :goto_0

    .line 282
    :cond_0
    const-string v2, ""

    sget-object v3, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-interface {v0, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    goto :goto_0

    .line 285
    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    :cond_1
    return-void
.end method