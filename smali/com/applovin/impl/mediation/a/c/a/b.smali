.class public Lcom/applovin/impl/mediation/a/c/a/b;
.super Lcom/applovin/impl/mediation/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/a/c/a/b$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lcom/applovin/impl/mediation/a/a/c;

.field private final e:Lcom/applovin/impl/mediation/a/a/c;

.field private final f:Lcom/applovin/impl/mediation/a/a/c;

.field private final g:Lcom/applovin/impl/mediation/a/a/c;

.field private h:Lcom/applovin/impl/mediation/a/c/a/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/a/c/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, "INCOMPLETE INTEGRATIONS"

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->d:Lcom/applovin/impl/mediation/a/a/c;

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, "COMPLETED INTEGRATIONS"

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->e:Lcom/applovin/impl/mediation/a/a/c;

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, "MISSING INTEGRATIONS"

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->f:Lcom/applovin/impl/mediation/a/a/c;

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->g:Lcom/applovin/impl/mediation/a/a/c;

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/applovin/impl/sdk/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/mediation/a/a/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "MediationDebuggerListAdapter"

    const-string v2, "Updating networks..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/a/c/a/b;->b(Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/a/a/d;

    new-instance v6, Lcom/applovin/impl/mediation/a/c/a/a/a;

    iget-object v7, p0, Lcom/applovin/impl/mediation/a/c/a/b;->a:Landroid/content/Context;

    invoke-direct {v6, v0, v7}, Lcom/applovin/impl/mediation/a/c/a/a/a;-><init>(Lcom/applovin/impl/mediation/a/a/d;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/d;->a()Lcom/applovin/impl/mediation/a/a/d$a;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/mediation/a/a/d$a;->b:Lcom/applovin/impl/mediation/a/a/d$a;

    if-eq v7, v8, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/d;->a()Lcom/applovin/impl/mediation/a/a/d$a;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/mediation/a/a/d$a;->c:Lcom/applovin/impl/mediation/a/a/d$a;

    if-ne v7, v8, :cond_2

    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/d;->a()Lcom/applovin/impl/mediation/a/a/d$a;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/mediation/a/a/d$a;->d:Lcom/applovin/impl/mediation/a/a/d$a;

    if-ne v7, v8, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/d;->a()Lcom/applovin/impl/mediation/a/a/d$a;

    move-result-object v0

    sget-object v7, Lcom/applovin/impl/mediation/a/a/d$a;->a:Lcom/applovin/impl/mediation/a/a/d$a;

    if-ne v0, v7, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->d:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->e:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->f:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->g:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private b(Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/applovin/impl/sdk/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/mediation/a/a/d;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/applovin/impl/mediation/a/a/d;

    invoke-direct {v3, v2, p2}, Lcom/applovin/impl/mediation/a/a/d;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method protected a(Lcom/applovin/impl/mediation/a/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->h:Lcom/applovin/impl/mediation/a/c/a/b$a;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/applovin/impl/mediation/a/c/a/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/applovin/impl/mediation/a/c/a/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c/a/a/a;->i()Lcom/applovin/impl/mediation/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/a/b;->h:Lcom/applovin/impl/mediation/a/c/a/b$a;

    invoke-interface {v1, v0}, Lcom/applovin/impl/mediation/a/c/a/b$a;->a(Lcom/applovin/impl/mediation/a/a/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/a/c/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c/a/b;->h:Lcom/applovin/impl/mediation/a/c/a/b$a;

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "networks"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/a/b;->b:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/mediation/a/c/a/b;->a(Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/applovin/impl/mediation/a/c/a/b$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/a/c/a/b$1;-><init>(Lcom/applovin/impl/mediation/a/c/a/b;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationDebuggerListAdapter{isInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/a/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
