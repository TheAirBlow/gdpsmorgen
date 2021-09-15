.class public abstract Lcom/applovin/impl/sdk/d/ae;
.super Lcom/applovin/impl/sdk/d/ab;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/d/ab;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/ae;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/ae;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/ae;->c(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/ae;->a(Lcom/applovin/impl/sdk/a/c;)V

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/a/c;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/h;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ae;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "params"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string v0, "result"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_1
    :try_start_3
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/a/c;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/applovin/impl/sdk/a/c;

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "network_timeout"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "Unable to parse API response"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/ae;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected abstract a(Lcom/applovin/impl/sdk/a/c;)V
.end method

.method protected abstract c()Z
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/ae;->i()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/ae$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/d/ae$1;-><init>(Lcom/applovin/impl/sdk/d/ae;)V

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/d/ae;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/network/a$c;)V

    return-void
.end method
