.class public Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->createIncentivizedAdController(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/sdk/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/a/a;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    new-instance v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-direct {v0, p0, p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V

    return-object v0
.end method


# virtual methods
.method protected createIncentivizedAdController(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/sdk/a/a;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/a/a;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/sdk/a/a;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/a;->c()V

    return-void
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .locals 2

    const-string v0, "AppLovinIncentivizedInterstitial"

    const-string v1, "Please use AppLovinSdk.getUserIdentifier() instead to properly identify your users in our system. This property is now deprecated and will be removed in a future SDK version."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/applovin/sdk/AppLovinSdk;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getUserIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReadyToDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "AppLovinIncentivizedInterstitial"

    const-string v1, "AppLovinAdLoadListener was null when preloading incentivized interstitials; using a listener is highly recommended."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/applovin/sdk/AppLovinSdk;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0, p1}, Lcom/applovin/sdk/AppLovinSdk;->setUserIdentifier(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "AppLovinIncentivizedInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please use AppLovinSdk.setUserIdentifier(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\") instead to properly identify your users in our system. This property is now deprecated and will be removed in a future SDK version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    return-void
.end method

.method public show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    return-void
.end method

.method public show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    return-void
.end method

.method public show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/a/a;

    const/4 v1, 0x0

    const-string v3, ""

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/sdk/AppLovinAd;Landroid/content/Context;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Lcom/applovin/sdk/AppLovinAd;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 8

    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/a/a;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/sdk/AppLovinAd;Landroid/content/Context;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinIncentivizedInterstitial{zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isAdReadyToDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
