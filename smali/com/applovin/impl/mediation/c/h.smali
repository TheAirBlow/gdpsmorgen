.class public Lcom/applovin/impl/mediation/c/h;
.super Lcom/applovin/impl/sdk/d/ae;


# instance fields
.field private final a:Lcom/applovin/impl/mediation/b/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/b/c;Lcom/applovin/impl/sdk/j;)V
    .locals 1

    const-string v0, "TaskValidateMaxReward"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/d/ae;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/b/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->K:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method protected a(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/d/ae;->a(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const-string v0, "rejected"

    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/c;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/b/c;->a(Lcom/applovin/impl/sdk/a/c;)V

    return-void

    :cond_0
    const-string v0, "network_timeout"

    goto :goto_0
.end method

.method protected a(Lcom/applovin/impl/sdk/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/b/c;->a(Lcom/applovin/impl/sdk/a/c;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "ad_unit_id"

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/b/c;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/h;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    const-string v0, "placement"

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/b/c;->N()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/h;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/b/c;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcode"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/mediation/c/h;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/b/c;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bcode"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/applovin/impl/mediation/c/h;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void

    :cond_0
    const-string v0, "NO_MCODE"

    goto :goto_0

    :cond_1
    const-string v0, "NO_BCODE"

    goto :goto_1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0/mvr"

    return-object v0
.end method

.method protected c()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/b/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/b/c;->t()Z

    move-result v0

    return v0
.end method
