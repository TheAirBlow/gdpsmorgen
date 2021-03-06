.class public final Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;
.super Ljava/lang/Object;
.source "PromoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private costs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;",
            ">;"
        }
    .end annotation
.end field

.field private customInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private impressionDate:Ljava/util/Date;

.field private offerDuration:J

.field private payouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;",
            ">;"
        }
    .end annotation
.end field

.field private premiumProduct:Lcom/unity3d/services/purchasing/core/Product;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$1;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->impressionDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->offerDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;)Lcom/unity3d/services/purchasing/core/Product;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->premiumProduct:Lcom/unity3d/services/purchasing/core/Product;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->costs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->payouts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->customInfo:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata;-><init>(Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$1;)V

    return-object v0
.end method

.method public withCosts(Ljava/util/List;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;",
            ">;)",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "costs":Ljava/util/List;, "Ljava/util/List<Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;>;"
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->costs:Ljava/util/List;

    .line 103
    return-object p0
.end method

.method public withCustomInfo(Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->customInfo:Ljava/util/Map;

    .line 113
    return-object p0
.end method

.method public withImpressionDate(Ljava/util/Date;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;
    .locals 0
    .param p1, "impressionDate"    # Ljava/util/Date;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->impressionDate:Ljava/util/Date;

    .line 88
    return-object p0
.end method

.method public withOfferDuration(J)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->offerDuration:J

    .line 93
    return-object p0
.end method

.method public withPayouts(Ljava/util/List;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;",
            ">;)",
            "Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "payouts":Ljava/util/List;, "Ljava/util/List<Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;>;"
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->payouts:Ljava/util/List;

    .line 108
    return-object p0
.end method

.method public withPremiumProduct(Lcom/unity3d/services/purchasing/core/Product;)Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;
    .locals 0
    .param p1, "product"    # Lcom/unity3d/services/purchasing/core/Product;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/PromoMetadata$Builder;->premiumProduct:Lcom/unity3d/services/purchasing/core/Product;

    .line 98
    return-object p0
.end method
