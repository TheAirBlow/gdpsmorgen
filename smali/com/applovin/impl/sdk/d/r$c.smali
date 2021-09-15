.class Lcom/applovin/impl/sdk/d/r$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/d/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/r;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/d/a;

.field private final d:Lcom/applovin/impl/sdk/d/r$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/r;Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    iput-object p3, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/r$c;)Lcom/applovin/impl/sdk/d/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d/r$c;)Lcom/applovin/impl/sdk/d/r$a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/r;->b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->b:Ljava/lang/String;

    const-string v4, "Task started execution..."

    invoke-virtual {v0, v1, v4}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/a;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v4}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/c/j;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/d/a;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;J)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v4}, Lcom/applovin/impl/sdk/d/r;->b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/r$c;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task executed successfully in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;Lcom/applovin/impl/sdk/d/r$a;)J

    move-result-wide v0

    sub-long/2addr v0, v8

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/r;->b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "TaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " queue finished task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with queue size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/r;->b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->b:Ljava/lang/String;

    const-string v4, "Task re-scheduled..."

    invoke-virtual {v0, v1, v4}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/c/j;

    move-result-object v1

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/d/a;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;ZJ)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/r;->b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task failed execution in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;Lcom/applovin/impl/sdk/d/r$a;)J

    move-result-wide v0

    sub-long/2addr v0, v8

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/r;->b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "TaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " queue finished task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with queue size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;Lcom/applovin/impl/sdk/d/r$a;)J

    move-result-wide v2

    sub-long/2addr v2, v8

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$c;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/r;->b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    const-string v4, "TaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/r$c;->d:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " queue finished task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/r$c;->c:Lcom/applovin/impl/sdk/d/a;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/d/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with queue size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
