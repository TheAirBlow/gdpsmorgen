.class public Lcom/unity3d/services/monetization/placementcontent/core/NoFillPlacementContent;
.super Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
.source "NoFillPlacementContent.java"


# direct methods
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
    .line 10
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getDefaultEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "NO_FILL"

    return-object v0
.end method

.method public getState()Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;->NO_FILL:Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public sendCustomEvent(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;)V
    .locals 0
    .param p1, "customEvent"    # Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;

    .prologue
    .line 25
    return-void
.end method
