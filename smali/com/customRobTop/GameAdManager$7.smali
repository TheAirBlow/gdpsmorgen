.class Lcom/customRobTop/GameAdManager$7;
.super Ljava/lang/Object;
.source "GameAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/GameAdManager;->showAppLovinInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/customRobTop/GameAdManager;


# direct methods
.method constructor <init>(Lcom/customRobTop/GameAdManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    iget v1, v0, Lcom/customRobTop/GameAdManager;->_ALIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/customRobTop/GameAdManager;->_ALIdx:I

    .line 292
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v1, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v1, v1, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v2, v2, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/customRobTop/GameAdManager;->access$4(Lcom/customRobTop/GameAdManager;Lcom/applovin/adview/AppLovinInterstitialAdDialog;)V

    .line 293
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$5(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v1, v1, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 294
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$5(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v1, v1, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$5(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v1, v1, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 296
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$5(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/customRobTop/GameAdManager$7;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v1}, Lcom/customRobTop/GameAdManager;->access$6(Lcom/customRobTop/GameAdManager;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 297
    return-void
.end method
