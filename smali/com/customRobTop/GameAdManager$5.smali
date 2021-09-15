.class Lcom/customRobTop/GameAdManager$5;
.super Ljava/lang/Object;
.source "GameAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/GameAdManager;->showRewardedVideo()V
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
    iput-object p1, p0, Lcom/customRobTop/GameAdManager$5;->this$0:Lcom/customRobTop/GameAdManager;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$5;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$3(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/customRobTop/GameAdManager$5;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v1, v1, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    iget-object v2, p0, Lcom/customRobTop/GameAdManager$5;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v2, v2, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    iget-object v3, p0, Lcom/customRobTop/GameAdManager$5;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v3, v3, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    iget-object v4, p0, Lcom/customRobTop/GameAdManager$5;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v4, v4, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 253
    return-void
.end method
