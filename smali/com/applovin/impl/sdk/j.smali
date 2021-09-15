.class public Lcom/applovin/impl/sdk/j;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/content/Context;


# instance fields
.field private A:Lcom/applovin/impl/sdk/c/c;

.field private B:Lcom/applovin/impl/sdk/u;

.field private C:Lcom/applovin/impl/sdk/a;

.field private D:Lcom/applovin/impl/sdk/o;

.field private E:Lcom/applovin/impl/sdk/t;

.field private F:Lcom/applovin/impl/sdk/network/c;

.field private G:Lcom/applovin/impl/sdk/f;

.field private H:Lcom/applovin/impl/sdk/utils/m;

.field private I:Lcom/applovin/impl/sdk/e;

.field private J:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

.field private K:Lcom/applovin/impl/sdk/network/e;

.field private L:Lcom/applovin/impl/mediation/h;

.field private M:Lcom/applovin/impl/mediation/g;

.field private N:Lcom/applovin/impl/mediation/MediationServiceImpl;

.field private O:Lcom/applovin/impl/mediation/k;

.field private P:Lcom/applovin/impl/mediation/a/a;

.field private Q:Lcom/applovin/impl/mediation/j;

.field private final R:Ljava/lang/Object;

.field private final S:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Ljava/lang/String;

.field private Z:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field private aa:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field private ab:Lcom/applovin/sdk/AppLovinSdkConfiguration;

.field protected b:Lcom/applovin/impl/sdk/b/d;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

.field private i:Lcom/applovin/impl/sdk/EventServiceImpl;

.field private j:Lcom/applovin/impl/sdk/UserServiceImpl;

.field private k:Lcom/applovin/impl/sdk/VariableServiceImpl;

.field private l:Lcom/applovin/sdk/AppLovinSdk;

.field private m:Lcom/applovin/impl/sdk/p;

.field private n:Lcom/applovin/impl/sdk/d/r;

.field private o:Lcom/applovin/impl/sdk/network/a;

.field private p:Lcom/applovin/impl/sdk/c/h;

.field private q:Lcom/applovin/impl/sdk/c/j;

.field private r:Lcom/applovin/impl/sdk/k;

.field private s:Lcom/applovin/impl/sdk/b/f;

.field private t:Lcom/applovin/impl/sdk/c/f;

.field private u:Lcom/applovin/impl/sdk/i;

.field private v:Lcom/applovin/impl/sdk/utils/p;

.field private w:Lcom/applovin/impl/sdk/c;

.field private x:Lcom/applovin/impl/sdk/q;

.field private y:Lcom/applovin/impl/sdk/n;

.field private z:Lcom/applovin/impl/sdk/ad/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->R:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/j;->T:Z

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/j;->U:Z

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/j;->V:Z

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/j;->W:Z

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/j;->X:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->Y:Ljava/lang/String;

    return-void
.end method

.method public static D()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/d/r;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/r;

    return-object v0
.end method

.method private ag()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->F:Lcom/applovin/impl/sdk/network/c;

    new-instance v1, Lcom/applovin/impl/sdk/j$3;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/j$3;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/network/c$a;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/p;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/j;)Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->ab:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/j;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->R:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->T:Z

    return v0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->F:Lcom/applovin/impl/sdk/network/c;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/applovin/impl/mediation/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->Q:Lcom/applovin/impl/mediation/j;

    return-object v0
.end method

.method public B()Lcom/applovin/impl/sdk/b/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    return-object v0
.end method

.method public C()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public E()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/j;->e:J

    return-wide v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->W:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->X:Z

    return v0
.end method

.method public I()Lcom/applovin/impl/sdk/network/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->o:Lcom/applovin/impl/sdk/network/a;

    return-object v0
.end method

.method public J()Lcom/applovin/impl/sdk/d/r;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/r;

    return-object v0
.end method

.method public K()Lcom/applovin/impl/sdk/c/h;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    return-object v0
.end method

.method public L()Lcom/applovin/impl/sdk/c/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->q:Lcom/applovin/impl/sdk/c/j;

    return-object v0
.end method

.method public M()Lcom/applovin/impl/sdk/network/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->K:Lcom/applovin/impl/sdk/network/e;

    return-object v0
.end method

.method public N()Lcom/applovin/impl/sdk/k;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/k;

    return-object v0
