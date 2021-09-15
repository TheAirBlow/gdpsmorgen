.class public Lcom/applovin/impl/a/a;
.super Lcom/applovin/impl/sdk/ad/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/a/a$a;,
        Lcom/applovin/impl/a/a$b;,
        Lcom/applovin/impl/a/a$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/a/f;

.field private final d:J

.field private final e:Lcom/applovin/impl/a/j;

.field private final f:Lcom/applovin/impl/a/b;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
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
.method private constructor <init>(Lcom/applovin/impl/a/a$a;)V
    .locals 4

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->a(Lcom/applovin/impl/a/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->b(Lcom/applovin/impl/a/a$a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->c(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v2

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->d(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/sdk/j;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/applovin/impl/sdk/ad/f;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->e(Lcom/applovin/impl/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->f(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->g(Lcom/applovin/impl/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->h(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->i(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->j(Lcom/applovin/impl/a/a$a;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->k(Lcom/applovin/impl/a/a$a;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->l(Lcom/applovin/impl/a/a$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/a/a;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/a/a$a;Lcom/applovin/impl/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/a/a;-><init>(Lcom/applovin/impl/a/a$a;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$b;[Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/a$b;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    sget-object v1, Lcom/applovin/impl/a/a$b;->b:Lcom/applovin/impl/a/a$b;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v0}, Lcom/applovin/impl/a/j;->e()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    array-length v4, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, p2, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/applovin/impl/a/a$b;->a:Lcom/applovin/impl/a/a$b;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/a/b;->d()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public static aO()Lcom/applovin/impl/a/a$a;
    .locals 2

    new-instance v0, Lcom/applovin/impl/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/impl/a/a$a;-><init>(Lcom/applovin/impl/a/a$1;)V

    return-object v0
.end method

.method private aP()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "vimp_url"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "{CLCODE}"

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->getClCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private aQ()Lcom/applovin/impl/a/j$a;
    .locals 3

    invoke-static {}, Lcom/applovin/impl/a/j$a;->values()[Lcom/applovin/impl/a/j$a;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->eO:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/a/j$a;->a:Lcom/applovin/impl/a/j$a;

    goto :goto_0
.end method

.method private aR()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v0}, Lcom/applovin/impl/a/j;->d()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private aS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/a/b;->c()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/a$c;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/applovin/impl/a/a$c;[Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/a$c;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "VastAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieving trackers of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and events \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/a$c;->a:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/a/a$c;->b:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->aR()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/a/a$c;->c:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->aS()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/applovin/impl/a/a$b;->b:Lcom/applovin/impl/a/a$b;

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$b;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/applovin/impl/a/a$b;->a:Lcom/applovin/impl/a/a$b;

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$b;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/applovin/impl/a/a$c;->f:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "VastAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve trackers of invalid type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and events \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/a/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/a/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "html_template"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->b()Z

    move-result v0

    return v0
.end method

.method public aK()Ljava/lang/String;
    .locals 2

    const-string v0, "html_template"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/a/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aL()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "html_template_url"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public aM()Z
    .locals 2

    const-string v0, "cache_companion_ad"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aN()Z
    .locals 2

    const-string v0, "cache_video"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public au()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/applovin/impl/a/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "vimp_urls"

    iget-object v2, p0, Lcom/applovin/impl/a/a;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->getClCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->aP()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "vast_is_streaming"

    invoke-virtual {p0, v1}, Lcom/applovin/impl/a/a;->containsKeyForAdObject(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vast_is_streaming"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->i()Lcom/applovin/impl/a/k;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/applovin/impl/a/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Lcom/applovin/impl/a/a$b;
    .locals 2

    const-string v0, "vast_first_caching_operation"

    const-string v1, "companion_ad"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/a/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "companion_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/a/a$b;->a:Lcom/applovin/impl/a/a$b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/a/a$b;->b:Lcom/applovin/impl/a/a$b;

    goto :goto_0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->i()Lcom/applovin/impl/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/a/k;->b()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    const-string v0, "vast_immediate_ad_load"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/applovin/impl/a/a;

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/ad/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Lcom/applovin/impl/a/a;

    iget-object v2, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/a/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/a/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    iget-object v3, p1, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    iget-object v1, p1, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_8
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_d
    iget-object v2, p1, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    :cond_e
    iget-object v2, p1, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    if-eqz v2, :cond_7

    goto/16 :goto_0

    :cond_f
    iget-object v2, p1, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_1
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v0}, Lcom/applovin/impl/a/j;->c()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->f()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAtMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/a/a;->d:J

    return-wide v0
.end method

.method public h()Lcom/applovin/impl/a/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    return-object v0
.end method

.method public hasVideoUrl()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v1}, Lcom/applovin/impl/a/j;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/applovin/impl/sdk/ad/f;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    invoke-virtual {v0}, Lcom/applovin/impl/a/f;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v0}, Lcom/applovin/impl/a/j;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/a/b;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method public i()Lcom/applovin/impl/a/k;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->aQ()Lcom/applovin/impl/a/j$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/j;->a(Lcom/applovin/impl/a/j$a;)Lcom/applovin/impl/a/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/applovin/impl/a/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    return-object v0
.end method

.method public k()Z
    .locals 2

    const-string v0, "vast_fire_click_trackers_on_html_clicks"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastAd{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoCreative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", companionAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->g:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->f()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
