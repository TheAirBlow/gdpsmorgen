.class public abstract Lcom/applovin/impl/sdk/d/x;
.super Lcom/applovin/impl/sdk/d/a;

# interfaces
.implements Lcom/applovin/impl/sdk/network/a$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/impl/sdk/d/a;",
        "Lcom/applovin/impl/sdk/network/a$c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/network/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/applovin/impl/sdk/network/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/a$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/applovin/impl/sdk/network/a$a;

.field private e:Lcom/applovin/impl/sdk/d/r$a;

.field private f:Lcom/applovin/impl/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/b/c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/applovin/impl/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/b/c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/network/b",
            "<TT;>;",
            "Lcom/applovin/impl/sdk/j;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/d/x;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/network/b",
            "<TT;>;",
            "Lcom/applovin/impl/sdk/j;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "TaskRepeatRequest"

    invoke-direct {p0, v0, p2, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;Z)V

    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->c:Lcom/applovin/impl/sdk/d/r$a;

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/x;->e:Lcom/applovin/impl/sdk/d/r$a;

    iput-object v1, p0, Lcom/applovin/impl/sdk/d/x;->f:Lcom/applovin/impl/sdk/b/c;

    iput-object v1, p0, Lcom/applovin/impl/sdk/d/x;->g:Lcom/applovin/impl/sdk/b/c;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No request specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/d/x;->a:Lcom/applovin/impl/sdk/network/b;

    new-instance v0, Lcom/applovin/impl/sdk/network/a$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/network/a$a;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/x;->d:Lcom/applovin/impl/sdk/network/a$a;

    new-instance v0, Lcom/applovin/impl/sdk/d/x$1;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/sdk/d/x$1;-><init>(Lcom/applovin/impl/sdk/d/x;Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/x;->c:Lcom/applovin/impl/sdk/network/a$c;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->a:Lcom/applovin/impl/sdk/network/b;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/x;Lcom/applovin/impl/sdk/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/x;->c(Lcom/applovin/impl/sdk/b/c;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/b/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->f:Lcom/applovin/impl/sdk/b/c;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/d/r$a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->e:Lcom/applovin/impl/sdk/d/r$a;

    return-object v0
.end method

.method private c(Lcom/applovin/impl/sdk/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/c",
            "<TST;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/x;->e()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->B()Lcom/applovin/impl/sdk/b/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/c;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/d;->a()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/b/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->g:Lcom/applovin/impl/sdk/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->e:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method public abstract a(I)V
.end method

.method public a(Lcom/applovin/impl/sdk/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/c",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/x;->f:Lcom/applovin/impl/sdk/b/c;

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/r$a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/x;->e:Lcom/applovin/impl/sdk/d/r$a;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public b(Lcom/applovin/impl/sdk/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/c",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/x;->g:Lcom/applovin/impl/sdk/b/c;

    return-void
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/x;->e()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->I()Lcom/applovin/impl/sdk/network/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/x;->e()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/x;->e()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b;->e()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "POST"

    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/x;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/network/b;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/x;->d:Lcom/applovin/impl/sdk/network/a$a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/x;->c:Lcom/applovin/impl/sdk/network/a$c;

    invoke-virtual {v1, v0, v2, v3}, Lcom/applovin/impl/sdk/network/a;->a(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/network/a$a;Lcom/applovin/impl/sdk/network/a$c;)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "GET"

    goto :goto_0

    :cond_3
    const-string v0, "Task has an invalid or null request endpoint."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/x;->d(Ljava/lang/String;)V

    const/16 v0, -0x384

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/x;->a(I)V

    goto :goto_1

    :cond_4
    const-string v0, "AppLovin SDK is disabled: please check your connection"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/x;->d(Ljava/lang/String;)V

    const-string v0, "AppLovinSdk"

    const-string v1, "AppLovin SDK is disabled: please check your connection"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x16

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/x;->a(I)V

    goto :goto_1
.end method
