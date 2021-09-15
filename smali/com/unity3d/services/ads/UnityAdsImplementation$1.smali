.class final Lcom/unity3d/services/ads/UnityAdsImplementation$1;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"

# interfaces
.implements Lcom/unity3d/services/IUnityServicesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/UnityAdsImplementation;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/unity3d/ads/IUnityAdsListener;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityServicesError(Lcom/unity3d/services/UnityServices$UnityServicesError;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Lcom/unity3d/services/UnityServices$UnityServicesError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lcom/unity3d/services/UnityServices$UnityServicesError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/services/UnityServices$UnityServicesError;

    if-ne p1, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    invoke-interface {v0, v1, p2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/unity3d/services/UnityServices$UnityServicesError;->INVALID_ARGUMENT:Lcom/unity3d/services/UnityServices$UnityServicesError;

    if-ne p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    invoke-interface {v0, v1, p2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0
.end method
