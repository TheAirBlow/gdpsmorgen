.class public Lcom/applovin/impl/sdk/utils/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILandroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method
