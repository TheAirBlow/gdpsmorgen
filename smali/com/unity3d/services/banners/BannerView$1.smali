.class Lcom/unity3d/services/banners/BannerView$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/BannerView;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/banners/BannerView;

.field final synthetic val$self:Lcom/unity3d/services/banners/BannerView;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/unity3d/services/banners/BannerView$1;->this$0:Lcom/unity3d/services/banners/BannerView;

    iput-object p2, p0, Lcom/unity3d/services/banners/BannerView$1;->val$self:Lcom/unity3d/services/banners/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/unity3d/services/banners/BannerView$1;->val$self:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/BannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 86
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Landroid/view/ViewManager;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/unity3d/services/banners/BannerView$1;->val$self:Lcom/unity3d/services/banners/BannerView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 89
    :cond_0
    return-void
.end method
