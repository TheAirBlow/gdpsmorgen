.class public Lcom/applovin/impl/sdk/d/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d/r$b;,
        Lcom/applovin/impl/sdk/d/r$c;,
        Lcom/applovin/impl/sdk/d/r$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/sdk/j;

.field private final c:Lcom/applovin/impl/sdk/p;

.field private final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final u:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final v:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final w:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/d/r$c;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/lang/Object;

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TaskManager"

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->x:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->y:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/r;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->c:Lcom/applovin/impl/sdk/p;

    const-string v0, "main"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "back"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "advertising_info_collection"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "postbacks"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "caching_interstitial"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "caching_incentivized"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "caching_other"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "reward"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_main"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_timeout"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_background"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_postbacks"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_banner"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_interstitial"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_incentivized"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_reward"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "auxiliary_operations"

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->cx:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->u:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "caching_operations"

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->cy:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->v:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "shared_thread_pool"

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->ak:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r;->w:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/d/r$a;)J
    .locals 4

    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->a:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->b:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->c:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->d:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->e:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->f:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->g:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->h:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->i:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->j:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->k:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->l:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->m:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->n:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->o:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->p:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->q:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto/16 :goto_0

    :cond_10
    const-wide/16 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/r;Lcom/applovin/impl/sdk/d/r$a;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->b:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/applovin/impl/sdk/d/r$b;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/d/r$b;-><init>(Lcom/applovin/impl/sdk/d/r;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->b:Lcom/applovin/impl/sdk/j;

    new-instance v1, Lcom/applovin/impl/sdk/d/r$1;

    invoke-direct {v1, p0, p4, p1}, Lcom/applovin/impl/sdk/d/r$1;-><init>(Lcom/applovin/impl/sdk/d/r;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-static {p2, p3, v0, v1}, Lcom/applovin/impl/sdk/utils/d;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/d;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p4, p1, p2, p3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    invoke-interface {p4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private a(Lcom/applovin/impl/sdk/d/r$c;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/r$c;->a(Lcom/applovin/impl/sdk/d/r$c;)Lcom/applovin/impl/sdk/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/d/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/d/r;->z:Z

    if-eqz v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->c:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/d/a;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->c:Lcom/applovin/impl/sdk/p;

    const-string v1, "TaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " immediately..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/c/j;

    move-result-object v4

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;J)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->c:Lcom/applovin/impl/sdk/p;

    const-string v1, "TaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " finished executing..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Task failed execution"

    invoke-virtual {v1, v4, v5, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/c/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;ZJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->c:Lcom/applovin/impl/sdk/p;

    const-string v1, "TaskManager"

    const-string v2, "Attempted to execute null task immediately"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;J)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;J)V
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;JZ)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;JZ)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No task specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid delay specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/applovin/impl/sdk/d/r$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/sdk/d/r$c;-><init>(Lcom/applovin/impl/sdk/d/r;Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r$c;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->al:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->w:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r$a;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->c:Lcom/applovin/impl/sdk/p;

    const-string v4, "TaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " queue in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms with new queue size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->a:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_4

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->b:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_5

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->c:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_6

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->d:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_7

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->e:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_8

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->f:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_9

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->g:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_a

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->h:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_b

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->i:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_c

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->j:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_d

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->k:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_e

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->l:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_f

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->m:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_10

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->n:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_11

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->o:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_12

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->p:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_13

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->q:Lcom/applovin/impl/sdk/d/r$a;

    if-ne p2, v0, :cond_2

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " execution delayed until after init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/d/r;->z:Z

    return v0
.end method

.method public b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->u:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->v:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->y:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/d/r;->z:Z

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
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->y:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/d/r;->z:Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/d/r$c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/r$c;->a(Lcom/applovin/impl/sdk/d/r$c;)Lcom/applovin/impl/sdk/d/a;

    move-result-object v3

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/r$c;->b(Lcom/applovin/impl/sdk/d/r$c;)Lcom/applovin/impl/sdk/d/r$a;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
