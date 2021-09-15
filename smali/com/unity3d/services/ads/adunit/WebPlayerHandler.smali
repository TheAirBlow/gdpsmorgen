.class public Lcom/unity3d/services/ads/adunit/WebPlayerHandler;
.super Ljava/lang/Object;
.source "WebPlayerHandler.java"

# interfaces
.implements Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;


# static fields
.field private static webPlayerViewId:Ljava/lang/String;


# instance fields
.field private _webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "webplayer"

    sput-object v0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->webPlayerViewId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z
    .locals 5
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 17
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    if-nez v1, :cond_0

    .line 18
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;

    move-result-object v0

    .line 19
    .local v0, "webPlayerSettingsCache":Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    sget-object v2, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->webPlayerViewId:Ljava/lang/String;

    sget-object v3, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->webPlayerViewId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->getWebSettings(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->webPlayerViewId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->getWebPlayerSettings(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    .line 20
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    sget-object v2, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->webPlayerViewId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;->getWebPlayerEventSettings(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->setEventSettings(Lorg/json/JSONObject;)V

    .line 21
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->webPlayerViewId:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-virtual {v1, v2, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->addWebPlayer(Ljava/lang/String;Lcom/unity3d/services/ads/webplayer/WebPlayerView;)V

    .line 24
    .end local v0    # "webPlayerSettingsCache":Lcom/unity3d/services/ads/webplayer/WebPlayerSettingsCache;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public destroy()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v0}, Lcom/unity3d/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->destroy()V

    .line 33
    :cond_0
    invoke-static {}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->webPlayerViewId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->removeWebPlayer(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->_webPlayerView:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    return-object v0
.end method

.method public onCreate(Lcom/unity3d/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->create(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z

    .line 45
    return-void
.end method

.method public onDestroy(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/WebPlayerHandler;->destroy()Z

    .line 63
    :cond_0
    return-void
.end method

.method public onPause(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 57
    return-void
.end method

.method public onResume(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 54
    return-void
.end method

.method public onStart(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 48
    return-void
.end method

.method public onStop(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 51
    return-void
.end method
