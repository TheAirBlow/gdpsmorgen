.class Lcom/applovin/impl/mediation/j$a;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lcom/applovin/mediation/MaxAdListener;
.implements Lcom/applovin/mediation/MaxRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/mediation/j;

.field private final c:Lcom/applovin/mediation/MaxAdFormat;

.field private final d:Lcom/applovin/impl/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/b/c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/applovin/mediation/MaxAdListener;

.field private f:Lcom/applovin/impl/mediation/b/c;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/applovin/impl/sdk/utils/o;

.field private i:J

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile k:Z


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/b/c;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/sdk/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/c",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/mediation/MaxAdFormat;",
            "Lcom/applovin/impl/mediation/j;",
            "Lcom/applovin/impl/sdk/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/j$a;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/j$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j$a;->b:Lcom/applovin/impl/mediation/j;

    iput-object p4, p0, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/sdk/j;

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$a;->d:Lcom/applovin/impl/sdk/b/c;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$a;->c:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/j;->ae()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.applovin.application_paused"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/j;->ae()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.applovin.application_resumed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/b/c;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/mediation/j$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/mediation/j$a;-><init>(Lcom/applovin/impl/sdk/b/c;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/j$a;Lcom/applovin/mediation/MaxAdListener;)Lcom/applovin/mediation/MaxAdListener;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/applovin/impl/mediation/j$a;->i:J

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/sdk/j;

    new-instance v1, Lcom/applovin/impl/mediation/j$a$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/j$a$1;-><init>(Lcom/applovin/impl/mediation/j$a;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/o;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/o;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/j$a;->h:Lcom/applovin/impl/sdk/utils/o;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/j$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/mediation/j$a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/j$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/j$a;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/u;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/j$a;->k:Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/sdk/j;

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$a;->d:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/impl/mediation/f$a;

    invoke-direct {v0}, Lcom/applovin/impl/mediation/f$a;-><init>()V

    const-string v2, "fa"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/mediation/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/mediation/f$a;

    move-result-object v0

    const-string v2, "faie"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/mediation/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/mediation/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/f$a;->a()Lcom/applovin/impl/mediation/f;

    move-result-object v3

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->x()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$a;->c:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v5, p0, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/j;->af()Landroid/app/Activity;

    move-result-object v5

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadAd(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/f;ZLandroid/app/Activity;Lcom/applovin/mediation/MaxAdListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/j$a;)Lcom/applovin/impl/mediation/b/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->f:Lcom/applovin/impl/mediation/b/c;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/j$a;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$a;->g:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/applovin/impl/mediation/j$a;->i:J

    invoke-direct {p0}, Lcom/applovin/impl/mediation/j$a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/j$a;->f:Lcom/applovin/impl/mediation/b/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/j$a;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->h:Lcom/applovin/impl/sdk/utils/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->h:Lcom/applovin/impl/sdk/utils/o;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/o;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/j$a;->h:Lcom/applovin/impl/sdk/utils/o;

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


# virtual methods
.method public a()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/j$a;->k:Z

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/j$a;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/applovin/impl/mediation/j$a;->i:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/applovin/impl/mediation/j$a;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-gtz v2, :cond_2

    invoke-direct {p0, v4}, Lcom/applovin/impl/mediation/j$a;->b(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/j$a;->a(J)V

    goto :goto_0
.end method

.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    invoke-interface {v0, p1}, Lcom/applovin/mediation/MaxAdListener;->onAdClicked(Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    invoke-interface {v0, p1, p2}, Lcom/applovin/mediation/MaxAdListener;->onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;I)V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    invoke-interface {v0, p1}, Lcom/applovin/mediation/MaxAdListener;->onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/j$a;->b(Z)V

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    invoke-interface {v0, p1}, Lcom/applovin/mediation/MaxAdListener;->onAdHidden(Lcom/applovin/mediation/MaxAd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;I)V
    .locals 4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->R:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    new-instance v2, Lcom/applovin/impl/mediation/j$a$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/mediation/j$a$2;-><init>(Lcom/applovin/impl/mediation/j$a;)V

    invoke-static {v2, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 3

    check-cast p1, Lcom/applovin/impl/mediation/b/c;

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$a;->f:Lcom/applovin/impl/mediation/b/c;

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->f:Lcom/applovin/impl/mediation/b/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/b/c;->l()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/j$a;->a(J)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$a;->b:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/impl/mediation/j;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/j$b;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$a;->f:Lcom/applovin/impl/mediation/b/c;

    invoke-interface {v0, v2}, Lcom/applovin/impl/mediation/j$b;->a(Lcom/applovin/impl/mediation/b/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.applovin.application_paused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/j$a;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.applovin.application_resumed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/j$a;->a()V

    goto :goto_0
.end method

.method public onRewardedVideoCompleted(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    instance-of v0, v0, Lcom/applovin/mediation/MaxRewardedAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    check-cast v0, Lcom/applovin/mediation/MaxRewardedAdListener;

    invoke-interface {v0, p1}, Lcom/applovin/mediation/MaxRewardedAdListener;->onRewardedVideoCompleted(Lcom/applovin/mediation/MaxAd;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoStarted(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    instance-of v0, v0, Lcom/applovin/mediation/MaxRewardedAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    check-cast v0, Lcom/applovin/mediation/MaxRewardedAdListener;

    invoke-interface {v0, p1}, Lcom/applovin/mediation/MaxRewardedAdListener;->onRewardedVideoStarted(Lcom/applovin/mediation/MaxAd;)V

    :cond_0
    return-void
.end method

.method public onUserRewarded(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    instance-of v0, v0, Lcom/applovin/mediation/MaxRewardedAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a;->e:Lcom/applovin/mediation/MaxAdListener;

    check-cast v0, Lcom/applovin/mediation/MaxRewardedAdListener;

    invoke-interface {v0, p1, p2}, Lcom/applovin/mediation/MaxRewardedAdListener;->onUserRewarded(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V

    :cond_0
    return-void
.end method
