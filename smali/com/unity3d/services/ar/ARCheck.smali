.class public Lcom/unity3d/services/ar/ARCheck;
.super Ljava/lang/Object;
.source "ARCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFrameworkPresent()Z
    .locals 3

    .prologue
    .line 6
    :try_start_0
    const-string v2, "com.google.ar.core.Session"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7
    .local v0, "arClass":Ljava/lang/Class;
    const/4 v2, 0x1

    .line 9
    .end local v0    # "arClass":Ljava/lang/Class;
    :goto_0
    return v2

    .line 8
    :catch_0
    move-exception v1

    .line 9
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
