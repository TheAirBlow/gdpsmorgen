.class Lcom/customRobTop/GameAdManager$3;
.super Ljava/lang/Object;
.source "GameAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/GameAdManager;->disableBanner()V
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
    iput-object p1, p0, Lcom/customRobTop/GameAdManager$3;->this$0:Lcom/customRobTop/GameAdManager;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$3;->this$0:Lcom/customRobTop/GameAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/customRobTop/GameAdManager;->access$0(Lcom/customRobTop/GameAdManager;Z)V

    .line 169
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$3;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$1(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$3;->this$0:Lcom/customRobTop/GameAdManager;

    invoke-static {v0}, Lcom/customRobTop/GameAdManager;->access$1(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->pause()V

    .line 171
    return-void
.end method
