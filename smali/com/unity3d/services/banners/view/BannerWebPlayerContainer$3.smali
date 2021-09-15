.class Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;
.super Ljava/lang/Object;
.source "BannerWebPlayerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

.field final synthetic val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->this$0:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    iput-object p2, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->removeAllViews()V

    .line 97
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 98
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-static {v1}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->access$000(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-static {v1}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->access$000(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->destroy()V

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer$3;->val$self:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->access$002(Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    .line 105
    return-void
.end method
