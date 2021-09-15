.class public Lcom/applovin/impl/mediation/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/i$b;,
        Lcom/applovin/impl/mediation/i$a;,
        Lcom/applovin/impl/mediation/i$d;,
        Lcom/applovin/impl/mediation/i$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/applovin/impl/sdk/j;

.field private final c:Lcom/applovin/impl/sdk/p;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/applovin/impl/mediation/b/e;

.field private final f:Ljava/lang/String;

.field private g:Lcom/applovin/mediation/adapter/MaxAdapter;

.field private h:Ljava/lang/String;

.field private i:Lcom/applovin/impl/mediation/b/a;

.field private j:Landroid/view/View;

.field private final k:Lcom/applovin/impl/mediation/i$a;

.field private l:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/b/e;Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/impl/sdk/j;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/i;->a:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/impl/mediation/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/mediation/i$a;-><init>(Lcom/applovin/impl/mediation/i;Lcom/applovin/impl/mediation/i$1;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/i;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No adapter name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No adapter specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/e;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/i;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    iput-object p3, p0, Lcom/applovin/impl/mediation/i;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/i;->c:Lcom/applovin/impl/sdk/p;

    iput-object p1, p0, Lcom/applovin/impl/mediation/i;->e:Lcom/applovin/impl/mediation/b/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/i;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/i;->j:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/mediation/b/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->e:Lcom/applovin/impl/mediation/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/i;Lcom/applovin/mediation/adapter/MaxAdapter;)Lcom/applovin/mediation/adapter/MaxAdapter;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/i;Ljava/lang/String;Lcom/applovin/impl/mediation/i$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;Lcom/applovin/impl/mediation/i$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->c:Lcom/applovin/impl/sdk/p;

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as disabled due to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/mediation/i$b;)V
    .locals 3

    invoke-static {p2}, Lcom/applovin/impl/mediation/i$b;->a(Lcom/applovin/impl/mediation/i$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/applovin/impl/mediation/i$b;->b(Lcom/applovin/impl/mediation/i$b;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/applovin/impl/mediation/i$b;->b(Lcom/applovin/impl/mediation/i$b;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/applovin/impl/mediation/i$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/mediation/i$3;-><init>(Lcom/applovin/impl/mediation/i;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/i;->e:Lcom/applovin/impl/mediation/b/e;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/b/e;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/mediation/i;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/sdk/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->b:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/i;Ljava/lang/String;Lcom/applovin/impl/mediation/i$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/i;->b(Ljava/lang/String;Lcom/applovin/impl/mediation/i$b;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/applovin/impl/mediation/i$b;)V
    .locals 3

    invoke-static {p2}, Lcom/applovin/impl/mediation/i$b;->a(Lcom/applovin/impl/mediation/i$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/applovin/impl/mediation/i$b;->b(Lcom/applovin/impl/mediation/i$b;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/applovin/impl/mediation/i$b;->b(Lcom/applovin/impl/mediation/i$b;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/i;)Lcom/applovin/mediation/adapter/MaxAdapter;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/mediation/i$a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/sdk/p;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->c:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/i;)Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->l:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    return-object v0
.end method

.method static synthetic h(Lcom/applovin/impl/mediation/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/applovin/impl/mediation/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic j(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/mediation/b/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->i:Lcom/applovin/impl/mediation/b/a;

    return-object v0
.end method

.method static synthetic k(Lcom/applovin/impl/mediation/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/applovin/impl/mediation/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->j:Landroid/view/View;

    return-object v0
.end method

.method a(Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)V
    .locals 4

    const/16 v3, -0x13f0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No mediated ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->c()Lcom/applovin/impl/mediation/i;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "ad_show"

    const/16 v2, -0x1451

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/i$a;->b(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->c()Lcom/applovin/impl/mediation/i;

    move-result-object v0

    if-eq v0, p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mediated ad belongs to a different adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is disabled. Showing ads with this adapter is disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "ad_show"

    const/16 v2, -0x13ef

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/i$a;->b(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/i;->d()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not have an ad loaded. Please load an ad first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "ad_show"

    const/16 v2, -0x138a

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/i$a;->b(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/applovin/impl/mediation/i$8;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/i$8;-><init>(Lcom/applovin/impl/mediation/i;Landroid/app/Activity;)V

    :goto_1
    const-string v1, "ad_render"

    new-instance v2, Lcom/applovin/impl/mediation/i$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/applovin/impl/mediation/i$10;-><init>(Lcom/applovin/impl/mediation/i;Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V

    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not an interstitial adapter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "showFullscreenAd"

    invoke-static {v0, v1, v3}, Lcom/applovin/impl/mediation/i$a;->b(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/applovin/impl/mediation/i$9;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/i$9;-><init>(Lcom/applovin/impl/mediation/i;Landroid/app/Activity;)V

    goto :goto_1

    :cond_8
    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not an incentivized adapter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "showFullscreenAd"

    invoke-static {v0, v1, v3}, Lcom/applovin/impl/mediation/i$a;->b(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a supported ad format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "showFullscreenAd"

    invoke-static {v0, v1, v3}, Lcom/applovin/impl/mediation/i$a;->b(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V
    .locals 2

    const-string v0, "initialize"

    new-instance v1, Lcom/applovin/impl/mediation/i$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/mediation/i$1;-><init>(Lcom/applovin/impl/mediation/i;Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lcom/applovin/impl/mediation/b/g;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .locals 8

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is disabled. Signal collection ads with this adapter is disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The adapter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v5, Lcom/applovin/impl/mediation/i$b;

    invoke-direct {v5, p2, p4}, Lcom/applovin/impl/mediation/i$b;-><init>(Lcom/applovin/impl/mediation/b/g;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxSignalProvider;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    check-cast v2, Lcom/applovin/mediation/adapter/MaxSignalProvider;

    const-string v7, "collect_signal"

    new-instance v0, Lcom/applovin/impl/mediation/i$11;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/i$11;-><init>(Lcom/applovin/impl/mediation/i;Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/i$b;Lcom/applovin/impl/mediation/b/g;)V

    invoke-direct {p0, v7, v0}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The adapter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") does not support signal collection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/applovin/impl/mediation/i;->b(Ljava/lang/String;Lcom/applovin/impl/mediation/i$b;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/i;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/i;->i:Lcom/applovin/impl/mediation/b/a;

    return-void
.end method

.method a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;Lcom/applovin/impl/mediation/d;)V
    .locals 4

    const/16 v3, -0x13f0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No mediated ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was disabled due to earlier failures. Loading ads with this adapter is disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x13ef

    invoke-interface {p5, p1, v0}, Lcom/applovin/impl/mediation/d;->onAdLoadFailed(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/applovin/impl/mediation/i;->l:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    invoke-static {v0, p5}, Lcom/applovin/impl/mediation/i$a;->a(Lcom/applovin/impl/mediation/i$a;Lcom/applovin/impl/mediation/d;)V

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/applovin/impl/mediation/i$4;

    invoke-direct {v0, p0, p2, p4}, Lcom/applovin/impl/mediation/i$4;-><init>(Lcom/applovin/impl/mediation/i;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    :goto_1
    const-string v1, "ad_load"

    new-instance v2, Lcom/applovin/impl/mediation/i$7;

    invoke-direct {v2, p0, v0, p3}, Lcom/applovin/impl/mediation/i$7;-><init>(Lcom/applovin/impl/mediation/i;Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V

    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not an interstitial adapter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "loadAd"

    invoke-static {v0, v1, v3}, Lcom/applovin/impl/mediation/i$a;->a(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/applovin/impl/mediation/i$5;

    invoke-direct {v0, p0, p2, p4}, Lcom/applovin/impl/mediation/i$5;-><init>(Lcom/applovin/impl/mediation/i;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not an incentivized adapter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "loadAd"

    invoke-static {v0, v1, v3}, Lcom/applovin/impl/mediation/i$a;->a(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-eq v0, v1, :cond_6

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-eq v0, v1, :cond_6

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxAdViewAdapter;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/applovin/impl/mediation/i$6;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/applovin/impl/mediation/i$6;-><init>(Lcom/applovin/impl/mediation/i;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not an adview-based adapter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "loadAd"

    invoke-static {v0, v1, v3}, Lcom/applovin/impl/mediation/i$a;->a(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "MediationAdapterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a supported ad format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->k:Lcom/applovin/impl/mediation/i$a;

    const-string v1, "loadAd"

    const/16 v2, -0x157d

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/i$a;->a(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/i;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "MediationAdapterWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get adapter\'s SDK version, marking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "fail_version"

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->getAdapterVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/i;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "MediationAdapterWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get adapter version, marking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "fail_version"

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 2

    const-string v0, "destroy"

    new-instance v1, Lcom/applovin/impl/mediation/i$2;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/i$2;-><init>(Lcom/applovin/impl/mediation/i;)V

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapterWrapper{adapterTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
