.class public Lcom/applovin/impl/mediation/c/f;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/c/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lcom/applovin/mediation/MaxAdFormat;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lcom/applovin/mediation/MaxAdListener;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/applovin/impl/sdk/j;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskProcessMediationWaterfall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/c/f;->c:Lcom/applovin/mediation/MaxAdFormat;

    iput-object p3, p0, Lcom/applovin/impl/mediation/c/f;->d:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/applovin/impl/mediation/c/f;->e:Lcom/applovin/mediation/MaxAdListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/c/f;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/f;)Lcom/applovin/impl/sdk/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->p:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying parent of ad load failure for ad unit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->e:Lcom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/f;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/16 v0, -0x1389

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->q:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->r:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/c/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/f;Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/c/f;->a(Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxAd;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying parent of ad load success for ad unit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->e:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method private b()V
    .locals 1

    const/16 v0, -0x1389

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/c/f;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/c/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/mediation/c/f;->b()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/c/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/c/f;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/c/f;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/c/f;)Lcom/applovin/mediation/MaxAdListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->e:Lcom/applovin/mediation/MaxAdListener;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/c/f;)Lcom/applovin/mediation/MaxAdFormat;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->c:Lcom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->E:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method public run()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->d:Lorg/json/JSONObject;

    const-string v2, "ads"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading the first out of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ads..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/c/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/mediation/c/f$a;

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/mediation/c/f$a;-><init>(Lcom/applovin/impl/mediation/c/f;ILorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "No ads were returned from the server"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/c/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/f;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->d:Lorg/json/JSONObject;

    const-string v2, "settings"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "alfdcs"

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v2, v6, v7, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    new-instance v4, Lcom/applovin/impl/mediation/c/f$1;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/c/f$1;-><init>(Lcom/applovin/impl/mediation/c/f;)V

    const-string v5, "alfdcs_iba"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v6, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v5, v1, v6}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v3, v0, v4}, Lcom/applovin/impl/sdk/utils/d;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/d;

    goto :goto_1

    :cond_2
    invoke-static {v4, v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xcc

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/c/f;->a(I)V

    goto :goto_1
.end method
