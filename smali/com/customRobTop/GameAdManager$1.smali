.class Lcom/customRobTop/GameAdManager$1;
.super Ljava/lang/Object;
.source "GameAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/GameAdManager;->enableBanner()V
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
    iput-object p1, p0, Lcom/customRobTop/GameAdManager$1;->this$0:Lcom/customRobTop/GameAdManager;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$1;->this$0:Lcom/customRobTop/GameAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/customRobTop/GameAdManager;->access$0(Lcom/customRobTop/GameAdManager;Z)V

    .line 135
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$1;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$1(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/adview/AppLovinAdView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$1;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$1(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->resume()V

    .line 137
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$1;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$1(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    .line 138
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$1;->this$0:Lcom/customRobTop/GameAdManager;

    iput-boolean v2, v0, Lcom/customRobTop/GameAdManager;->_loadBannerQueued:Z

    .line 139
    return-void
.end method
