.class public Lcom/customRobTop/GameAdManager;
.super Ljava/lang/Object;
.source "GameAdManager.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/unity3d/ads/IUnityAdsListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameAdManager"


# instance fields
.field public _ALIdx:I

.field private _adView:Lcom/applovin/adview/AppLovinAdView;

.field _loadBannerQueued:Z

.field private _orbsToAward:I

.field private _useRewarded:Z

.field private adDialog_:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

.field private bannerEnabled_:Z

.field private bannerWasEnabled_:Z

.field public cAct_:Lcom/customRobTop/BaseRobTopActivity;

.field private cacheAppLovinCalled_:Z

.field private cacheAppLovinRewardedCalled_:Z

.field private cachedAd_:Lcom/applovin/sdk/AppLovinAd;

.field private cachedRewardedAd_:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

.field public me_:Lcom/customRobTop/GameAdManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->bannerEnabled_:Z

    .line 35
    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->bannerWasEnabled_:Z

    .line 39
    iput-object v1, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    .line 41
    iput-object v1, p0, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    .line 43
    iput-object v1, p0, Lcom/customRobTop/GameAdManager;->cachedAd_:Lcom/applovin/sdk/AppLovinAd;

    .line 45
    iput-object v1, p0, Lcom/customRobTop/GameAdManager;->cachedRewardedAd_:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 47
    iput-object v1, p0, Lcom/customRobTop/GameAdManager;->adDialog_:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 49
    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinCalled_:Z

    .line 50
    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinRewardedCalled_:Z

    .line 52
    iput v0, p0, Lcom/customRobTop/GameAdManager;->_orbsToAward:I

    .line 54
    iput v0, p0, Lcom/customRobTop/GameAdManager;->_ALIdx:I

    .line 56
    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->_useRewarded:Z

    .line 58
    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->_loadBannerQueued:Z

    .line 60
    iput-object v1, p0, Lcom/customRobTop/GameAdManager;->_adView:Lcom/applovin/adview/AppLovinAdView;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/customRobTop/GameAdManager;Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/customRobTop/GameAdManager;->bannerEnabled_:Z

    return-void
.end method

