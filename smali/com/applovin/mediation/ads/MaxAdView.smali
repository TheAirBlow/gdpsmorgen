.class public Lcom/applovin/mediation/ads/MaxAdView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

.field private b:Landroid/view/View;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/mediation/ads/MaxAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "http://schemas.applovin.com/android/1.0"

    const-string v1, "adUnitId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "gravity"

    const/16 v3, 0x31

    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad unit ID specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty ad unit ID specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max ad view context is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/applovin/mediation/ads/MaxAdView;->a(Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x31

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/applovin/mediation/ads/MaxAdView;->a(Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0xdc

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "AppLovin MAX Ad"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v2, v1, v0}, Lcom/applovin/mediation/ads/MaxAdView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/applovin/mediation/ads/MaxAdView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/ads/MaxAdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/applovin/mediation/ads/MaxAdView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->c:I

    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/q;->a(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/sdk/j;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;-><init>(Ljava/lang/String;Lcom/applovin/mediation/ads/MaxAdView;Landroid/view/View;Lcom/applovin/impl/sdk/j;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {p0, p2}, Lcom/applovin/mediation/ads/MaxAdView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/applovin/mediation/ads/MaxAdView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/mediation/ads/MaxAdView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/ads/MaxAdView;->setBackgroundColor(I)V

    :cond_0
    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p4}, Lcom/applovin/mediation/ads/MaxAdView;->a(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->destroy()V

    return-void
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->getPlacement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAd()V
    .locals 1

    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->c:I

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/r;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->onWindowVisibilityChanged(I)V

    :cond_0
    iput p1, p0, Lcom/applovin/mediation/ads/MaxAdView;->c:I

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->setPublisherBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/applovin/mediation/MaxAdViewAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->setListener(Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->setPlacement(Ljava/lang/String;)V

    return-void
.end method

.method public startAutoRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->startAutoRefresh()V

    return-void
.end method

.method public stopAutoRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->stopAutoRefresh()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/mediation/ads/MaxAdView;->a:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MaxAdView"

    goto :goto_0
.end method
