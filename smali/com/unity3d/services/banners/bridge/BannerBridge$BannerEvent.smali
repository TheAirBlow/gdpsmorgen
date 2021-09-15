.class public final enum Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;
.super Ljava/lang/Enum;
.source "BannerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/banners/bridge/BannerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

.field public static final enum BANNER_ATTACHED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

.field public static final enum BANNER_DESTROYED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

.field public static final enum BANNER_DESTROY_BANNER:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

.field public static final enum BANNER_DETACHED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

.field public static final enum BANNER_LOADED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

.field public static final enum BANNER_LOAD_PLACEMENT:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

.field public static final enum BANNER_RESIZED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

.field public static final enum BANNER_VISIBILITY_CHANGED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    const-string v1, "BANNER_VISIBILITY_CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_VISIBILITY_CHANGED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 76
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    const-string v1, "BANNER_RESIZED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_RESIZED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 77
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    const-string v1, "BANNER_LOADED"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_LOADED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 78
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    const-string v1, "BANNER_DESTROYED"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_DESTROYED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 79
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    const-string v1, "BANNER_ATTACHED"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_ATTACHED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 80
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    const-string v1, "BANNER_DETACHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_DETACHED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 81
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    const-string v1, "BANNER_LOAD_PLACEMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_LOAD_PLACEMENT:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 82
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    const-string v1, "BANNER_DESTROY_BANNER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_DESTROY_BANNER:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    sget-object v1, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_VISIBILITY_CHANGED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_RESIZED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_LOADED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_DESTROYED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_ATTACHED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_DETACHED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_LOAD_PLACEMENT:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->BANNER_DESTROY_BANNER:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->$VALUES:[Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->$VALUES:[Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    invoke-virtual {v0}, [Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    return-object v0
.end method
