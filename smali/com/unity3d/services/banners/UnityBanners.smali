.class public final Lcom/unity3d/services/banners/UnityBanners;
.super Ljava/lang/Object;
.source "UnityBanners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;,
        Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;
    }
.end annotation


# static fields
.field private static instance:Lcom/unity3d/services/banners/UnityBanners;


# instance fields
.field private _bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

.field private _currentBannerPosition:Lcom/unity3d/services/banners/view/BannerPosition;

.field private _currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/unity3d/services/banners/view/BannerPosition;->NONE:Lcom/unity3d/services/banners/view/BannerPosition;

    iput-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerPosition:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 89
    return-void
.end method

.method private _destroy()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;->destroy()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerWrapper:Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;

    .line 131
    :cond_0
    return-void
.end method

.method private _loadBanner(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "placementId"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void

    nop

    nop

    nop

    .line 93
    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    .line 94
    .local v0, "bannerAdRefreshView":Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;
    nop

    nop

    nop

    nop

    nop

    .line 95
    .local v1, "bannerWrapper":Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;
    nop

    nop

    nop

    nop

    nop

    .line 96
    nop

    nop

    .line 97
    nop

    .line 98
    .local v2, "self":Lcom/unity3d/services/banners/UnityBanners;
    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    .line 120
    nop

    nop

    nop

    .line 124
    .end local v0    # "bannerAdRefreshView":Lcom/unity3d/services/banners/UnityBanners$BannerAdRefreshView;
    .end local v1    # "bannerWrapper":Lcom/unity3d/services/banners/UnityBanners$BannerWrapper;
    .end local v2    # "self":Lcom/unity3d/services/banners/UnityBanners;
    nop

    .line 122
    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$000(Lcom/unity3d/services/banners/UnityBanners;)Lcom/unity3d/services/banners/IUnityBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/banners/UnityBanners;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->_bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-object v0
.end method

.method public static destroy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    invoke-direct {v0}, Lcom/unity3d/services/banners/UnityBanners;->_destroy()V

    .line 175
    return-void
.end method

.method public static getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/banners/UnityBanners;->_bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-object v0
.end method

.method private static getInstance()Lcom/unity3d/services/banners/UnityBanners;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/unity3d/services/banners/UnityBanners;->instance:Lcom/unity3d/services/banners/UnityBanners;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/unity3d/services/banners/UnityBanners;

    invoke-direct {v0}, Lcom/unity3d/services/banners/UnityBanners;-><init>()V

    sput-object v0, Lcom/unity3d/services/banners/UnityBanners;->instance:Lcom/unity3d/services/banners/UnityBanners;

    .line 37
    :cond_0
    sget-object v0, Lcom/unity3d/services/banners/UnityBanners;->instance:Lcom/unity3d/services/banners/UnityBanners;

    return-object v0
.end method

.method public static loadBanner(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    .line 151
    nop
.end method

.method public static loadBanner(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placementId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-void

    nop

    nop

    .line 156
    nop

    nop

    nop

    nop

    nop

    nop

    .line 157
    nop

    nop

    nop

    nop

    nop

    .line 159
    nop

    nop

    nop

    nop

    nop

    nop

    .line 160
    nop

    nop

    nop

    nop

    nop

    .line 170
    nop

    .line 163
    nop

    nop

    nop

    nop

    nop

    nop

    .line 164
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

    .line 168
    nop

    nop

    nop

    .line 169
    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static sendError(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Lcom/unity3d/services/banners/UnityBanners$2;

    invoke-direct {v0, p0}, Lcom/unity3d/services/banners/UnityBanners$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public static setBannerListener(Lcom/unity3d/services/banners/IUnityBannerListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/unity3d/services/banners/IUnityBannerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iput-object p0, v0, Lcom/unity3d/services/banners/UnityBanners;->_bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

    .line 185
    return-void
.end method

.method public static setBannerPosition(Lcom/unity3d/services/banners/view/BannerPosition;)V
    .locals 1
    .param p0, "position"    # Lcom/unity3d/services/banners/view/BannerPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getInstance()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iput-object p0, v0, Lcom/unity3d/services/banners/UnityBanners;->_currentBannerPosition:Lcom/unity3d/services/banners/view/BannerPosition;

    .line 200
    return-void
.end method
