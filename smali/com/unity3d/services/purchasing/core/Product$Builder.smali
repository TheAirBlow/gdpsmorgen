.class public final Lcom/unity3d/services/purchasing/core/Product$Builder;
.super Ljava/lang/Object;
.source "Product.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/purchasing/core/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/purchasing/core/Product$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/services/purchasing/core/Product$1;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/unity3d/services/purchasing/core/Product$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/Product$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->productId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/Product$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->localizedPriceString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/Product$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->localizedTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/Product$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->isoCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unity3d/services/purchasing/core/Product$Builder;)D
    .locals 2
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/Product$Builder;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->localizedPrice:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/Product$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->localizedDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/unity3d/services/purchasing/core/Product$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/Product$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->productType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/unity3d/services/purchasing/core/Product;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/unity3d/services/purchasing/core/Product;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/purchasing/core/Product;-><init>(Lcom/unity3d/services/purchasing/core/Product$Builder;Lcom/unity3d/services/purchasing/core/Product$1;)V

    return-object v0
.end method

.method public withIsoCurrencyCode(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->isoCurrencyCode:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public withLocalizedDescription(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->localizedDescription:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public withLocalizedPrice(D)Lcom/unity3d/services/purchasing/core/Product$Builder;
    .locals 1
    .param p1, "val"    # D

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->localizedPrice:D

    .line 88
    return-object p0
.end method

.method public withLocalizedPriceString(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->localizedPriceString:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public withLocalizedTitle(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->localizedTitle:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public withProductId(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->productId:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public withProductType(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Product$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/Product$Builder;->productType:Ljava/lang/String;

    .line 98
    return-object p0
.end method
