.class Lcom/applovin/impl/sdk/d/m$1;
.super Lcom/applovin/impl/sdk/d/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/d/x",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/m;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/m;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/m$1;->a:Lcom/applovin/impl/sdk/d/m;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/d/x;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m$1;->a:Lcom/applovin/impl/sdk/d/m;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/d/m;->a(Lcom/applovin/impl/sdk/d/m;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/d/m$1;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 4

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    const-string v0, "ad_fetch_latency_millis"

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m$1;->d:Lcom/applovin/impl/sdk/network/a$a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a$a;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)V

    const-string v0, "ad_fetch_response_size"

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m$1;->d:Lcom/applovin/impl/sdk/network/a$a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a$a;->b()J

    move-result-wide v2

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m$1;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m$1;->a:Lcom/applovin/impl/sdk/d/m;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/d/m;->a(Lcom/applovin/impl/sdk/d/m;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m$1;->a:Lcom/applovin/impl/sdk/d/m;

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/d/m;->a(Lcom/applovin/impl/sdk/d/m;I)V

    goto :goto_0
.end method
