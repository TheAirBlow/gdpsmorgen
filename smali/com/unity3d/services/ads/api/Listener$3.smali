.class final Lcom/unity3d/services/ads/api/Listener$3;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/api/Listener;->sendFinishEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/unity3d/services/ads/api/Listener$3;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/services/ads/api/Listener$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/unity3d/ads/properties/AdsProperties;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/IUnityAdsListener;

    .line 46
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    iget-object v2, p0, Lcom/unity3d/services/ads/api/Listener$3;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/services/ads/api/Listener$3;->val$result:Ljava/lang/String;

    invoke-static {v3}, Lcom/unity3d/ads/UnityAds$FinishState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$FinishState;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    goto :goto_0

    .line 48
    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    :cond_0
    return-void
.end method
