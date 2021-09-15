.class public final Lcom/unity3d/ads/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/UnityAds$UnityAdsError;,
        Lcom/unity3d/ads/UnityAds$PlacementState;,
        Lcom/unity3d/ads/UnityAds$FinishState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->addListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 137
    return-void
.end method

.method public static getDebugMode()Z
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static getListener()Lcom/unity3d/ads/IUnityAdsListener;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "testMode":Z
    const/4 v1, 0x0

    .line 80
    .local v1, "usePerPlacementLoad":Z
    invoke-static {p0, p1, p2, v0, v1}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;ZZ)V

    .line 81
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;
    .param p3, "testMode"    # Z

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "usePerPlacementLoad":Z
    invoke-static {p0, p1, p2, p3, v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;ZZ)V

    .line 94
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;ZZ)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;
    .param p3, "testMode"    # Z
    .param p4, "enablePerPlacementLoad"    # Z

    .prologue
    .line 107
    invoke-static {p0, p1, p2, p3, p4}, Lcom/unity3d/services/ads/UnityAdsImplementation;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;ZZ)V

    .line 108
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/unity3d/services/UnityServices;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isReady()Z
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isReady()Z

    move-result v0

    return v0
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 0
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->load(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static removeListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 145
    invoke-static {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->removeListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 146
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debugMode"    # Z

    .prologue
    .line 240
    invoke-static {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->setDebugMode(Z)V

    .line 241
    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 127
    invoke-static {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 128
    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 221
    invoke-static {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;)V

    .line 222
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 232
    return-void
.end method
