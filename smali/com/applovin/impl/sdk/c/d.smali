.class public Lcom/applovin/impl/sdk/c/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/c/h;

.field private final c:Lcom/applovin/impl/sdk/c/c$b;

.field private final d:Ljava/lang/Object;

.field private final e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/j;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/d;->d:Ljava/lang/Object;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/applovin/impl/sdk/c/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/d;->b:Lcom/applovin/impl/sdk/c/h;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->a:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSource()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->ordinal()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getCreatedAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/c/d;->e:J

    return-void
.end method

.method public static a(JLcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/j;)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->b:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1, p0, p1}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/j;)V
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->c:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getFetchLatencyMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->d:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getFetchResponseSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/c/b;)V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    invoke-virtual {v0, p1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/applovin/impl/sdk/c/e;Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/j;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->e:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c/e;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->f:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c/e;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->v:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c/e;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->w:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c/e;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->z:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/applovin/impl/sdk/c/d;->b:Lcom/applovin/impl/sdk/c/h;

    sget-object v5, Lcom/applovin/impl/sdk/c/g;->b:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/applovin/impl/sdk/c/d;->b:Lcom/applovin/impl/sdk/c/h;

    sget-object v7, Lcom/applovin/impl/sdk/c/g;->d:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v9, Lcom/applovin/impl/sdk/c/b;->j:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v8, v9, v4, v5}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v4

    sget-object v5, Lcom/applovin/impl/sdk/c/b;->i:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v4, v5, v6, v7}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    iget-object v6, p0, Lcom/applovin/impl/sdk/c/d;->d:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-wide v4, p0, Lcom/applovin/impl/sdk/c/d;->e:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    iget-object v7, p0, Lcom/applovin/impl/sdk/c/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/j;->F()J

    move-result-wide v8

    sub-long v8, v4, v8

    iget-wide v4, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    iget-wide v10, p0, Lcom/applovin/impl/sdk/c/d;->e:J

    sub-long v10, v4, v10

    iget-object v4, p0, Lcom/applovin/impl/sdk/c/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/j;->C()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-wide v4, v0

    :goto_0
    iget-object v7, p0, Lcom/applovin/impl/sdk/c/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/j;->Z()Lcom/applovin/impl/sdk/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v7

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->h()Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->h:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3, v8, v9}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->g:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3, v10, v11}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->p:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3, v4, v5}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->A:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3, v0, v1}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    return-void

    :cond_1
    move-wide v4, v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->r:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    return-void
.end method

.method public b()V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->g:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->g:J

    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->g:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->m:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v4, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->q:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->k:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/c/d;->a(Lcom/applovin/impl/sdk/c/b;)V

    return-void
.end method

.method public c(J)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->s:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->n:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/c/d;->a(Lcom/applovin/impl/sdk/c/b;)V

    return-void
.end method

.method public d(J)V
    .locals 7

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->h:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/applovin/impl/sdk/c/d;->h:J

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->t:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2, p1, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->o:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/c/d;->a(Lcom/applovin/impl/sdk/c/b;)V

    return-void
.end method

.method public e(J)V
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/c/d;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/c/d;->j:Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->x:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2, p1, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->l:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/c/d;->a(Lcom/applovin/impl/sdk/c/b;)V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->u:Lcom/applovin/impl/sdk/c/b;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->B:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    return-void
.end method

.method public i()V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->i:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->i:J

    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/d;->i:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/c/d;->f:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/d;->c:Lcom/applovin/impl/sdk/c/c$b;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->y:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v4, v2, v3}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;J)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
