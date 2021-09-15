.class public Lcom/applovin/impl/sdk/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/p;

.field private final c:Lcom/applovin/mediation/ads/MaxAdView;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/v;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    iput-object p1, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/b/b;)J
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "ViewabilityTracker"

    const-string v2, "Checking visibility..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v2}, Lcom/applovin/mediation/ads/MaxAdView;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v3, "ViewabilityTracker"

    const-string v4, "View is hidden"

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v2}, Lcom/applovin/mediation/ads/MaxAdView;->getAlpha()F

    move-result v2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/b;->p()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v3, "ViewabilityTracker"

    const-string v4, "View is transparent"

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v2}, Lcom/applovin/mediation/ads/MaxAdView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v3, "ViewabilityTracker"

    const-string v4, "View is animating"

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v2}, Lcom/applovin/mediation/ads/MaxAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v3, "ViewabilityTracker"

    const-string v4, "No parent view found"

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v2}, Lcom/applovin/mediation/ads/MaxAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v3}, Lcom/applovin/mediation/ads/MaxAdView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/b;->n()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v4, "ViewabilityTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View has width ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") below threshold"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v2}, Lcom/applovin/mediation/ads/MaxAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v3}, Lcom/applovin/mediation/ads/MaxAdView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/b;->o()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v4, "ViewabilityTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View has height ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") below threshold"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v2}, Lcom/applovin/mediation/ads/MaxAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v7, v7, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iget-object v4, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v4, v2}, Lcom/applovin/mediation/ads/MaxAdView;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    iget-object v8, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v8}, Lcom/applovin/mediation/ads/MaxAdView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v2, v2, v9

    iget-object v8, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v8}, Lcom/applovin/mediation/ads/MaxAdView;->getHeight()I

    move-result v8

    add-int/2addr v2, v8

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v5, "ViewabilityTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rect ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") outside of screen\'s bounds ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->Z()Lcom/applovin/impl/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-static {v3, v2}, Lcom/applovin/impl/sdk/utils/q;->a(Landroid/view/View;Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v3, "ViewabilityTracker"

    const-string v4, "View is not in top activity\'s view hierarchy"

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/p;

    const-string v3, "ViewabilityTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
