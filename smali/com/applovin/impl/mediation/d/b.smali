.class public Lcom/applovin/impl/mediation/d/b;
.super Lcom/applovin/impl/sdk/utils/h;


# direct methods
.method public static a(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->c:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .locals 2

    const-string v0, "signal_providers"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->v:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->d:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .locals 2

    const-string v0, "auto_init_adapters"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->w:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->c:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate_debug"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->d:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate_debug"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
