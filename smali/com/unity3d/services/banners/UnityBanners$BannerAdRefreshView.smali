.class Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;
.super Landroid/widget/RelativeLayout;
.source "UnityBanners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/banners/UnityBanners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerAdRefreshView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$LifecycleListener;
    }
.end annotation


# instance fields
.field private bannerView:Lcom/unity3d/services/banners/BannerView;

.field private didLoad:Z

.field private didShow:Z

.field private didSubscribeToLifecycle:Z

.field private lifecycleListener:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$LifecycleListener;

.field private placementId:Ljava/lang/String;

.field private refreshHandler:Landroid/os/Handler;

.field private refreshRate:J

.field private refreshTime:J

.field private reloadRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/unity3d/services/banners/UnityBanners;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/banners/UnityBanners;Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V
    .locals 5
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "placementId"    # Ljava/lang/String;
    .param p4, "size"    # Lcom/unity3d/services/banners/UnityBannerSize;

    .prologue
    const/4 v4, 0x0

    .line 218
    iput-object p1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->this$0:Lcom/unity3d/services/banners/UnityBanners;

    .line 219
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 207
    iput-boolean v4, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didLoad:Z

    .line 208
    const-wide/16 v2, 0x1e

    iput-wide v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshRate:J

    .line 210
    iput-boolean v4, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didShow:Z

    .line 211
    iput-boolean v4, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didSubscribeToLifecycle:Z

    .line 220
    iput-object p3, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->placementId:Ljava/lang/String;

    .line 221
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshHandler:Landroid/os/Handler;

    .line 222
    move-object v0, p0

    .line 223
    .local v0, "self":Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;
    new-instance v1, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$1;-><init>(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;Lcom/unity3d/services/banners/UnityBanners;Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V

    iput-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->reloadRunnable:Ljava/lang/Runnable;

    .line 229
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->setupLayoutParams()V

    .line 230
    invoke-virtual {p0, v4}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->setBackgroundColor(I)V

    .line 231
    new-instance v1, Lcom/unity3d/services/banners/BannerView;

    invoke-direct {v1, p2, p3, p4}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    iput-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    .line 232
    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->addView(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method static synthetic access$100(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->reload()V

    return-void
.end method

.method static synthetic access$300(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->stopReloadTask()V

    return-void
.end method

.method static synthetic access$400(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->startReloadTask()V

    return-void
.end method

.method private reload()V
    .locals 6

    .prologue
    .line 295
    iget-object v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v2}, Lcom/unity3d/services/banners/BannerView;->load()V

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 298
    .local v0, "currentTime":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshRate:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshTime:J

    .line 299
    iget-object v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->reloadRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 300
    return-void
.end method

.method private setupLayoutParams()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 363
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 364
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    return-void
.end method

.method private startReloadTask()V
    .locals 6

    .prologue
    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 279
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->reloadRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->reload()V

    goto :goto_0
.end method

.method private stopReloadTask()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->reloadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->reloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    :cond_0
    return-void
.end method

.method private subscribeToLifecycle()V
    .locals 3

    .prologue
    .line 303
    iget-boolean v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didSubscribeToLifecycle:Z

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 305
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    move-object v0, p0

    .line 307
    .local v0, "self":Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;
    new-instance v1, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$3;-><init>(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V

    iput-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->lifecycleListener:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$LifecycleListener;

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didSubscribeToLifecycle:Z

    .line 329
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->lifecycleListener:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$LifecycleListener;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 331
    .end local v0    # "self":Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;
    :cond_0
    return-void
.end method

.method private unsubscribeFromLifecycle()V
    .locals 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didSubscribeToLifecycle:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->lifecycleListener:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$LifecycleListener;

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didSubscribeToLifecycle:Z

    .line 339
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->lifecycleListener:Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$LifecycleListener;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->stopReloadTask()V

    .line 264
    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/BannerView;->destroy()V

    .line 266
    move-object v0, p0

    .line 267
    .local v0, "self":Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;
    new-instance v1, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$2;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView$2;-><init>(Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    .line 275
    return-void
.end method

.method public getListener()Lcom/unity3d/services/banners/BannerView$IListener;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/unity3d/services/banners/UnityBannerSize;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getSize()Lcom/unity3d/services/banners/UnityBannerSize;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 252
    iget-boolean v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didLoad:Z

    if-nez v1, :cond_1

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didLoad:Z

    .line 254
    invoke-static {}, Lcom/unity3d/services/banners/properties/BannerRefreshInfo;->getInstance()Lcom/unity3d/services/banners/properties/BannerRefreshInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unity3d/services/banners/properties/BannerRefreshInfo;->getRefreshRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 255
    .local v0, "refreshRateInteger":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->refreshRate:J

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->reload()V

    .line 260
    .end local v0    # "refreshRateInteger":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 353
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->subscribeToLifecycle()V

    .line 354
    iget-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didShow:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->startReloadTask()V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->didShow:Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 345
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 346
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->stopReloadTask()V

    .line 347
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->unsubscribeFromLifecycle()V

    .line 348
    return-void
.end method

.method public setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unity3d/services/banners/BannerView$IListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    .line 245
    return-void
.end method
