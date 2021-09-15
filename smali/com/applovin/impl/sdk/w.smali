.class public Lcom/applovin/impl/sdk/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/w$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;

.field private final f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/View;

.field private i:I

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/w$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->b:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->c:Landroid/graphics/Rect;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/applovin/impl/sdk/w;->k:J

    iput-object p2, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/j;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->d:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/impl/sdk/w$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/applovin/impl/sdk/w$1;-><init>(Lcom/applovin/impl/sdk/w;Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/w$a;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/impl/sdk/w$2;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/w$2;-><init>(Lcom/applovin/impl/sdk/w;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/w;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->h:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/q;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "VisibilityTracker"

    const-string v2, "Unable to set view tree observer due to no root view."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "VisibilityTracker"

    const-string v2, "Unable to set view tree observer since the view tree observer is not alive."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/w;->g:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/w;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/w;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v2, v1

    iget v1, p0, Lcom/applovin/impl/sdk/w;->i:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/w;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/w;->b(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/applovin/impl/sdk/w;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->cm:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/w;->b()V

    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/w;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/applovin/impl/sdk/w;->k:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/w;->k:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/impl/sdk/w;->k:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/applovin/impl/sdk/w;->j:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/w;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/applovin/impl/sdk/w;->k:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->h:Landroid/view/View;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/applovin/impl/mediation/b/b;)V
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/w;->a()V

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/b/b;->l()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->h:Landroid/view/View;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/b/b;->q()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/w;->i:I

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/b/b;->s()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/w;->j:J

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->h:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/w;->a(Landroid/content/Context;Landroid/view/View;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
