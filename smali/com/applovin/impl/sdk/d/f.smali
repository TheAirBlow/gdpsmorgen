.class abstract Lcom/applovin/impl/sdk/d/f;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field protected final a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            "Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/f;->a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            "Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Native ads cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    iput-object p4, p0, Lcom/applovin/impl/sdk/d/f;->a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/nativeAds/AppLovinNativeAd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/applovin/impl/sdk/n;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/n;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Asked to cache file with null/empty URL, nothing to do."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)V

    move-object v0, v8

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p3}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Domain is not whitelisted, skipping precache for URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/f;->g()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p2

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/impl/sdk/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to cache icon resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to cache icon resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_0
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;)V
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;I)V
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;Lcom/applovin/impl/sdk/n;)Z
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    const-string v2, "Beginning resource caching phase..."

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/applovin/impl/sdk/d/f;->a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;Lcom/applovin/impl/sdk/n;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/applovin/impl/sdk/d/f;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/applovin/impl/sdk/d/f;->e:I

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;)V

    goto :goto_0

    :cond_0
    const-string v0, "Unable to cache resources"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/f;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/applovin/impl/sdk/d/f;->e:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->dq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Mismatch between successful populations and requested size"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/f;->d(Ljava/lang/String;)V

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/f;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Encountered exception while notifying publisher code"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
