.class public final enum Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/api/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceInfoEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

.field public static final enum VOLUME_CHANGED:Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

    const-string v1, "VOLUME_CHANGED"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;->VOLUME_CHANGED:Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

    sget-object v1, Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;->VOLUME_CHANGED:Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;->$VALUES:[Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;->$VALUES:[Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/api/DeviceInfo$DeviceInfoEvent;

    return-object v0
.end method