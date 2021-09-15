.class public Lcom/applovin/impl/mediation/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/c;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/e;->a:Z

    const-string v0, "cleartext_traffic"

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/applovin/impl/mediation/a/a/e;->b:Z

    const-string v3, "description"

    const-string v4, ""

    invoke-static {v0, v3, v4, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/applovin/impl/mediation/a/a/e;->d:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/applovin/impl/mediation/a/a/e;->c:Z

    :goto_0
    return-void

    :cond_0
    const-string v3, "domains"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3, v4, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/e;->c:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/a/a/e;->c:Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/a/a/e;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/a/e;->d:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/e;->c:Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/e;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/e;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/e;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/e;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "You must include an entry in your AndroidManifest.xml to point to your network_security_config.xml.\n\nFor more information, visit: https://developer.android.com/training/articles/security-config"

    goto :goto_0
.end method
