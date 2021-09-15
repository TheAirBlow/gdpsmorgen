.class public final enum Lcom/unity3d/services/banners/view/BannerPosition;
.super Ljava/lang/Enum;
.source "BannerPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/banners/view/BannerPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/banners/view/BannerPosition;

.field public static final enum BOTTOM_CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

.field public static final enum BOTTOM_LEFT:Lcom/unity3d/services/banners/view/BannerPosition;

.field public static final enum BOTTOM_RIGHT:Lcom/unity3d/services/banners/view/BannerPosition;

.field public static final enum CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

.field public static final enum NONE:Lcom/unity3d/services/banners/view/BannerPosition;

.field public static final enum TOP_CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

.field public static final enum TOP_LEFT:Lcom/unity3d/services/banners/view/BannerPosition;

.field public static final enum TOP_RIGHT:Lcom/unity3d/services/banners/view/BannerPosition;


# instance fields
.field private _gravity:I

.field private final _rules:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 10
    new-instance v0, Lcom/unity3d/services/banners/view/BannerPosition;

    const-string v1, "TOP_LEFT"

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    const/16 v3, 0x33

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/unity3d/services/banners/view/BannerPosition;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_LEFT:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 11
    new-instance v0, Lcom/unity3d/services/banners/view/BannerPosition;

    const-string v1, "TOP_CENTER"

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    const/16 v3, 0x31

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/unity3d/services/banners/view/BannerPosition;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 12
    new-instance v0, Lcom/unity3d/services/banners/view/BannerPosition;

    const-string v1, "TOP_RIGHT"

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    const/16 v3, 0x35

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/unity3d/services/banners/view/BannerPosition;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_RIGHT:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 13
    new-instance v0, Lcom/unity3d/services/banners/view/BannerPosition;

    const-string v1, "BOTTOM_LEFT"

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    const/16 v3, 0x53

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/unity3d/services/banners/view/BannerPosition;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_LEFT:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 14
    new-instance v0, Lcom/unity3d/services/banners/view/BannerPosition;

    const-string v1, "BOTTOM_CENTER"

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    const/16 v3, 0x51

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/unity3d/services/banners/view/BannerPosition;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 15
    new-instance v0, Lcom/unity3d/services/banners/view/BannerPosition;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    const/16 v4, 0x55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unity3d/services/banners/view/BannerPosition;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_RIGHT:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 16
    new-instance v0, Lcom/unity3d/services/banners/view/BannerPosition;

    const-string v1, "CENTER"

    const/4 v2, 0x6

    new-array v3, v7, [I

    const/16 v4, 0xd

    aput v4, v3, v6

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unity3d/services/banners/view/BannerPosition;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 17
    new-instance v0, Lcom/unity3d/services/banners/view/BannerPosition;

    const-string v1, "NONE"

    const/4 v2, 0x7

    new-array v3, v6, [I

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/unity3d/services/banners/view/BannerPosition;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->NONE:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/unity3d/services/banners/view/BannerPosition;

    sget-object v1, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_LEFT:Lcom/unity3d/services/banners/view/BannerPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_RIGHT:Lcom/unity3d/services/banners/view/BannerPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_LEFT:Lcom/unity3d/services/banners/view/BannerPosition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_RIGHT:Lcom/unity3d/services/banners/view/BannerPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/services/banners/view/BannerPosition;->CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/services/banners/view/BannerPosition;->NONE:Lcom/unity3d/services/banners/view/BannerPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->$VALUES:[Lcom/unity3d/services/banners/view/BannerPosition;

    return-void

    .line 10
    :array_0
    .array-data 4
        0xa
        0x9
    .end array-data

    .line 11
    :array_1
    .array-data 4
        0xa
        0xe
    .end array-data

    .line 12
    :array_2
    .array-data 4
        0xa
        0xb
    .end array-data

    .line 13
    :array_3
    .array-data 4
        0xc
        0x9
    .end array-data

    .line 14
    :array_4
    .array-data 4
        0xc
        0xe
    .end array-data

    .line 15
    :array_5
    .array-data 4
        0xc
        0xb
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .locals 0
    .param p3, "rules"    # [I
    .param p4, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/unity3d/services/banners/view/BannerPosition;->_rules:[I

    .line 24
    iput p4, p0, Lcom/unity3d/services/banners/view/BannerPosition;->_gravity:I

    .line 25
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/unity3d/services/banners/view/BannerPosition;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->NONE:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 45
    :goto_0
    return-object v0

    .line 30
    :cond_1
    const-string v0, "topleft"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_LEFT:Lcom/unity3d/services/banners/view/BannerPosition;

    goto :goto_0

    .line 32
    :cond_2
    const-string v0, "topright"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_RIGHT:Lcom/unity3d/services/banners/view/BannerPosition;

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "topcenter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->TOP_CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    goto :goto_0

    .line 36
    :cond_4
    const-string v0, "bottomleft"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_LEFT:Lcom/unity3d/services/banners/view/BannerPosition;

    goto :goto_0

    .line 38
    :cond_5
    const-string v0, "bottomright"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_RIGHT:Lcom/unity3d/services/banners/view/BannerPosition;

    goto :goto_0

    .line 40
    :cond_6
    const-string v0, "bottomcenter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->BOTTOM_CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    goto :goto_0

    .line 42
    :cond_7
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 43
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->CENTER:Lcom/unity3d/services/banners/view/BannerPosition;

    goto :goto_0

    .line 45
    :cond_8
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->NONE:Lcom/unity3d/services/banners/view/BannerPosition;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/banners/view/BannerPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/unity3d/services/banners/view/BannerPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/banners/view/BannerPosition;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/banners/view/BannerPosition;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->$VALUES:[Lcom/unity3d/services/banners/view/BannerPosition;

    invoke-virtual {v0}, [Lcom/unity3d/services/banners/view/BannerPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/banners/view/BannerPosition;

    return-object v0
.end method


# virtual methods
.method public addLayoutRules(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 49
    iget-object v2, p0, Lcom/unity3d/services/banners/view/BannerPosition;->_rules:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 50
    .local v0, "rule":I
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "rule":I
    :cond_0
    return-object p1
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/unity3d/services/banners/view/BannerPosition;->_gravity:I

    return v0
.end method
