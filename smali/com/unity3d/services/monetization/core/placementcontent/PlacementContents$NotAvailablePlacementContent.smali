.class final Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents$NotAvailablePlacementContent;
.super Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
.source "PlacementContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotAvailablePlacementContent"
.end annotation


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
    .line 58
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected getDefaultEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "NOT_AVAILABLE"

    return-object v0
.end method

.method public getState()Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;->NOT_AVAILABLE:Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public sendCustomEvent(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;)V
    .locals 0
    .param p1, "customEvent"    # Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;

    .prologue
    .line 73
    return-void
.end method
