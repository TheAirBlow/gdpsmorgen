.class public Lcom/unity3d/services/monetization/core/api/PlacementContents;
.super Ljava/lang/Object;
.source "PlacementContents.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlacementContent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 19
    invoke-static {p1}, Lcom/unity3d/services/monetization/core/utilities/JSONUtilities;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentResultFactory;->create(Ljava/lang/String;Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;

    move-result-object v0

    .line 20
    .local v0, "result":Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
    invoke-static {p0, v0}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents;->putPlacementContent(Ljava/lang/String;Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;)Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;

    .line 21
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public static sendAdFinished(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "finishState"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds$FinishState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$FinishState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->sendAdFinished(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static sendAdStarted(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdPlacementContent;->sendAdStarted(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static setPlacementContentState(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 26
    invoke-static {p1}, Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;->valueOf(Ljava/lang/String;)Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContents;->setPlacementContentState(Ljava/lang/String;Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;)V

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 28
    return-void
.end method