.end method

.method public O()Lcom/applovin/impl/sdk/c/f;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->t:Lcom/applovin/impl/sdk/c/f;

    return-object v0
.end method

.method public P()Lcom/applovin/impl/sdk/i;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->u:Lcom/applovin/impl/sdk/i;

    return-object v0
.end method

.method public Q()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->J:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    return-object v0
.end method

.method public R()Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->l:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method public S()Lcom/applovin/impl/sdk/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->w:Lcom/applovin/impl/sdk/c;

    return-object v0
.end method

.method public T()Lcom/applovin/impl/sdk/q;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->x:Lcom/applovin/impl/sdk/q;

    return-object v0
.end method

.method public U()Lcom/applovin/impl/sdk/n;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->y:Lcom/applovin/impl/sdk/n;

    return-object v0
.end method

.method public V()Lcom/applovin/impl/sdk/ad/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->z:Lcom/applovin/impl/sdk/ad/e;

    return-object v0
.end method

.method public W()Lcom/applovin/impl/sdk/c/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->A:Lcom/applovin/impl/sdk/c/c;

    return-object v0
.end method

.method public X()Lcom/applovin/impl/sdk/u;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->B:Lcom/applovin/impl/sdk/u;

    return-object v0
.end method

.method public Y()Lcom/applovin/impl/sdk/o;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->D:Lcom/applovin/impl/sdk/o;

    return-object v0
.end method

.method public Z()Lcom/applovin/impl/sdk/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->C:Lcom/applovin/impl/sdk/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Lcom/applovin/impl/sdk/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/b/c",
            "<TST;>;)",
            "Lcom/applovin/impl/sdk/b/c",
            "<TST;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/d;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Lcom/applovin/impl/sdk/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/c",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-static {p1, p2, p3, p4}, Lcom/applovin/impl/sdk/b/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->R:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->T:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->U:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->b()V

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

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->u:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/i;->a(J)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/f;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/b/e;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/r;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/b/b;->a:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->M:Lcom/applovin/impl/mediation/g;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/g;->b()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/p;

    const-string v1, "AppLovinSdk"

    const-string v2, "All required adapters initialized"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/r;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/r;->e()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->e()V

    goto :goto_0
.end method

