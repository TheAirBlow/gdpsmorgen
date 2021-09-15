.class public final Lcom/applovin/impl/adview/q;
.super Lcom/applovin/impl/adview/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final d:Landroid/graphics/Paint;

.field private static final e:Landroid/graphics/Paint;


# instance fields
.field private c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/adview/q;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/adview/q;->e:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/j;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/h;-><init>(Lcom/applovin/impl/sdk/j;Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/impl/adview/q;->c:F

    sget-object v0, Lcom/applovin/impl/adview/q;->d:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v0, Lcom/applovin/impl/adview/q;->e:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/applovin/impl/adview/q;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/q;->setViewScale(F)V

    return-void
.end method

.method protected getCenter()F
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/q;->getSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getCrossOffset()F
    .locals 2

    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/applovin/impl/adview/q;->c:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getInnerCircleOffset()F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/applovin/impl/adview/q;->c:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getInnerCircleRadius()F
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/q;->getCenter()F

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/q;->getInnerCircleOffset()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getSize()F
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/applovin/impl/adview/q;->c:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getStrokeWidth()F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/applovin/impl/adview/q;->c:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getStyle()Lcom/applovin/impl/adview/h$a;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/h$a;->b:Lcom/applovin/impl/adview/h$a;

    return-object v0
.end method

.method public getViewScale()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/q;->c:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/h;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/q;->getCenter()F

    move-result v0

    sget-object v1, Lcom/applovin/impl/adview/q;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/q;->getCrossOffset()F

    move-result v1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/q;->getSize()F

    move-result v0

    sub-float v3, v0, v1

    sget-object v0, Lcom/applovin/impl/adview/q;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/q;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Lcom/applovin/impl/adview/q;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-object v5, Lcom/applovin/impl/adview/q;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setViewScale(F)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/adview/q;->c:F

    return-void
.end method
