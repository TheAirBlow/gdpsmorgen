.class public Lcom/applovin/impl/sdk/q;
.super Lcom/applovin/impl/sdk/r;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/r;-><init>(Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method a(Lcom/applovin/impl/sdk/ad/j;)Lcom/applovin/impl/sdk/ad/d;
    .locals 1

    check-cast p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/d/a;
    .locals 4

    new-instance v0, Lcom/applovin/impl/sdk/d/n;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/applovin/impl/sdk/q;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/applovin/impl/sdk/d/n;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/q;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->h(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/q;->h(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/d;I)V
    .locals 0

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/d;I)V
    .locals 0

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, p3}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/j;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/nativeAds/AppLovinNativeAd;

    const/4 v1, 0x0

    check-cast p2, Lcom/applovin/nativeAds/AppLovinNativeAd;

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, v0}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/r;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)Z

    move-result v0

    return v0
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/ad/d;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/r;->b(Lcom/applovin/impl/sdk/ad/d;I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/ad/d;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->b(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->c(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(Lcom/applovin/impl/sdk/ad/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->f(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic g(Lcom/applovin/impl/sdk/ad/d;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->g(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic h(Lcom/applovin/impl/sdk/ad/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->h(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public bridge synthetic i(Lcom/applovin/impl/sdk/ad/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/r;->i(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public onNativeAdsFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/q;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->h(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/q;->c(Lcom/applovin/impl/sdk/ad/d;I)V

    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/nativeAds/AppLovinNativeAd;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/nativeAds/AppLovinNativeAd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/q;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->bJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/q;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/q$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/q$1;-><init>(Lcom/applovin/impl/sdk/q;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/NativeAdServiceImpl;->precacheResources(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/applovin/impl/sdk/ad/j;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/q;->b(Lcom/applovin/impl/sdk/ad/j;)V

    goto :goto_0
.end method
