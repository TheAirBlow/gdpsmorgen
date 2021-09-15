.class public Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory;
.super Ljava/lang/Object;
.source "PlacementContentResultFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
    .locals 3
    .param p0, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->parse(Ljava/lang/String;)Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    move-result-object v0

    .line 32
    .local v0, "type":Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;
    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$1;->$SwitchMap$com$unity3d$services$monetization$core$placementcontent$PlacementContentResultFactory$PlacementContentResultType:[I

    invoke-virtual {v0}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 41
    new-instance v1, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-object v1

    .line 34
    :pswitch_0
    new-instance v1, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 36
    :pswitch_1
    new-instance v1, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoAdPlacementContent;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoAdPlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 38
    :pswitch_2
    new-instance v1, Lcom/unity3d/services/monetization/placementcontent/core/NoFillPlacementContent;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/monetization/placementcontent/core/NoFillPlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
