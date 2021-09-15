.class public final enum Lcom/unity3d/services/purchasing/core/Store;
.super Ljava/lang/Enum;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/purchasing/core/Store;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum AMAZON_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum APPLE_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum CLOUD_MOOLAH:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum FACEBOOK_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum GOOGLE_PLAY:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum MAC_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum NOT_SPECIFIED:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum SAMSUNG_APPS:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum TIZEN_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum WIN_RT:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum XIAOMI_MI_PAY:Lcom/unity3d/services/purchasing/core/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "NOT_SPECIFIED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->NOT_SPECIFIED:Lcom/unity3d/services/purchasing/core/Store;

    .line 5
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "GOOGLE_PLAY"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->GOOGLE_PLAY:Lcom/unity3d/services/purchasing/core/Store;

    .line 6
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "AMAZON_APP_STORE"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->AMAZON_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 7
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "CLOUD_MOOLAH"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->CLOUD_MOOLAH:Lcom/unity3d/services/purchasing/core/Store;

    .line 8
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "SAMSUNG_APPS"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->SAMSUNG_APPS:Lcom/unity3d/services/purchasing/core/Store;

    .line 9
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "XIAOMI_MI_PAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->XIAOMI_MI_PAY:Lcom/unity3d/services/purchasing/core/Store;

    .line 10
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "MAC_APP_STORE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->MAC_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 11
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "APPLE_APP_STORE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->APPLE_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 12
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "WIN_RT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->WIN_RT:Lcom/unity3d/services/purchasing/core/Store;

    .line 13
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "TIZEN_STORE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->TIZEN_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 14
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "FACEBOOK_STORE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->FACEBOOK_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/unity3d/services/purchasing/core/Store;

    sget-object v1, Lcom/unity3d/services/purchasing/core/Store;->NOT_SPECIFIED:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/services/purchasing/core/Store;->GOOGLE_PLAY:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/services/purchasing/core/Store;->AMAZON_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/services/purchasing/core/Store;->CLOUD_MOOLAH:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/services/purchasing/core/Store;->SAMSUNG_APPS:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/services/purchasing/core/Store;->XIAOMI_MI_PAY:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/services/purchasing/core/Store;->MAC_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/services/purchasing/core/Store;->APPLE_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/services/purchasing/core/Store;->WIN_RT:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/services/purchasing/core/Store;->TIZEN_STORE:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/unity3d/services/purchasing/core/Store;->FACEBOOK_STORE:Lcom/unity3d/services/purchasing/core/Store;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->$VALUES:[Lcom/unity3d/services/purchasing/core/Store;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Store;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/services/purchasing/core/Store;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/purchasing/core/Store;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/purchasing/core/Store;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/services/purchasing/core/Store;->$VALUES:[Lcom/unity3d/services/purchasing/core/Store;

    invoke-virtual {v0}, [Lcom/unity3d/services/purchasing/core/Store;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/purchasing/core/Store;

    return-object v0
.end method
