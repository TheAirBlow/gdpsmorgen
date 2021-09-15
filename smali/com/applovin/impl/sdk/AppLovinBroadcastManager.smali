.class public Lcom/applovin/impl/sdk/AppLovinBroadcastManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;,
        Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;
    }
.end annotation


# static fields
.field private static f:Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

.field private static final g:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$1;-><init>(Lcom/applovin/impl/sdk/AppLovinBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Intent;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit v11

    move-object v1, v9

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v10, v9

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    move-object v8, v0

    iget-boolean v1, v8, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->c:Z

    if-nez v1, :cond_1

    iget-object v1, v8, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->a:Landroid/content/IntentFilter;

    const-string v7, "AppLovinBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    if-nez v10, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->c:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    if-nez v10, :cond_4

    :try_start_1
    monitor-exit v11

    move-object v1, v9

    goto :goto_0

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->c:Z

    goto :goto_2

    :cond_5
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v10

    goto :goto_0
.end method

.method private a()V
    .locals 8

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    new-array v2, v0, [Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v0, v4, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    iget-boolean v6, v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->d:Z

    if-nez v6, :cond_2

    iget-object v0, v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->b:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a:Landroid/content/Context;

    iget-object v7, v4, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinBroadcastManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/applovin/impl/sdk/AppLovinBroadcastManager;
    .locals 3

    sget-object v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->f:Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->f:Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->f:Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    invoke-direct {v3, p2, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    new-instance v4, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;

    invoke-direct {v4, p1, v2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;-><init>(Landroid/content/Intent;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->e:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->e:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    iget-boolean v2, v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->d:Z

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->b:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendBroadcastSyncWithPendingBroadcasts(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a()V

    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 8

    iget-object v4, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->d:Z

    iget-object v1, v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    iget-object v3, v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->b:Landroid/content/BroadcastReceiver;

    if-ne v3, p1, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->d:Z

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
