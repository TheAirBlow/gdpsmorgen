.class Lcom/customRobTop/GameAdManager$8;
.super Ljava/lang/Object;
.source "GameAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/GameAdManager;->showUnityInterstitial()V
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
    iput-object p1, p0, Lcom/customRobTop/GameAdManager$8;->this$0:Lcom/customRobTop/GameAdManager;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$8;->this$0:Lcom/customRobTop/GameAdManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/customRobTop/GameAdManager;->_ALIdx:I

    .line 419
    iget-object v0, p0, Lcom/customRobTop/GameAdManager$8;->this$0:Lcom/customRobTop/GameAdManager;

    iget-object v0, v0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;)V

    .line 420
    return-void
.end method
