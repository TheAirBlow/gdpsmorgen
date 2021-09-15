.class public Lcom/applovin/impl/sdk/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->i:Lcom/applovin/impl/sdk/b/e;

    invoke-static {v0, p0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b/e;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/applovin/impl/sdk/b/e;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private static a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Boolean;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p2}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b/e;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/Context;)V

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ZLandroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->i:Lcom/applovin/impl/sdk/b/e;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->j:Lcom/applovin/impl/sdk/b/e;

    invoke-static {v0, p0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b/e;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static b(ZLandroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->j:Lcom/applovin/impl/sdk/b/e;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
