.class Lcom/customRobTop/GameAdManager$6;
.super Ljava/lang/Object;
.source "GameAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/GameAdManager;->cacheAppLovinInterstitial()V
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
    iput-object p1, p0, Lcom/customRobTop/GameAdManager$6;->this$0:Lcom/customRobTop/GameAdManager;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$6;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v0, v0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v2, p0, Lcom/customRobTop/GameAdManager$6;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v2, v2, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 274
    return-void
.end method
