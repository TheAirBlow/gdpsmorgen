.class public final Lcom/applovin/impl/adview/o;
.super Lcom/applovin/impl/adview/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private c:F


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/h;-><init>(Lcom/applovin/impl/sdk/j;Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/impl/adview/o;->c:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/o;->setViewScale(F)V

    return-void
.end method

.method public getStyle()Lcom/applovin/impl/adview/h$a;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/h$a;->c:Lcom/applovin/impl/adview/h$a;

    return-object v0
.end method

.method public getViewScale()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/o;->c:F

    return v0
.end method

.method public setViewScale(F)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/adview/o;->c:F

    return-void
.end method
