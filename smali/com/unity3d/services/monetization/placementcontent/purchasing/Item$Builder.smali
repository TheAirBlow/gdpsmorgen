.class public final Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private itemId:Ljava/lang/String;

.field private quantity:J

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->quantity:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->type:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item;-><init>(Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$1;)V

    return-object v0
.end method

.method public withItemId(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->itemId:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public withQuantity(J)Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->quantity:J

    .line 45
    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/purchasing/Item$Builder;->type:Ljava/lang/String;

    .line 50
    return-object p0
.end method
