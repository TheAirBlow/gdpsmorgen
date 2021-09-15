.class public Lcom/applovin/impl/sdk/utils/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private b:Ljava/util/Timer;

.field private c:J

.field private d:J

.field private final e:Ljava/lang/Runnable;

.field private f:J

.field private final g:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/j;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/o;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/o;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a scheduled timer. Invalid fire time passed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a scheduled timer. Runnable is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/applovin/impl/sdk/utils/o;

    invoke-direct {v1, p2, p3}, Lcom/applovin/impl/sdk/utils/o;-><init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/applovin/impl/sdk/utils/o;->c:J

    iput-wide p0, v1, Lcom/applovin/impl/sdk/utils/o;->d:J

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v1, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    iget-object v0, v1, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/utils/o;->e()Ljava/util/TimerTask;

    move-result-object v2

    invoke-virtual {v0, v2, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Failed to create timer due to OOM error"

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/o;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/o;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/utils/o;)Lcom/applovin/impl/sdk/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/utils/o;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private e()Ljava/util/TimerTask;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/utils/o$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/o$1;-><init>(Lcom/applovin/impl/sdk/utils/o;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->d:J

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/applovin/impl/sdk/utils/o;->d:J

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public b()V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/o;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/impl/sdk/utils/o;->c:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/j;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Encountered error while pausing timer"

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public c()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/o;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    :try_start_1
    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->d:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/utils/o;->f:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->d:J

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->d:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->d:J

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/o;->e()Ljava/util/TimerTask;

    move-result-object v2

    iget-wide v4, p0, Lcom/applovin/impl/sdk/utils/o;->d:J

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->c:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0x0

    :try_start_2
    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Encountered error while resuming timer"

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    const-wide/16 v2, 0x0

    :try_start_4
    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public d()V
    .locals 5

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/o;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/j;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Encountered error while cancelling timer"

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/o;->f:J

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
