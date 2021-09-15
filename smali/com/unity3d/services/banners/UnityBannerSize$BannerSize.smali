.class final enum Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
.super Ljava/lang/Enum;
.source "UnityBannerSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/banners/UnityBannerSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BannerSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

.field public static final enum BANNER_SIZE_DYNAMIC:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

.field public static final enum BANNER_SIZE_IAB_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

.field public static final enum BANNER_SIZE_LEADERBOARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

.field public static final enum BANNER_SIZE_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

.field private static final IAB_STANDARD_HEIGHT:I = 0x3c

.field private static final IAB_STANDARD_WIDTH:I = 0x1d4

.field private static final LEADERBOARD_HEIGHT:I = 0x5a

.field private static final LEADERBOARD_WIDTH:I = 0x2d8

.field private static final STANDARD_HEIGHT:I = 0x32

.field private static final STANDARD_WIDTH:I = 0x140


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    const-string v1, "BANNER_SIZE_STANDARD"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    .line 32
    new-instance v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    const-string v1, "BANNER_SIZE_LEADERBOARD"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_LEADERBOARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    .line 33
    new-instance v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    const-string v1, "BANNER_SIZE_IAB_STANDARD"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_IAB_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    .line 34
    new-instance v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    const-string v1, "BANNER_SIZE_DYNAMIC"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_DYNAMIC:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_LEADERBOARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_IAB_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_DYNAMIC:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->$VALUES:[Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->getWidth(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->getHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getHeight(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x32

    .line 76
    invoke-direct {p0, p1}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->getNonDynamicSize(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    move-result-object v0

    .line 77
    .local v0, "bannerSize":Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    sget-object v2, Lcom/unity3d/services/banners/UnityBannerSize$1;->$SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize:[I

    invoke-virtual {v0}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    return v1

    .line 81
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 83
    :pswitch_2
    const/16 v1, 0x3c

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getNonDynamicSize(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_DYNAMIC:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    if-ne p0, v1, :cond_0

    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/unity3d/services/core/misc/ViewUtilities;->dpFromPx(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 47
    .local v0, "screenWidth":I
    const/16 v1, 0x2d8

    if-lt v0, v1, :cond_1

    .line 48
    sget-object p0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_LEADERBOARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    .line 55
    .end local v0    # "screenWidth":I
    .end local p0    # "this":Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    :cond_0
    :goto_0
    return-object p0

    .line 49
    .restart local v0    # "screenWidth":I
    .restart local p0    # "this":Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    :cond_1
    const/16 v1, 0x1d4

    if-lt v0, v1, :cond_2

    .line 50
    sget-object p0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_IAB_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    goto :goto_0

    .line 52
    :cond_2
    sget-object p0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    goto :goto_0
.end method

.method private getWidth(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x140

    .line 61
    invoke-direct {p0, p1}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->getNonDynamicSize(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    move-result-object v0

    .line 62
    .local v0, "bannerSize":Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    sget-object v2, Lcom/unity3d/services/banners/UnityBannerSize$1;->$SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize:[I

    invoke-virtual {v0}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_0
    :pswitch_0
    return v1

    .line 66
    :pswitch_1
    const/16 v1, 0x2d8

    goto :goto_0

    .line 68
    :pswitch_2
    const/16 v1, 0x1d4

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->$VALUES:[Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    invoke-virtual {v0}, [Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    return-object v0
.end method
