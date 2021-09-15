.class public final enum Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;
.super Ljava/lang/Enum;
.source "PlacementContentResultFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlacementContentResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

.field public static final enum CUSTOM:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

.field public static final enum NO_FILL:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

.field public static final enum PROMO_AD:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

.field public static final enum SHOW_AD:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    const-string v1, "SHOW_AD"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->SHOW_AD:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    .line 13
    new-instance v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    const-string v1, "PROMO_AD"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->PROMO_AD:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    .line 14
    new-instance v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->NO_FILL:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    .line 15
    new-instance v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->CUSTOM:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->SHOW_AD:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->PROMO_AD:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->NO_FILL:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->CUSTOM:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->$VALUES:[Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->CUSTOM:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    .line 24
    :goto_0
    return-object v1

    .line 22
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->valueOf(Ljava/lang/String;)Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->CUSTOM:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->$VALUES:[Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    invoke-virtual {v0}, [Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory$PlacementContentResultType;

    return-object v0
.end method
