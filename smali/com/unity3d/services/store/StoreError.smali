.class public final enum Lcom/unity3d/services/store/StoreError;
.super Ljava/lang/Enum;
.source "StoreError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/store/StoreError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/store/StoreError;

.field public static final enum CLASS_NOT_FOUND:Lcom/unity3d/services/store/StoreError;

.field public static final enum ILLEGAL_ACCESS:Lcom/unity3d/services/store/StoreError;

.field public static final enum INVOCATION_TARGET:Lcom/unity3d/services/store/StoreError;

.field public static final enum JSON_ERROR:Lcom/unity3d/services/store/StoreError;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

.field public static final enum NO_SUCH_METHOD:Lcom/unity3d/services/store/StoreError;

.field public static final enum STORE_ERROR:Lcom/unity3d/services/store/StoreError;

.field public static final enum UNKNOWN_ERROR:Lcom/unity3d/services/store/StoreError;


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
    new-instance v0, Lcom/unity3d/services/store/StoreError;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/services/store/StoreError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    .line 5
    new-instance v0, Lcom/unity3d/services/store/StoreError;

    const-string v1, "CLASS_NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/services/store/StoreError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreError;->CLASS_NOT_FOUND:Lcom/unity3d/services/store/StoreError;

    .line 6
    new-instance v0, Lcom/unity3d/services/store/StoreError;

    const-string v1, "NO_SUCH_METHOD"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/services/store/StoreError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreError;->NO_SUCH_METHOD:Lcom/unity3d/services/store/StoreError;

    .line 7
    new-instance v0, Lcom/unity3d/services/store/StoreError;

    const-string v1, "INVOCATION_TARGET"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/services/store/StoreError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreError;->INVOCATION_TARGET:Lcom/unity3d/services/store/StoreError;

    .line 8
    new-instance v0, Lcom/unity3d/services/store/StoreError;

    const-string v1, "ILLEGAL_ACCESS"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/services/store/StoreError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreError;->ILLEGAL_ACCESS:Lcom/unity3d/services/store/StoreError;

    .line 9
    new-instance v0, Lcom/unity3d/services/store/StoreError;

    const-string v1, "JSON_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreError;->JSON_ERROR:Lcom/unity3d/services/store/StoreError;

    .line 10
    new-instance v0, Lcom/unity3d/services/store/StoreError;

    const-string v1, "STORE_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreError;->STORE_ERROR:Lcom/unity3d/services/store/StoreError;

    .line 11
    new-instance v0, Lcom/unity3d/services/store/StoreError;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/StoreError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/StoreError;->UNKNOWN_ERROR:Lcom/unity3d/services/store/StoreError;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/unity3d/services/store/StoreError;

    sget-object v1, Lcom/unity3d/services/store/StoreError;->NOT_INITIALIZED:Lcom/unity3d/services/store/StoreError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/services/store/StoreError;->CLASS_NOT_FOUND:Lcom/unity3d/services/store/StoreError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/services/store/StoreError;->NO_SUCH_METHOD:Lcom/unity3d/services/store/StoreError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/services/store/StoreError;->INVOCATION_TARGET:Lcom/unity3d/services/store/StoreError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/services/store/StoreError;->ILLEGAL_ACCESS:Lcom/unity3d/services/store/StoreError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/services/store/StoreError;->JSON_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/services/store/StoreError;->STORE_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/services/store/StoreError;->UNKNOWN_ERROR:Lcom/unity3d/services/store/StoreError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/services/store/StoreError;->$VALUES:[Lcom/unity3d/services/store/StoreError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/store/StoreError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/services/store/StoreError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/store/StoreError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/store/StoreError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/services/store/StoreError;->$VALUES:[Lcom/unity3d/services/store/StoreError;

    invoke-virtual {v0}, [Lcom/unity3d/services/store/StoreError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/store/StoreError;

    return-object v0
.end method
