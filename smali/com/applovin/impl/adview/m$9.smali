.class Lcom/applovin/impl/adview/m$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/m;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/m;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/m;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->v(Lcom/applovin/impl/adview/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->r(Lcom/applovin/impl/adview/m;)Lcom/applovin/impl/adview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/adview/m;->b(Lcom/applovin/impl/adview/m;J)J

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/adview/m;->c(Lcom/applovin/impl/adview/m;J)J

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/m;->b(Lcom/applovin/impl/adview/m;Z)Z

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->r(Lcom/applovin/impl/adview/m;)Lcom/applovin/impl/adview/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/h;->setVisibility(I)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    iget-object v0, v0, Lcom/applovin/impl/adview/m;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->cF:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->r(Lcom/applovin/impl/adview/m;)Lcom/applovin/impl/adview/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/h;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->t(Lcom/applovin/impl/adview/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->w(Lcom/applovin/impl/adview/m;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->w(Lcom/applovin/impl/adview/m;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->w(Lcom/applovin/impl/adview/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/m$9;->a:Lcom/applovin/impl/adview/m;

    iget-object v1, v1, Lcom/applovin/impl/adview/m;->logger:Lcom/applovin/impl/sdk/p;

    const-string v2, "InterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to show skip button: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method