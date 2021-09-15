.class Lcom/applovin/impl/adview/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static synthetic a(Landroid/content/res/Resources;F)F
    .locals 1

    invoke-static {p0, p1}, Lcom/applovin/impl/adview/f$a;->d(Landroid/content/res/Resources;F)F

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/res/Resources;F)F
    .locals 1

    invoke-static {p0, p1}, Lcom/applovin/impl/adview/f$a;->c(Landroid/content/res/Resources;F)F

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/res/Resources;F)F
    .locals 2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method

.method private static d(Landroid/content/res/Resources;F)F
    .locals 1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p1

    return v0
.end method
