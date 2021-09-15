.class public Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadataUtilities;
.super Ljava/lang/Object;
.source "PromoMetadataUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createItemFromMap(Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;->newBuilder()Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;

    move-result-object v0

    .line 51
    .local v0, "itemBuilder":Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;
    const-string v1, "itemId"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "itemId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->withItemId(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;

    .line 54
    :cond_0
    const-string v1, "quantity"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "quantity"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->withQuantity(J)Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;

    .line 57
    :cond_1
    const-string v1, "type"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->withType(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;

    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->build()Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;

    move-result-object v1

    return-object v1
.end method

.method private static createProductFromMap(Ljava/util/Map;)Lcom/unity3d/services/purchasing/core/Product;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/services/purchasing/core/Product;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "productParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/unity3d/services/purchasing/core/Product;->newBuilder()Lcom/unity3d/services/purchasing/core/Product$Builder;

    move-result-object v0

    .line 65
    .local v0, "productBuilder":Lcom/unity3d/services/purchasing/core/Product$Builder;
    const-string v1, "productId"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "productId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->withProductId(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;

    .line 68
    :cond_0
    const-string v1, "isoCurrencyCode"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "isoCurrencyCode"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->withIsoCurrencyCode(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;

    .line 71
    :cond_1
    const-string v1, "localizedPriceString"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const-string v1, "localizedPriceString"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->withLocalizedPriceString(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;

    .line 74
    :cond_2
    const-string v1, "localizedDescription"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    const-string v1, "localizedDescription"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->withLocalizedDescription(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;

    .line 77
    :cond_3
    const-string v1, "localizedTitle"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    const-string v1, "localizedTitle"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->withLocalizedTitle(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;

    .line 80
    :cond_4
    const-string v1, "localizedPrice"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    new-instance v1, Ljava/lang/Double;

    const-string v2, "localizedPrice"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/services/purchasing/core/Product$Builder;->withLocalizedPrice(D)Lcom/unity3d/services/purchasing/core/Product$Builder;

    .line 83
    :cond_5
    const-string v1, "productType"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    const-string v1, "productType"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->withProductType(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;

    .line 87
    :cond_6
    invoke-virtual {v0}, Lcom/unity3d/services/purchasing/core/Product$Builder;->build()Lcom/unity3d/services/purchasing/core/Product;

    move-result-object v1

    return-object v1
.end method

.method public static createPromoMetadataFromParamsMap(Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;->newBuilder()Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    move-result-object v0

    .line 13
    .local v0, "builder":Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;
    const-string v7, "impressionDate"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 14
    const-string v7, "impressionDate"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 15
    .local v2, "impression":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->withImpressionDate(Ljava/util/Date;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .line 17
    .end local v2    # "impression":J
    :cond_0
    const-string v7, "offerDuration"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 18
    const-string v7, "offerDuration"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->withOfferDuration(J)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .line 20
    :cond_1
    const-string v7, "costs"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 21
    const-string v7, "costs"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 22
    .local v4, "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v4}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadataUtilities;->getItemListFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 23
    .local v1, "costs":Ljava/util/List;, "Ljava/util/List<Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;>;"
    invoke-virtual {v0, v1}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->withCosts(Ljava/util/List;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .line 25
    .end local v1    # "costs":Ljava/util/List;, "Ljava/util/List<Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;>;"
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    const-string v7, "payouts"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 26
    const-string v7, "payouts"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 27
    .restart local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v4}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadataUtilities;->getItemListFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 28
    .local v5, "payouts":Ljava/util/List;, "Ljava/util/List<Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;>;"
    invoke-virtual {v0, v5}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->withPayouts(Ljava/util/List;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .line 30
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "payouts":Ljava/util/List;, "Ljava/util/List<Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;>;"
    :cond_3
    const-string v7, "product"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 31
    const-string v7, "product"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 32
    .local v6, "productParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v6}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadataUtilities;->createProductFromMap(Ljava/util/Map;)Lcom/unity3d/services/purchasing/core/Product;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->withPremiumProduct(Lcom/unity3d/services/purchasing/core/Product;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .line 34
    .end local v6    # "productParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const-string v7, "userInfo"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 35
    const-string v7, "userInfo"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v0, v7}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->withCustomInfo(Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .line 37
    :cond_5
    invoke-virtual {v0}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->build()Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;

    move-result-object v7

    return-object v7
.end method

.method private static getItemListFromList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 43
    .local v1, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadataUtilities;->createItemFromMap(Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;

    move-result-object v0

    .line 44
    .local v0, "item":Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v0    # "item":Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;
    .end local v1    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v2
.end method
