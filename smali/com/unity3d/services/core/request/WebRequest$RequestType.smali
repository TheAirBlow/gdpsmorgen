.class public final enum Lcom/unity3d/services/core/request/WebRequest$RequestType;
.super Ljava/lang/Enum;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/request/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/core/request/WebRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/request/WebRequest$RequestType;

.field public static final enum GET:Lcom/unity3d/services/core/request/WebRequest$RequestType;

.field public static final enum HEAD:Lcom/unity3d/services/core/request/WebRequest$RequestType;

.field public static final enum POST:Lcom/unity3d/services/core/request/WebRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/request/WebRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;->POST:Lcom/unity3d/services/core/request/WebRequest$RequestType;

    .line 38
    new-instance v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/services/core/request/WebRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;->GET:Lcom/unity3d/services/core/request/WebRequest$RequestType;

    .line 39
    new-instance v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/services/core/request/WebRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;->HEAD:Lcom/unity3d/services/core/request/WebRequest$RequestType;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unity3d/services/core/request/WebRequest$RequestType;

    sget-object v1, Lcom/unity3d/services/core/request/WebRequest$RequestType;->POST:Lcom/unity3d/services/core/request/WebRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/services/core/request/WebRequest$RequestType;->GET:Lcom/unity3d/services/core/request/WebRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/services/core/request/WebRequest$RequestType;->HEAD:Lcom/unity3d/services/core/request/WebRequest$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;->$VALUES:[Lcom/unity3d/services/core/request/WebRequest$RequestType;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/request/WebRequest$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/core/request/WebRequest$RequestType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/unity3d/services/core/request/WebRequest$RequestType;->$VALUES:[Lcom/unity3d/services/core/request/WebRequest$RequestType;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/request/WebRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/request/WebRequest$RequestType;

    return-object v0
.end method
