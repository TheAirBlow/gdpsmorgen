.class public Lcom/applovin/impl/sdk/d/m;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ad/d;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .locals 1

    const-string v0, "TaskFetchNextAd"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/applovin/impl/sdk/d/m;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/d/m;->d:Z

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/c/h;)V
    .locals 8

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v6, Lcom/applovin/impl/sdk/b/c;->dM:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p1, v0, v2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->d:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/c/h;->c(Lcom/applovin/impl/sdk/c/g;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/m;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/m;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/m;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/m;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(I)V
    .locals 5

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->e()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ad: server returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const/16 v0, -0x320

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->h:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/m;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable process a failure to recieve an ad"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/m;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/d/a;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->eV:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/d/r$a;->a:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->n:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/d/a;
    .locals 6

    new-instance v0, Lcom/applovin/impl/sdk/d/s;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->c()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/s;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    instance-of v0, v0, Lcom/applovin/impl/sdk/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast v0, Lcom/applovin/impl/sdk/m;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-interface {v0, v1, p1}, Lcom/applovin/impl/sdk/m;->a(Lcom/applovin/impl/sdk/ad/d;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/d/m;->d:Z

    return-void
.end method

.method b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "zone_id"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "size"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "require"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->ab:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->aa()Lcom/applovin/impl/sdk/t;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/t;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "n"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method protected c()Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->b:Lcom/applovin/impl/sdk/ad/b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->c:Lcom/applovin/impl/sdk/ad/b;

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->g(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->h(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/d/m;->d:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preloading next ad of zone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/m;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eh:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/applovin/impl/sdk/utils/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "User is connected to a VPN"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/m;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->a:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->b()Ljava/util/Map;

    move-result-object v2

    iget-boolean v3, p0, Lcom/applovin/impl/sdk/d/m;->d:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/k;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/m;->a(Lcom/applovin/impl/sdk/c/h;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dB:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dA:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Z)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/m$1;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, p0, v0, v2}, Lcom/applovin/impl/sdk/d/m$1;-><init>(Lcom/applovin/impl/sdk/d/m;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aK:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/b/c;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aL:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/x;->b(Lcom/applovin/impl/sdk/b/c;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching next ad of zone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/m;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to fetch ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/m;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v6}, Lcom/applovin/impl/sdk/d/m;->b(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/m;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/c/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/m;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;)V

    goto :goto_1
.end method