.method static synthetic access$1(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinAdView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->_adView:Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/customRobTop/GameAdManager;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinRewardedCalled_:Z

    return-void
.end method

.method static synthetic access$3(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cachedRewardedAd_:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    return-object v0
.end method

.method static synthetic access$4(Lcom/customRobTop/GameAdManager;Lcom/applovin/adview/AppLovinInterstitialAdDialog;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/customRobTop/GameAdManager;->adDialog_:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/customRobTop/GameAdManager;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->adDialog_:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/customRobTop/GameAdManager;)Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cachedAd_:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->adDialog_:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->adDialog_:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->dismiss()V

    .line 357
    :cond_0
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 305
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v1, :cond_1

    .line 313
    invoke-static {}, Lcom/customRobTop/JniToCpp;->videoAdHidden()V

    .line 314
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-virtual {v0}, Lcom/customRobTop/BaseRobTopActivity;->updateVisibilityMode()V

    .line 316
    invoke-static {}, Lcom/customRobTop/JniToCpp;->rewardedVideoAdHidden()V

    .line 318
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cachedRewardedAd_:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinRewardedCalled_:Z

    .line 320
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->cacheRewardedVideo()V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iput-object v2, p0, Lcom/customRobTop/GameAdManager;->adDialog_:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 325
    iput-object v2, p0, Lcom/customRobTop/GameAdManager;->cachedAd_:Lcom/applovin/sdk/AppLovinAd;

    goto :goto_0
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v1, :cond_0

    .line 334
    iput-boolean v2, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinRewardedCalled_:Z

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/customRobTop/GameAdManager;->cachedAd_:Lcom/applovin/sdk/AppLovinAd;

    .line 340
    iput-boolean v2, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinCalled_:Z

    goto :goto_0
.end method

.method public cacheAppLovinInterstitial()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedAppLovinInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinCalled_:Z

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinCalled_:Z

    .line 270
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/GameAdManager$6;

    invoke-direct {v1, p0}, Lcom/customRobTop/GameAdManager$6;-><init>(Lcom/customRobTop/GameAdManager;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cacheCBInterstitial()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public cacheInterstitial()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->cacheAppLovinInterstitial()V

    .line 202
    return-void
.end method

.method public cacheRewardedVideo()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/customRobTop/GameAdManager;->_useRewarded:Z

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cachedRewardedAd_:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedRewardedVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinRewardedCalled_:Z

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/GameAdManager$4;

    invoke-direct {v1, p0}, Lcom/customRobTop/GameAdManager$4;-><init>(Lcom/customRobTop/GameAdManager;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public createBanner()V
    .locals 6

    .prologue
    .line 107
    new-instance v3, Lcom/applovin/adview/AppLovinAdView;

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v5, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-direct {v3, v4, v5}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/customRobTop/GameAdManager;->_adView:Lcom/applovin/adview/AppLovinAdView;

    .line 109
    iget-object v3, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Lcom/customRobTop/BaseRobTopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 110
    .local v2, "rootView":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/customRobTop/GameAdManager;->_adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    iget-object v3, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    .line 113
    .local v1, "isTablet":Z
    iget-object v4, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    if-eqz v1, :cond_0

    const/16 v3, 0x5a

    :goto_0
    invoke-static {v4, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    .line 114
    .local v0, "heightPx":I
    iget-object v3, p0, Lcom/customRobTop/GameAdManager;->_adView:Lcom/applovin/adview/AppLovinAdView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v3, p0, Lcom/customRobTop/GameAdManager;->_adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v3}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    .line 119
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->disableBanner()V

    .line 120
    return-void

    .line 113
    .end local v0    # "heightPx":I
    :cond_0
    const/16 v3, 0x32

    goto :goto_0
.end method

.method public disableBanner()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/GameAdManager$3;

    invoke-direct {v1, p0}, Lcom/customRobTop/GameAdManager$3;-><init>(Lcom/customRobTop/GameAdManager;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public enableBanner()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/GameAdManager$1;

    invoke-direct {v1, p0}, Lcom/customRobTop/GameAdManager$1;-><init>(Lcom/customRobTop/GameAdManager;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public enableBannerNoRefresh()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/GameAdManager$2;

    invoke-direct {v1, p0}, Lcom/customRobTop/GameAdManager$2;-><init>(Lcom/customRobTop/GameAdManager;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinCalled_:Z

    .line 349
    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinRewardedCalled_:Z

    .line 350
    return-void
.end method

.method public hasCachedAppLovinInterstitial()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cachedAd_:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCachedCBInterstitial()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public hasCachedInterstitial()Z
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedAppLovinInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedCBInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedUnityInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasCachedRewardedVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 239
    iget-boolean v1, p0, Lcom/customRobTop/GameAdManager;->_useRewarded:Z

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/customRobTop/GameAdManager;->cachedRewardedAd_:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/customRobTop/GameAdManager;->cachedRewardedAd_:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasCachedUnityInterstitial()Z
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isReady()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 429
    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/unity3d/ads/UnityAds$FinishState;

    .prologue
    .line 435
    invoke-static {}, Lcom/customRobTop/JniToCpp;->videoAdHidden()V

    .line 436
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-virtual {v0}, Lcom/customRobTop/BaseRobTopActivity;->updateVisibilityMode()V

    .line 437
    return-void
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 444
    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-static {}, Lcom/customRobTop/JniToCpp;->videoAdShowed()V

    .line 451
    return-void
.end method

.method public pauseBanner()V
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/customRobTop/GameAdManager;->bannerEnabled_:Z

    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->bannerWasEnabled_:Z

    .line 184
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->disableBanner()V

    .line 185
    return-void
.end method

.method public queueRefreshBanner()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->_loadBannerQueued:Z

    .line 125
    return-void
.end method

.method public removeBanner()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/customRobTop/GameAdManager;->bannerWasEnabled_:Z

    .line 178
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->disableBanner()V

    .line 179
    return-void
.end method

.method public resumeBanner()V
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/customRobTop/GameAdManager;->bannerWasEnabled_:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->enableBanner()V

    .line 190
    :cond_0
    return-void
.end method

.method public setup(Lcom/customRobTop/BaseRobTopActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "act"    # Lcom/customRobTop/BaseRobTopActivity;
    .param p2, "adMobKey"    # Ljava/lang/String;
    .param p3, "cbAppId"    # Ljava/lang/String;
    .param p4, "cbAppSignature"    # Ljava/lang/String;
    .param p5, "unityID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 64
    iput-object p1, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    .line 65
    iput-object p0, p0, Lcom/customRobTop/GameAdManager;->me_:Lcom/customRobTop/GameAdManager;

    .line 67
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v0, p5, p0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 71
    iput v1, p0, Lcom/customRobTop/GameAdManager;->_ALIdx:I

    .line 75
    iget-boolean v0, p0, Lcom/customRobTop/GameAdManager;->_useRewarded:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/customRobTop/GameAdManager;->cachedRewardedAd_:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 77
    iput-boolean v1, p0, Lcom/customRobTop/GameAdManager;->cacheAppLovinRewardedCalled_:Z

    .line 78
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->cacheRewardedVideo()V

    .line 80
    :cond_0
    return-void
.end method

.method public showAppLovinInterstitial()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/GameAdManager$7;

    invoke-direct {v1, p0}, Lcom/customRobTop/GameAdManager$7;-><init>(Lcom/customRobTop/GameAdManager;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public showCBInterstitial()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/customRobTop/GameAdManager;->_ALIdx:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedUnityInterstitial()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->showUnityInterstitial()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedAppLovinInterstitial()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->showAppLovinInterstitial()V

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedUnityInterstitial()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->showUnityInterstitial()V

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedCBInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->showCBInterstitial()V

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/customRobTop/GameAdManager;->hasCachedRewardedVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/GameAdManager$5;

    invoke-direct {v1, p0}, Lcom/customRobTop/GameAdManager$5;-><init>(Lcom/customRobTop/GameAdManager;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showUnityInterstitial()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/GameAdManager$8;

    invoke-direct {v1, p0}, Lcom/customRobTop/GameAdManager$8;-><init>(Lcom/customRobTop/GameAdManager;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 458
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 0
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "arg1"    # Ljava/util/Map;

    .prologue
    .line 465
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 0
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "arg1"    # Ljava/util/Map;

    .prologue
    .line 472
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "arg1"    # Ljava/util/Map;

    .prologue
    .line 479
    const/16 v0, 0x64

    iput v0, p0, Lcom/customRobTop/GameAdManager;->_orbsToAward:I

    .line 480
    iget v0, p0, Lcom/customRobTop/GameAdManager;->_orbsToAward:I

    if-gtz v0, :cond_0

    const/16 v0, 0x32

    iput v0, p0, Lcom/customRobTop/GameAdManager;->_orbsToAward:I

    .line 482
    :cond_0
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 0
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "arg1"    # I

    .prologue
    .line 489
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 388
    invoke-static {}, Lcom/customRobTop/JniToCpp;->videoAdShowed()V

    .line 389
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .prologue
    .line 394
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v1, :cond_1

    .line 395
    if-eqz p4, :cond_0

    .line 396
    iget v0, p0, Lcom/customRobTop/GameAdManager;->_orbsToAward:I

    invoke-static {v0}, Lcom/customRobTop/JniToCpp;->rewardedVideoAdFinished(I)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-static {}, Lcom/customRobTop/JniToCpp;->videoAdHidden()V

    .line 401
    iget-object v0, p0, Lcom/customRobTop/GameAdManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-virtual {v0}, Lcom/customRobTop/BaseRobTopActivity;->updateVisibilityMode()V

    goto :goto_0
.end method
