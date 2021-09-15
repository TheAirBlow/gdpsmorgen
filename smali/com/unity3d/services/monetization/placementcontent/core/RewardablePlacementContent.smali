.class public Lcom/unity3d/services/monetization/placementcontent/core/RewardablePlacementContent;
.super Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
.source "RewardablePlacementContent.java"


# instance fields
.field private isRewarded:Z

.field private rewardId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 10
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    const-string v0, "rewarded"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    const-string v0, "rewarded"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/RewardablePlacementContent;->isRewarded:Z

    .line 15
    :cond_0
    const-string v0, "rewardId"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    const-string v0, "rewardId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/RewardablePlacementContent;->rewardId:Ljava/lang/String;

    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public getRewardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/RewardablePlacementContent;->rewardId:Ljava/lang/String;

    return-object v0
.end method

.method public isRewarded()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/RewardablePlacementContent;->isRewarded:Z

    return v0
.end method
