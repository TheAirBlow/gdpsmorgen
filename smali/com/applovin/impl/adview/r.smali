.class public Lcom/applovin/impl/adview/r;
.super Lcom/applovin/impl/adview/m;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/m;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/r;->a:Ljava/util/Set;

    return-void
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->isFullyWatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->logger:Lcom/applovin/impl/sdk/p;

    const-string v1, "InterstitialActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/r;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " un-fired video progress trackers when video was completed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->a:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/r;->a(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$c;)V
    .locals 1

    sget-object v0, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$c;Lcom/applovin/impl/a/d;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;Lcom/applovin/impl/a/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->isVastAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->currentAd:Lcom/applovin/impl/sdk/ad/f;

    check-cast v0, Lcom/applovin/impl/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/adview/r;->a(Ljava/util/Set;Lcom/applovin/impl/a/d;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/r;->a(Ljava/util/Set;Lcom/applovin/impl/a/d;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/applovin/impl/a/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;",
            "Lcom/applovin/impl/a/d;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->isVastAd()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/adview/r;->videoView:Lcom/applovin/impl/adview/t;

    invoke-interface {v1}, Lcom/applovin/impl/adview/t;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/applovin/impl/adview/r;->b()Lcom/applovin/impl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->i()Lcom/applovin/impl/a/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/a/k;->a()Landroid/net/Uri;

    move-result-object v4

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/adview/r;->logger:Lcom/applovin/impl/sdk/p;

    const-string v1, "InterstitialActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Firing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tracker(s): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/applovin/impl/adview/r;->sdk:Lcom/applovin/impl/sdk/j;

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/applovin/impl/a/i;->a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/a/d;Lcom/applovin/impl/sdk/j;)V

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private b()Lcom/applovin/impl/a/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->currentAd:Lcom/applovin/impl/sdk/ad/f;

    instance-of v0, v0, Lcom/applovin/impl/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->currentAd:Lcom/applovin/impl/sdk/ad/f;

    check-cast v0, Lcom/applovin/impl/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clickThroughFromVideo(Landroid/graphics/PointF;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/m;->clickThroughFromVideo(Landroid/graphics/PointF;)V

    sget-object v0, Lcom/applovin/impl/a/a$c;->b:Lcom/applovin/impl/a/a$c;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->isVastAd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/applovin/impl/adview/m;->dismiss()V

    return-void
.end method

.method public handleCountdownStep()V
    .locals 6

    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->isVastAd()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/adview/r;->videoView:Lcom/applovin/impl/adview/t;

    invoke-interface {v1}, Lcom/applovin/impl/adview/t;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/adview/r;->videoView:Lcom/applovin/impl/adview/t;

    invoke-interface {v2}, Lcom/applovin/impl/adview/t;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iget v2, p0, Lcom/applovin/impl/adview/r;->computedLengthSeconds:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/applovin/impl/adview/r;->a:Ljava/util/Set;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/a/g;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->getVideoPercentViewed()I

    move-result v5

    invoke-virtual {v0, v2, v3, v5}, Lcom/applovin/impl/a/g;->a(JI)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/applovin/impl/adview/r;->a:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/applovin/impl/adview/r;->a(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method public handleMediaError(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/applovin/impl/a/a$c;->f:Lcom/applovin/impl/a/a$c;

    sget-object v1, Lcom/applovin/impl/a/d;->j:Lcom/applovin/impl/a/d;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Lcom/applovin/impl/a/d;)V

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/m;->handleMediaError(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/m;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->isVastAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/adview/r;->b()Lcom/applovin/impl/a/a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    sget-object v2, Lcom/applovin/impl/a/h;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/r;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/applovin/impl/a/a$c;->a:Lcom/applovin/impl/a/a$c;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;)V

    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    const-string v1, "creativeView"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/applovin/impl/adview/m;->onPause()V

    iget-boolean v0, p0, Lcom/applovin/impl/adview/r;->postitialWasDisplayed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    :goto_0
    const-string v1, "pause"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/applovin/impl/adview/m;->onResume()V

    iget-boolean v0, p0, Lcom/applovin/impl/adview/r;->postitialWasDisplayed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    :goto_0
    const-string v1, "resume"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    goto :goto_0
.end method

.method public playVideo()V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/adview/r;->countdownManager:Lcom/applovin/impl/adview/i;

    const-string v2, "PROGRESS_TRACKING"

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->eK:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v0, Lcom/applovin/impl/adview/r$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/r$1;-><init>(Lcom/applovin/impl/adview/r;)V

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/applovin/impl/adview/i;->a(Ljava/lang/String;JLcom/applovin/impl/adview/i$a;)V

    invoke-super {p0}, Lcom/applovin/impl/adview/m;->playVideo()V

    return-void
.end method

.method public showPostitial()V
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->isVastAd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/applovin/impl/adview/r;->a()V

    invoke-direct {p0}, Lcom/applovin/impl/adview/r;->b()Lcom/applovin/impl/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/a/i;->c(Lcom/applovin/impl/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/r;->postitialWasDisplayed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    const-string v1, "creativeView"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/applovin/impl/adview/m;->showPostitial()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/adview/r;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/applovin/impl/adview/m;->showPostitial()V

    goto :goto_0
.end method

.method public skipVideo()V
    .locals 2

    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    const-string v1, "skip"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/applovin/impl/adview/m;->skipVideo()V

    return-void
.end method

.method public toggleMute()V
    .locals 2

    invoke-super {p0}, Lcom/applovin/impl/adview/m;->toggleMute()V

    sget-object v1, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    iget-boolean v0, p0, Lcom/applovin/impl/adview/r;->videoMuted:Z

    if-eqz v0, :cond_0

    const-string v0, "mute"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "unmute"

    goto :goto_0
.end method
