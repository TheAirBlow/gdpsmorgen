.class Lcom/unity3d/services/banners/UnityBanners$1;
.super Lcom/unity3d/services/banners/BannerView$Listener;
.source "UnityBanners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/UnityBanners;->_loadBanner(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/banners/UnityBanners;

.field final synthetic val$bannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

.field final synthetic val$self:Lcom/unity3d/services/banners/UnityBanners;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/UnityBanners;Lcom/unity3d/services/banners/UnityBanners;Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/services/banners/UnityBanners;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/unity3d/services/banners/UnityBanners$1;->this$0:Lcom/unity3d/services/banners/UnityBanners;

    iput-object p2, p0, Lcom/unity3d/services/banners/UnityBanners$1;->val$self:Lcom/unity3d/services/banners/UnityBanners;

    iput-object p3, p0, Lcom/unity3d/services/banners/UnityBanners$1;->val$bannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClick(Lcom/unity3d/services/banners/BannerView;)V
    .locals 2
    .param p1, "bannerView"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$1;->val$self:Lcom/unity3d/services/banners/UnityBanners;

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners;->access$000(Lcom/unity3d/services/banners/UnityBanners;)Lcom/unity3d/services/banners/IUnityBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$1;->val$self:Lcom/unity3d/services/banners/UnityBanners;

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners;->access$000(Lcom/unity3d/services/banners/UnityBanners;)Lcom/unity3d/services/banners/IUnityBannerListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unity3d/services/banners/BannerView;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/banners/IUnityBannerListener;->onUnityBannerClick(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V
    .locals 3
    .param p1, "bannerView"    # Lcom/unity3d/services/banners/BannerView;
    .param p2, "errorInfo"    # Lcom/unity3d/services/banners/BannerErrorInfo;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$1;->val$self:Lcom/unity3d/services/banners/UnityBanners;

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners;->access$000(Lcom/unity3d/services/banners/UnityBanners;)Lcom/unity3d/services/banners/IUnityBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$1;->val$self:Lcom/unity3d/services/banners/UnityBanners;

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners;->access$000(Lcom/unity3d/services/banners/UnityBanners;)Lcom/unity3d/services/banners/IUnityBannerListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unity3d/services/banners/BannerView;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/banners/IUnityBannerListener;->onUnityBannerError(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onBannerLoaded(Lcom/unity3d/services/banners/BannerView;)V
    .locals 3
    .param p1, "bannerView"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 101
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    .line 102
    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    .line 104
    nop
.end method
