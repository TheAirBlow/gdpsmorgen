.class Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$3;
.super Ljava/lang/Object;
.source "AdsModuleConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;->initErrorState(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$3;->this$0:Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;

    iput-object p2, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lcom/unity3d/ads/properties/AdsProperties;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/IUnityAdsListener;

    .line 92
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    iget-object v3, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$3;->val$message:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    :cond_0
    return-void
.end method
