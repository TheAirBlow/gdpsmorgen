.class final Lcom/unity3d/services/ads/api/Listener$1;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/api/Listener;->sendReadyEvent(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/unity3d/services/ads/api/Listener$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 17
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

    .line 18
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    iget-object v2, p0, Lcom/unity3d/services/ads/api/Listener$1;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsReady(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    :cond_0
    return-void
.end method