.method public a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e",
            "<TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e",
            "<TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->ab:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;->onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->Z:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    goto :goto_0
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->l:Lcom/applovin/sdk/AppLovinSdk;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppLovinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting plugin version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ea:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/d;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/j;->e:J

    iput-object p2, p0, Lcom/applovin/impl/sdk/j;->f:Lcom/applovin/sdk/AppLovinSdkSettings;

    new-instance v0, Lcom/applovin/impl/sdk/SdkConfigurationImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/SdkConfigurationImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->ab:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/j;->a:Landroid/content/Context;

    instance-of v0, p3, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p3

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/p;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/p;

    new-instance v0, Lcom/applovin/impl/sdk/b/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/b/f;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    new-instance v0, Lcom/applovin/impl/sdk/b/d;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/b/d;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/d;->b()V

    new-instance v0, Lcom/applovin/impl/sdk/c/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c/f;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->t:Lcom/applovin/impl/sdk/c/f;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->t:Lcom/applovin/impl/sdk/c/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/f;->b()V

    new-instance v0, Lcom/applovin/impl/sdk/n;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/n;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->y:Lcom/applovin/impl/sdk/n;

    new-instance v0, Lcom/applovin/impl/sdk/c;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->w:Lcom/applovin/impl/sdk/c;

    new-instance v0, Lcom/applovin/impl/sdk/q;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/q;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->x:Lcom/applovin/impl/sdk/q;

    new-instance v0, Lcom/applovin/impl/sdk/ad/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/ad/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->z:Lcom/applovin/impl/sdk/ad/e;

    new-instance v0, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/EventServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->i:Lcom/applovin/impl/sdk/EventServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/UserServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/UserServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->j:Lcom/applovin/impl/sdk/UserServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/VariableServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/VariableServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->k:Lcom/applovin/impl/sdk/VariableServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/c/c;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c/c;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->A:Lcom/applovin/impl/sdk/c/c;

    new-instance v0, Lcom/applovin/impl/sdk/d/r;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/d/r;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/r;

    new-instance v0, Lcom/applovin/impl/sdk/network/a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/a;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->o:Lcom/applovin/impl/sdk/network/a;

    new-instance v0, Lcom/applovin/impl/sdk/c/h;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c/h;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    new-instance v0, Lcom/applovin/impl/sdk/c/j;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c/j;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->q:Lcom/applovin/impl/sdk/c/j;

    new-instance v0, Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/k;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/k;

    new-instance v0, Lcom/applovin/impl/sdk/a;

    invoke-direct {v0, p3}, Lcom/applovin/impl/sdk/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->C:Lcom/applovin/impl/sdk/a;

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/NativeAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/u;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/u;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->B:Lcom/applovin/impl/sdk/u;

    new-instance v0, Lcom/applovin/impl/sdk/o;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/o;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->D:Lcom/applovin/impl/sdk/o;

    new-instance v0, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->J:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/network/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->K:Lcom/applovin/impl/sdk/network/e;

    new-instance v0, Lcom/applovin/impl/mediation/h;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/h;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->L:Lcom/applovin/impl/mediation/h;

    new-instance v0, Lcom/applovin/impl/mediation/g;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/g;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->M:Lcom/applovin/impl/mediation/g;

    new-instance v0, Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/MediationServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->N:Lcom/applovin/impl/mediation/MediationServiceImpl;

    new-instance v0, Lcom/applovin/impl/mediation/a/a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/a/a;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->P:Lcom/applovin/impl/mediation/a/a;

    new-instance v0, Lcom/applovin/impl/mediation/k;

    invoke-direct {v0}, Lcom/applovin/impl/mediation/k;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->O:Lcom/applovin/impl/mediation/k;

    new-instance v0, Lcom/applovin/impl/mediation/j;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/j;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->Q:Lcom/applovin/impl/mediation/j;

    new-instance v0, Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->u:Lcom/applovin/impl/sdk/i;

    new-instance v0, Lcom/applovin/impl/sdk/utils/p;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/p;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->v:Lcom/applovin/impl/sdk/utils/p;

    new-instance v0, Lcom/applovin/impl/sdk/t;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/t;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->E:Lcom/applovin/impl/sdk/t;

    new-instance v0, Lcom/applovin/impl/sdk/utils/m;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/m;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->H:Lcom/applovin/impl/sdk/utils/m;

    new-instance v0, Lcom/applovin/impl/sdk/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->I:Lcom/applovin/impl/sdk/e;

    new-instance v0, Lcom/applovin/impl/sdk/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/f;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->G:Lcom/applovin/impl/sdk/f;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dG:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/impl/sdk/network/c;

    invoke-direct {v0, p3}, Lcom/applovin/impl/sdk/network/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->F:Lcom/applovin/impl/sdk/network/c;

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->V:Z

    const-string v0, "AppLovinSdk"

    const-string v2, "Unable to find AppLovin SDK key. Please add  meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppLovinSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called with an invalid SDK key from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->t()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->ac:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/q;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->B()Lcom/applovin/impl/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/sdk/AppLovinSdkSettings;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->B()Lcom/applovin/impl/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/d;->a()V

    :cond_3
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object v3, Lcom/applovin/impl/sdk/b/e;->a:Lcom/applovin/impl/sdk/b/e;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->W:Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object v3, Lcom/applovin/impl/sdk/b/e;->a:Lcom/applovin/impl/sdk/b/e;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object v2, Lcom/applovin/impl/sdk/b/e;->b:Lcom/applovin/impl/sdk/b/e;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/p;

    const-string v2, "AppLovinSdk"

    const-string v3, "Initializing SDK for non-maiden launch"

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->X:Z

    :goto_1
    sget-object v0, Lcom/applovin/impl/sdk/b/e;->g:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/applovin/impl/sdk/b/e;->g:Lcom/applovin/impl/sdk/b/e;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->dH:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->b()V

    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->dG:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/p;

    const-string v2, "AppLovinSdk"

    const-string v3, "SDK initialized with no internet connection - listening for connection"

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->ag()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_3
    return-void

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object v3, Lcom/applovin/impl/sdk/b/e;->a:Lcom/applovin/impl/sdk/b/e;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "AppLovinSdk"

    const-string v3, "Failed to load AppLovin SDK, ad serving will be disabled"

    invoke-static {v2, v3, v0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3

    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/p;

    const-string v2, "AppLovinSdk"

    const-string v3, "Initializing SDK for maiden launch"

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object v2, Lcom/applovin/impl/sdk/b/e;->b:Lcom/applovin/impl/sdk/b/e;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/f;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public a(Z)V
    .locals 9

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->R:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->T:Z

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/j;->U:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->a:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/r;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/r;->e()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->e()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/b/b;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v2, Lcom/applovin/impl/sdk/d/ac;

    new-instance v0, Lcom/applovin/impl/sdk/j$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/j$1;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-direct {v2, p0, v6, v0}, Lcom/applovin/impl/sdk/d/ac;-><init>(Lcom/applovin/impl/sdk/j;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/p;

    const-string v3, "AppLovinSdk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Waiting for required adapters to init: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " - timing out in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "ms..."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/r;

    sget-object v3, Lcom/applovin/impl/sdk/d/r$a;->k:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;JZ)V

    goto :goto_0
.end method

.method public aa()Lcom/applovin/impl/sdk/t;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->E:Lcom/applovin/impl/sdk/t;

    return-object v0
.end method

.method public ab()Lcom/applovin/impl/sdk/f;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->G:Lcom/applovin/impl/sdk/f;

    return-object v0
.end method

.method public ac()Lcom/applovin/impl/sdk/utils/m;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->H:Lcom/applovin/impl/sdk/utils/m;

    return-object v0
.end method

.method public ad()Lcom/applovin/impl/sdk/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->I:Lcom/applovin/impl/sdk/e;

    return-object v0
.end method

.method public ae()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method public af()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->E()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->Z()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e",
            "<TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/d;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->R:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->T:Z

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/r;->d()V

    new-instance v0, Lcom/applovin/impl/sdk/d/k;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/d/k;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/d/r$a;->a:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v2, v0, v3}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/applovin/impl/sdk/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppLovinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting user id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->v:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->y:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->R:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->T:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->R:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->U:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->Z:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->Z:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/applovin/impl/sdk/j;->Z:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    iput-object v2, p0, Lcom/applovin/impl/sdk/j;->aa:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    :goto_0
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->ai:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    new-instance v0, Lcom/applovin/impl/sdk/j$2;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/j$2;-><init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    invoke-static {v0, v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->aa:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->ah:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/applovin/impl/sdk/j;->Z:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/applovin/impl/sdk/j;->aa:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    goto :goto_0
.end method

.method public f()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->g:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/b/d;->c()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/b/d;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/h;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->A:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c;->b()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->q:Lcom/applovin/impl/sdk/c/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/j;->b()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->g:Lcom/applovin/impl/sdk/c/g;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->P:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a;->b()V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->v:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->v:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->v:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->f:Lcom/applovin/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public l()Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->ab:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->y:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object v0
.end method

.method public o()Lcom/applovin/impl/sdk/NativeAdServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    return-object v0
.end method

.method public p()Lcom/applovin/sdk/AppLovinEventService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->i:Lcom/applovin/impl/sdk/EventServiceImpl;

    return-object v0
.end method

.method public q()Lcom/applovin/sdk/AppLovinUserService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->j:Lcom/applovin/impl/sdk/UserServiceImpl;

    return-object v0
.end method

.method public r()Lcom/applovin/impl/sdk/VariableServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->k:Lcom/applovin/impl/sdk/VariableServiceImpl;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->V:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreSdk{sdkKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->U:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFirstSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->W:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/applovin/impl/sdk/p;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method public v()Lcom/applovin/impl/mediation/h;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->L:Lcom/applovin/impl/mediation/h;

    return-object v0
.end method

.method public w()Lcom/applovin/impl/mediation/g;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->M:Lcom/applovin/impl/mediation/g;

    return-object v0
.end method

.method public x()Lcom/applovin/impl/mediation/MediationServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->N:Lcom/applovin/impl/mediation/MediationServiceImpl;

    return-object v0
.end method

.method public y()Lcom/applovin/impl/mediation/a/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->P:Lcom/applovin/impl/mediation/a/a;

    return-object v0
.end method

.method public z()Lcom/applovin/impl/mediation/k;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->O:Lcom/applovin/impl/mediation/k;

    return-object v0
.end method
