.class public Lcom/applovin/adview/AppLovinAdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "http://schemas.applovin.com/android/1.0"


# instance fields
.field private a:Lcom/applovin/adview/AdViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/adview/AppLovinAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/adview/AppLovinAdView;->a(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/adview/AppLovinAdView;->a(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/adview/AppLovinAdView;->a(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0xdc

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "AppLovin Ad"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v2, v1, v0}, Lcom/applovin/adview/AppLovinAdView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinAdView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;-><init>()V

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/applovin/adview/AdViewController;->initializeAdView(Lcom/applovin/adview/AppLovinAdView;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p5, p4}, Lcom/applovin/adview/AppLovinAdView;->a(Landroid/util/AttributeSet;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0}, Lcom/applovin/adview/AdViewController;->destroy()V

    :cond_0
    return-void
.end method

.method public getAdViewController()Lcom/applovin/adview/AdViewController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    return-object v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0}, Lcom/applovin/adview/AdViewController;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0}, Lcom/applovin/adview/AdViewController;->getZoneId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdReadyToDisplay()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0}, Lcom/applovin/adview/AdViewController;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadNextAd()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0}, Lcom/applovin/adview/AdViewController;->loadNextAd()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0}, Lcom/applovin/adview/AdViewController;->onDetachedFromWindow()V

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0, p2}, Lcom/applovin/adview/AdViewController;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0}, Lcom/applovin/adview/AdViewController;->pause()V

    :cond_0
    return-void
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0, p1, p2}, Lcom/applovin/adview/AdViewController;->renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0}, Lcom/applovin/adview/AdViewController;->resume()V

    :cond_0
    return-void
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AdViewController;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    :cond_0
    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AdViewController;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    :cond_0
    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AdViewController;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :cond_0
    return-void
.end method

.method public setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AdViewController;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    :cond_0
    return-void
.end method

.method public setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AdViewController;->setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V

    :cond_0
    return-void
.end method

.method public setAutoDestroy(Z)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinAdView;->a:Lcom/applovin/adview/AdViewController;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AdViewController;->setAutoDestroy(Z)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAdView{zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinAdView;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinAdView;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
