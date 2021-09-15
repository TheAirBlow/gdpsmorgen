.class Lcom/applovin/impl/adview/m$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/m;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/applovin/impl/adview/m;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/m;J)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/m$11;->b:Lcom/applovin/impl/adview/m;

    iput-wide p2, p0, Lcom/applovin/impl/adview/m$11;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/adview/m$11;->b:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->z(Lcom/applovin/impl/adview/m;)Lcom/applovin/impl/adview/f;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/applovin/impl/adview/m$11;->a:J

    iget-object v1, p0, Lcom/applovin/impl/adview/m$11;->b:Lcom/applovin/impl/adview/m;

    iget-object v1, v1, Lcom/applovin/impl/adview/m;->videoView:Lcom/applovin/impl/adview/t;

    invoke-interface {v1}, Lcom/applovin/impl/adview/t;->getCurrentPosition()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/m$11;->b:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->z(Lcom/applovin/impl/adview/m;)Lcom/applovin/impl/adview/f;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/f;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/m$11;->b:Lcom/applovin/impl/adview/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/m;->c(Lcom/applovin/impl/adview/m;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/adview/m$11;->b:Lcom/applovin/impl/adview/m;

    invoke-static {v2}, Lcom/applovin/impl/adview/m;->A(Lcom/applovin/impl/adview/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/adview/m$11;->b:Lcom/applovin/impl/adview/m;

    invoke-static {v2}, Lcom/applovin/impl/adview/m;->z(Lcom/applovin/impl/adview/m;)Lcom/applovin/impl/adview/f;

    move-result-object v2

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/applovin/impl/adview/f;->setProgress(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/m$11;->b:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->A(Lcom/applovin/impl/adview/m;)Z

    move-result v0

    return v0
.end method
