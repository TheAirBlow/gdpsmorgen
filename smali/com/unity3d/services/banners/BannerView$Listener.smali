.class public abstract Lcom/unity3d/services/banners/BannerView$Listener;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Lcom/unity3d/services/banners/BannerView$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/banners/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClick(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0
    .param p1, "bannerAdView"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 129
    return-void
.end method

.method public onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V
    .locals 0
    .param p1, "bannerAdView"    # Lcom/unity3d/services/banners/BannerView;
    .param p2, "errorInfo"    # Lcom/unity3d/services/banners/BannerErrorInfo;

    .prologue
    .line 125
    return-void
.end method

.method public onBannerLeftApplication(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0
    .param p1, "bannerAdView"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 133
    return-void
.end method

.method public onBannerLoaded(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0
    .param p1, "bannerAdView"    # Lcom/unity3d/services/banners/BannerView;

    .prologue
    .line 121
    return-void
.end method
