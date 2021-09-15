.class public Lcom/unity3d/services/purchasing/core/Product;
.super Ljava/lang/Object;
.source "Product.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/purchasing/core/Product$Builder;
    }
.end annotation


# instance fields
.field private isoCurrencyCode:Ljava/lang/String;

.field private localizedDescription:Ljava/lang/String;

.field private localizedPrice:D

.field private localizedPriceString:Ljava/lang/String;

.field private localizedTitle:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/unity3d/services/purchasing/core/Product$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/unity3d/services/purchasing/core/Product$Builder;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->access$000(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->productId:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->access$100(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->localizedPriceString:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->access$200(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->localizedTitle:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->access$300(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->isoCurrencyCode:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->access$400(Lcom/unity3d/services/purchasing/core/Product$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/purchasing/core/Product;->localizedPrice:D

    .line 18
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->access$500(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->localizedDescription:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/Product$Builder;->access$600(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->productType:Ljava/lang/String;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/purchasing/core/Product$Builder;Lcom/unity3d/services/purchasing/core/Product$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/services/purchasing/core/Product$Builder;
    .param p2, "x1"    # Lcom/unity3d/services/purchasing/core/Product$1;

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/unity3d/services/purchasing/core/Product;-><init>(Lcom/unity3d/services/purchasing/core/Product$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/unity3d/services/purchasing/core/Product$Builder;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/unity3d/services/purchasing/core/Product$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/services/purchasing/core/Product$Builder;-><init>(Lcom/unity3d/services/purchasing/core/Product$1;)V

    return-object v0
.end method


# virtual methods
.method public getIsoCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->isoCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->localizedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedPrice()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/unity3d/services/purchasing/core/Product;->localizedPrice:D

    return-wide v0
.end method

.method public getLocalizedPriceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->localizedPriceString:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->localizedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product;->productType:Ljava/lang/String;

    return-object v0
.end method
