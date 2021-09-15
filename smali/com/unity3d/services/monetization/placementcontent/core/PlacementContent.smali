.class public Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;
.super Ljava/lang/Object;
.source "PlacementContent.java"


# instance fields
.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected placementId:Ljava/lang/String;

.field private state:Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->extras:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->placementId:Ljava/lang/String;

    .line 23
    const-string v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->type:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->extras:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    return-void
.end method

.method private getJsonForCustomEvent(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "customEvent"    # Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;

    .prologue
    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "category"

    invoke-virtual {p1}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v2, "type"

    invoke-virtual {p1}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Error creating json for custom event: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getDefaultEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "PLACEMENT_CONTENT"

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->extras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public getState()Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->state:Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->state:Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    sget-object v1, Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;->READY:Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendCustomEvent(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;)V
    .locals 8
    .param p1, "customEvent"    # Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->getDefaultEventCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;->setCategory(Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    .line 48
    .local v0, "app":Lcom/unity3d/services/core/webview/WebViewApp;
    if-nez v0, :cond_1

    .line 49
    const-string v2, "Could not send custom event due to app being null"

    invoke-static {v2}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-direct {p0, p1}, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->getJsonForCustomEvent(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    .local v1, "eventDataMap":Lorg/json/JSONObject;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/monetization/core/webview/WebViewEventCategory;->PLACEMENT_CONTENT:Lcom/unity3d/services/monetization/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentEvent;->CUSTOM:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->placementId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->sendCustomEvent(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;)V

    .line 78
    return-void
.end method

.method public sendCustomEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->sendCustomEvent(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;)V

    .line 74
    return-void
.end method

.method public setState(Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;)V
    .locals 0
    .param p1, "state"    # Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/core/PlacementContent;->state:Lcom/unity3d/services/monetization/UnityMonetization$PlacementContentState;

    .line 41
    return-void
.end method
