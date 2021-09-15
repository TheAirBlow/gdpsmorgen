.class public Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;
.super Lcom/unity3d/services/monetization/placementcontent/core/RewardablePlacementContent;
.source "ShowAdPlacementContent.java"


# static fields
.field private static listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->listenerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/monetization/placementcontent/core/RewardablePlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    return-void
.end method

.method public static sendAdFinished(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "finishState"    # Lcom/unity3d/ads/UnityAds$FinishState;

    .prologue
    .line 30
    sget-object v1, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;

    .line 31
    .local v0, "listener":Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;
    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p0, p1}, Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;->onAdFinished(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static sendAdStarted(Ljava/lang/String;)V
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v1, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;

    .line 38
    .local v0, "listener":Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;
    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p0}, Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;->onAdStarted(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public show(Landroid/app/Activity;Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;

    .prologue
    .line 21
    sget-object v0, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->listenerMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->placementId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->placementId:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->placementId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->placementId:Ljava/lang/String;

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-static {v0, v1}, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->sendAdFinished(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    goto :goto_0
.end method
