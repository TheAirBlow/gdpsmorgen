.class Lcom/applovin/impl/sdk/utils/o$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/utils/o;->e()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/utils/o;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/utils/o;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->a(Lcom/applovin/impl/sdk/utils/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->c(Lcom/applovin/impl/sdk/utils/o;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/utils/o;->a(Lcom/applovin/impl/sdk/utils/o;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Lcom/applovin/impl/sdk/utils/o;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Lcom/applovin/impl/sdk/utils/o;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    const-string v2, "Timer"

    const-string v3, "Encountered error while executing timed task"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->c(Lcom/applovin/impl/sdk/utils/o;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/utils/o;->a(Lcom/applovin/impl/sdk/utils/o;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->c(Lcom/applovin/impl/sdk/utils/o;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/o$1;->a:Lcom/applovin/impl/sdk/utils/o;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/utils/o;->a(Lcom/applovin/impl/sdk/utils/o;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
