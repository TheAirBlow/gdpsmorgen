.class public Lcom/unity3d/services/monetization/UnityMonetization;
.super Ljava/lang/Object;
.source "UnityMonetization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListener()Lcom/unity3d/services/monetization/IUnityMonetizationListener;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/unity3d/services/monetization/core/properties/ClientProperties;->getListener()Lcom/unity3d/services/monetization/IUnityMonetizationListener;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementContent(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents;->getPlacementContent(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementContent(Ljava/lang/String;Ljava/lang/Class;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "asClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents;->getPlacementContent(Ljava/lang/String;Ljava/lang/Class;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/monetization/IUnityMonetizationListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/services/monetization/IUnityMonetizationListener;

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "testMode":Z
    invoke-static {p0, p1, p2, v0}, Lcom/unity3d/services/monetization/UnityMonetization;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/monetization/IUnityMonetizationListener;Z)V

    .line 61
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/monetization/IUnityMonetizationListener;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/services/monetization/IUnityMonetizationListener;
    .param p3, "testMode"    # Z

    .prologue
    .line 64
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-static {p2}, Lcom/unity3d/services/monetization/UnityMonetization;->setListener(Lcom/unity3d/services/monetization/IUnityMonetizationListener;)V

    .line 68
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/unity3d/services/monetization/core/properties/ClientProperties;->setMonetizationEnabled(Z)V

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "usePerPlacementLoad":Z
    invoke-static {p0, p1, p2, p3, v0}, Lcom/unity3d/services/UnityServices;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/IUnityServicesListener;ZZ)V

    .line 71
    return-void
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents;->isReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setListener(Lcom/unity3d/services/monetization/IUnityMonetizationListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/services/monetization/IUnityMonetizationListener;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/unity3d/services/monetization/core/properties/ClientProperties;->setListener(Lcom/unity3d/services/monetization/IUnityMonetizationListener;)V

    .line 19
    return-void
.end method