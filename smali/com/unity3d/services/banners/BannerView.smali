.class public Lcom/unity3d/services/banners/BannerView;
.super Landroid/widget/RelativeLayout;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/banners/BannerView$Listener;,
        Lcom/unity3d/services/banners/BannerView$IListener;
    }
.end annotation


# instance fields
.field private bannerWebPlayerContainer:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

.field private initializationListener:Lcom/unity3d/services/core/configuration/IInitializationListener;

.field private listener:Lcom/unity3d/services/banners/BannerView$IListener;

.field private placementId:Ljava/lang/String;

.field private size:Lcom/unity3d/services/banners/UnityBannerSize;

.field private viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "placementId"    # Ljava/lang/String;
    .param p3, "size"    # Lcom/unity3d/services/banners/UnityBannerSize;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/banners/BannerView;->viewId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/unity3d/services/banners/BannerView;->placementId:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/unity3d/services/banners/BannerView;->size:Lcom/unity3d/services/banners/UnityBannerSize;

    .line 40
    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView;->setupLayoutParams()V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/services/banners/BannerView;->setBackgroundColor(I)V

    .line 42
    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    .line 43
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/banners/BannerViewCache;->addBannerView(Lcom/unity3d/services/banners/BannerView;)Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/banners/BannerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerView;->viewId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unity3d/services/banners/BannerView;)Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerView;->bannerWebPlayerContainer:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;)Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/banners/BannerView;
    .param p1, "x1"    # Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/unity3d/services/banners/BannerView;->bannerWebPlayerContainer:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView;->unregisterInitializeListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView;->bridgeLoad()V

    return-void
.end method

.method private bridgeLoad()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerView;->placementId:Ljava/lang/String;

    iget-object v1, p0, Lcom/unity3d/services/banners/BannerView;->viewId:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/services/banners/BannerView;->size:Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/banners/bridge/BannerBridge;->load(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    .line 202
    return-void
.end method

.method private registerInitializeListener()V
    .locals 3

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView;->unregisterInitializeListener()V

    .line 166
    move-object v0, p0

    .line 167
    .local v0, "bannerView":Lcom/unity3d/services/banners/BannerView;
    new-instance v1, Lcom/unity3d/services/banners/BannerView$3;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/banners/BannerView$3;-><init>(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerView;)V

    iput-object v1, p0, Lcom/unity3d/services/banners/BannerView;->initializationListener:Lcom/unity3d/services/core/configuration/IInitializationListener;

    .line 181
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/banners/BannerView;->initializationListener:Lcom/unity3d/services/core/configuration/IInitializationListener;

    invoke-virtual {v1, v2}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->addListener(Lcom/unity3d/services/core/configuration/IInitializationListener;)V

    .line 182
    return-void
.end method

.method private setupLayoutParams()V
    .locals 5

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/unity3d/services/banners/BannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/services/banners/BannerView;->size:Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-virtual {v4}, Lcom/unity3d/services/banners/UnityBannerSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/unity3d/services/core/misc/ViewUtilities;->pxFromDp(Landroid/content/Context;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 193
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/unity3d/services/banners/BannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/services/banners/BannerView;->size:Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-virtual {v4}, Lcom/unity3d/services/banners/UnityBannerSize;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/unity3d/services/core/misc/ViewUtilities;->pxFromDp(Landroid/content/Context;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 194
    .local v0, "height":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/unity3d/services/banners/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/unity3d/services/banners/BannerView;->setGravity(I)V

    .line 197
    invoke-virtual {p0}, Lcom/unity3d/services/banners/BannerView;->requestLayout()V

    .line 198
    return-void
.end method

.method private unregisterInitializeListener()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerView;->initializationListener:Lcom/unity3d/services/core/configuration/IInitializationListener;

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/banners/BannerView;->initializationListener:Lcom/unity3d/services/core/configuration/IInitializationListener;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->removeListener(Lcom/unity3d/services/core/configuration/IInitializationListener;)V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/banners/BannerView;->initializationListener:Lcom/unity3d/services/core/configuration/IInitializationListener;

    .line 189
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/banners/BannerView;->viewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unity3d/services/banners/BannerViewCache;->removeBannerView(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView;->unregisterInitializeListener()V

    .line 78
    iget-object v1, p0, Lcom/unity3d/services/banners/BannerView;->placementId:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/services/banners/bridge/BannerBridge;->destroy(Ljava/lang/String;)V

    .line 81
    move-object v0, p0

    .line 82
    .local v0, "self":Lcom/unity3d/services/banners/BannerView;
    new-instance v1, Lcom/unity3d/services/banners/BannerView$1;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/banners/BannerView$1;-><init>(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerView;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    iget-object v1, p0, Lcom/unity3d/services/banners/BannerView;->bannerWebPlayerContainer:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/unity3d/services/banners/BannerView;->bannerWebPlayerContainer:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;->destroy()V

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/banners/BannerView;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] was destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 101
    iput-object v3, p0, Lcom/unity3d/services/banners/BannerView;->placementId:Ljava/lang/String;

    .line 102
    iput-object v3, p0, Lcom/unity3d/services/banners/BannerView;->viewId:Ljava/lang/String;

    .line 103
    iput-object v3, p0, Lcom/unity3d/services/banners/BannerView;->size:Lcom/unity3d/services/banners/UnityBannerSize;

    .line 104
    iput-object v3, p0, Lcom/unity3d/services/banners/BannerView;->listener:Lcom/unity3d/services/banners/BannerView$IListener;

    .line 105
    iput-object v3, p0, Lcom/unity3d/services/banners/BannerView;->bannerWebPlayerContainer:Lcom/unity3d/services/banners/view/BannerWebPlayerContainer;

    .line 106
    return-void
.end method

.method public getListener()Lcom/unity3d/services/banners/BannerView$IListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerView;->listener:Lcom/unity3d/services/banners/BannerView$IListener;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerView;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/unity3d/services/banners/UnityBannerSize;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerView;->size:Lcom/unity3d/services/banners/UnityBannerSize;

    return-object v0
.end method

.method getViewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/unity3d/services/banners/BannerView;->viewId:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView;->bridgeLoad()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView;->registerInitializeListener()V

    goto :goto_0
.end method

.method loadWebPlayer(Lcom/unity3d/services/banners/UnityBannerSize;)V
    .locals 2
    .param p1, "unityBannerSize"    # Lcom/unity3d/services/banners/UnityBannerSize;

    .prologue
    .line 139
    move-object v0, p0

    .line 140
    .local v0, "self":Lcom/unity3d/services/banners/BannerView;
    new-instance v1, Lcom/unity3d/services/banners/BannerView$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/unity3d/services/banners/BannerView$2;-><init>(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/UnityBannerSize;)V

    invoke-static {v1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unity3d/services/banners/BannerView$IListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/unity3d/services/banners/BannerView;->listener:Lcom/unity3d/services/banners/BannerView$IListener;

    .line 56
    return-void
.end method
