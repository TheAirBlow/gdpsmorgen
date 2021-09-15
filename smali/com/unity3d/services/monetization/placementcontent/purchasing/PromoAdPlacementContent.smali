.class public Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoAdPlacementContent;
.super Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;
.source "PromoAdPlacementContent.java"


# instance fields
.field private final promoMetadata:Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;


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
    .line 11
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    invoke-static {p2}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadataUtilities;->createPromoMetadataFromParamsMap(Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoAdPlacementContent;->promoMetadata:Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;

    .line 14
    return-void
.end method


# virtual methods
.method protected getDefaultEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "PROMO"

    return-object v0
.end method

.method public getMetadata()Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoAdPlacementContent;->promoMetadata:Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;

    return-object v0
.end method
