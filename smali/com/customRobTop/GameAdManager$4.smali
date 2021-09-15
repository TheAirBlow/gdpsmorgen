.class Lcom/customRobTop/GameAdManager$4;
.super Ljava/lang/Object;
.source "GameAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/GameAdManager;->cacheRewardedVideo()V
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
    iput-object p1, p0, Lcom/customRobTop/GameAdManager$4;->this$0:Lcom/customRobTop/GameAdManager;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$4;->this$0:Lcom/customRobTop/GameAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/customRobTop/GameAdManager;->access$2(Lcom/customRobTop/GameAdManager;Z)V

    .line 232
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$4;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$3(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/customRobTop/GameAdManager$4;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v1, v1, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 233
    return-void
.end method
