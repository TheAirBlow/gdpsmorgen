.class Lcom/applovin/impl/sdk/s;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/applovin/impl/sdk/ad/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/s;->a(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/s;->b:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/s;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(I)V
    .locals 1

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/applovin/impl/sdk/s;->a:I

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method a(Lcom/applovin/impl/sdk/ad/j;)V
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/s;->a()I

    move-result v0

    const/16 v2, 0x19

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

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

.method b()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/s;->a:I

    return v0
.end method

.method c()Z
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/s;->a()I

    move-result v0

    iget v2, p0, Lcom/applovin/impl/sdk/s;->a:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method d()Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/s;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method e()Lcom/applovin/impl/sdk/ad/j;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/s;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/s;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/j;

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method f()Lcom/applovin/impl/sdk/ad/j;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/j;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
