.class final Lcom/applovin/impl/sdk/d/t$b;
.super Lcom/applovin/impl/sdk/d/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/d/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/d/t;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/a/c;->c()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/t$b;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->s:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method public run()V
    .locals 4

    const-string v0, "Processing SDK JSON response..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/t$b;->a:Lorg/json/JSONObject;

    const-string v1, "xml"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/t$b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/t$b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->eI:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/t$b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t$b;->a(Lcom/applovin/impl/sdk/utils/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse VAST response"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/t$b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/applovin/impl/a/d;->b:Lcom/applovin/impl/a/d;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t$b;->a(Lcom/applovin/impl/a/d;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/t$b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/c/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/t$b;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;)V

    goto :goto_0

    :cond_0
    const-string v0, "VAST response is over max length"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t$b;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/d;->b:Lcom/applovin/impl/a/d;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t$b;->a(Lcom/applovin/impl/a/d;)V

    goto :goto_0

    :cond_1
    const-string v0, "No VAST response received."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t$b;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/d;->f:Lcom/applovin/impl/a/d;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t$b;->a(Lcom/applovin/impl/a/d;)V

    goto :goto_0
.end method
