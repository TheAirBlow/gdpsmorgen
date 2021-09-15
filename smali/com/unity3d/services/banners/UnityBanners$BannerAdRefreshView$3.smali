.class Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;
.super Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$LifecycleListener;
.source "UnityBanners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->subscribeToLifecycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

.field final synthetic val$self:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V
    .locals 1
    .param p1, "this$1"    # Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;->this$1:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    iput-object p2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;->val$self:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$LifecycleListener;-><init>(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;Lcom/unity3d/services/banners/UnityBanners$1;)V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;->val$self:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->access$300(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V

    .line 321
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;->val$self:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->access$300(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V

    .line 311
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;->val$self:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->access$400(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V

    .line 326
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;->val$self:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->access$300(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V

    .line 316
    return-void
.end method
