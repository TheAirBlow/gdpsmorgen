.class public final enum Lcom/unity3d/services/store/StoreEvent;
.super Ljava/lang/Enum;
.source "StoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/store/StoreEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/store/StoreEvent;

.field public static final enum BILLING_SUPPORTED_ERROR:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum BILLING_SUPPORTED_RESULT:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum DISCONNECTED:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum GETPURCHASES_ERROR:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum GETPURCHASES_RESULT:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum INITIALIZATION_FAILED:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum INITIALIZED:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum PURCHASE_HISTORY_RESULT:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum PURCHASE_STATUS_ON_RESUME:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum PURCHASE_STATUS_ON_STOP:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

.field public static final enum SKU_DETAILS_RESULT:Lcom/unity3d/services/store/StoreEvent;


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
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->INITIALIZED:Lcom/unity3d/services/store/StoreEvent;

    .line 5
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "INITIALIZATION_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->INITIALIZATION_FAILED:Lcom/unity3d/services/store/StoreEvent;

    .line 6
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->DISCONNECTED:Lcom/unity3d/services/store/StoreEvent;

    .line 7
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "PURCHASE_STATUS_ON_RESUME"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME:Lcom/unity3d/services/store/StoreEvent;

    .line 8
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "PURCHASE_STATUS_ON_STOP"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP:Lcom/unity3d/services/store/StoreEvent;

    .line 9
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "PURCHASE_STATUS_ON_RESUME_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    .line 10
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "PURCHASE_STATUS_ON_STOP_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    .line 11
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "GETPURCHASES_RESULT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->GETPURCHASES_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 12
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "GETPURCHASES_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->GETPURCHASES_ERROR:Lcom/unity3d/services/store/StoreEvent;

    .line 13
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "PURCHASE_HISTORY_RESULT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 14
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "PURCHASE_HISTORY_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    .line 15
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "SKU_DETAILS_RESULT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 16
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "SKU_DETAILS_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    .line 17
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "BILLING_SUPPORTED_RESULT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->BILLING_SUPPORTED_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 18
    new-instance v0, Lcom/unity3d/services/store/StoreEvent;

    const-string v1, "BILLING_SUPPORTED_ERROR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->BILLING_SUPPORTED_ERROR:Lcom/unity3d/services/store/StoreEvent;

    .line 3
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/unity3d/services/store/StoreEvent;

    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->INITIALIZED:Lcom/unity3d/services/store/StoreEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->INITIALIZATION_FAILED:Lcom/unity3d/services/store/StoreEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->DISCONNECTED:Lcom/unity3d/services/store/StoreEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME:Lcom/unity3d/services/store/StoreEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP:Lcom/unity3d/services/store/StoreEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_STATUS_ON_STOP_ERROR:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->GETPURCHASES_RESULT:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->GETPURCHASES_ERROR:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_RESULT:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_ERROR:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_RESULT:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_ERROR:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->BILLING_SUPPORTED_RESULT:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/unity3d/services/store/StoreEvent;->BILLING_SUPPORTED_ERROR:Lcom/unity3d/services/store/StoreEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/services/store/StoreEvent;->$VALUES:[Lcom/unity3d/services/store/StoreEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/store/StoreEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/services/store/StoreEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/store/StoreEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/store/StoreEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/services/store/StoreEvent;->$VALUES:[Lcom/unity3d/services/store/StoreEvent;

    invoke-virtual {v0}, [Lcom/unity3d/services/store/StoreEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/store/StoreEvent;

    return-object v0
.end method
