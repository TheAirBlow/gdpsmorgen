.class final Lcom/unity3d/services/ads/api/Listener$5;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/api/Listener;->sendPlacementStateChangedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newState:Ljava/lang/String;

.field final synthetic val$oldState:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/unity3d/services/ads/api/Listener$5;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/services/ads/api/Listener$5;->val$oldState:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/ads/api/Listener$5;->val$newState:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    invoke-static {}, Lcom/unity3d/ads/properties/AdsProperties;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/IUnityAdsListener;

    .line 77
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    instance-of v2, v0, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;

    if-eqz v2, :cond_0

    .line 78
    check-cast v0, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;

    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    iget-object v2, p0, Lcom/unity3d/services/ads/api/Listener$5;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/services/ads/api/Listener$5;->val$oldState:Ljava/lang/String;

    invoke-static {v3}, Lcom/unity3d/ads/UnityAds$PlacementState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/services/ads/api/Listener$5;->val$newState:Ljava/lang/String;

    invoke-static {v4}, Lcom/unity3d/ads/UnityAds$PlacementState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;->onUnityAdsPlacementStateChanged(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$PlacementState;Lcom/unity3d/ads/UnityAds$PlacementState;)V

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method
