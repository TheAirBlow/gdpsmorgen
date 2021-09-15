.class public Lcom/applovin/impl/mediation/a/c/b/b;
.super Lcom/applovin/impl/mediation/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/a/c/b/b$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/applovin/impl/mediation/a/a/c;

.field private final d:Lcom/applovin/impl/mediation/a/a/c;

.field private final e:Lcom/applovin/impl/mediation/a/a/c;

.field private final f:Lcom/applovin/impl/mediation/a/a/c;

.field private final g:Lcom/applovin/impl/mediation/a/a/c;

.field private h:Landroid/text/SpannedString;

.field private i:Lcom/applovin/impl/mediation/a/c/b/b$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/a/a/d;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/a/c/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, "INTEGRATIONS"

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->c:Lcom/applovin/impl/mediation/a/a/c;

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, "PERMISSIONS"

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->d:Lcom/applovin/impl/mediation/a/a/c;

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, "CONFIGURATION"

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->e:Lcom/applovin/impl/mediation/a/a/c;

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, "DEPENDENCIES"

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->f:Lcom/applovin/impl/mediation/a/a/c;

    new-instance v0, Lcom/applovin/impl/mediation/a/a/g;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->g:Lcom/applovin/impl/mediation/a/a/c;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->a()Lcom/applovin/impl/mediation/a/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/mediation/a/a/d$a;->c:Lcom/applovin/impl/mediation/a/a/d$a;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "Tap for more information"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->h:Landroid/text/SpannedString;

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->c:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Lcom/applovin/impl/mediation/a/a/d;)Lcom/applovin/impl/mediation/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/c/b/b;->b(Lcom/applovin/impl/mediation/a/a/d;)Lcom/applovin/impl/mediation/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->k()Lcom/applovin/impl/mediation/a/a/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Lcom/applovin/impl/mediation/a/a/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/mediation/a/c/b/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->g:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->h:Landroid/text/SpannedString;

    goto :goto_0
.end method

.method private a(Z)I
    .locals 1

    if-eqz p1, :cond_0

    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    goto :goto_0
.end method

.method private b(Z)I
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_checkmarkColor:I

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/f;->a(ILandroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/f;->a(ILandroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/a/a/d;)Lcom/applovin/impl/mediation/a/a/c;
    .locals 3

    invoke-static {}, Lcom/applovin/impl/mediation/a/c/b/a/a;->j()Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/impl/mediation/a/a/c$a;->c:Lcom/applovin/impl/mediation/a/a/c$a;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Lcom/applovin/impl/mediation/a/a/c$a;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->b()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->b()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/a/c/b/b;->b(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    :cond_0
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a()Lcom/applovin/impl/mediation/a/c/b/a/a;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/applovin/impl/mediation/a/a/c$a;->d:Lcom/applovin/impl/mediation/a/a/c$a;

    goto :goto_0
.end method

.method public a(Lcom/applovin/impl/mediation/a/a/e;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/mediation/a/a/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/mediation/a/a/c;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/e;->b()Z

    move-result v2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->e:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/applovin/impl/mediation/a/c/b/a/a;->j()Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    const-string v3, "Cleartext Traffic"

    invoke-virtual {v0, v3}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v3

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/a/c/b/b;->b(Z)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v3

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Z)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a()Lcom/applovin/impl/mediation/a/c/b/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->h:Landroid/text/SpannedString;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/mediation/a/a/f;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/mediation/a/a/c;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->d:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/a/a/f;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/f;->c()Z

    move-result v4

    invoke-static {}, Lcom/applovin/impl/mediation/a/c/b/a/a;->j()Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v5

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v5, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/applovin/impl/mediation/a/c/b/b;->b(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    if-nez v4, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Z)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a()Lcom/applovin/impl/mediation/a/c/b/a/a;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->h:Landroid/text/SpannedString;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method protected a(Lcom/applovin/impl/mediation/a/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->i:Lcom/applovin/impl/mediation/a/c/b/b$a;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/applovin/impl/mediation/a/c/b/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/applovin/impl/mediation/a/c/b/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c/b/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->i:Lcom/applovin/impl/mediation/a/c/b/b$a;

    invoke-interface {v1, v0}, Lcom/applovin/impl/mediation/a/c/b/b$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/a/c/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->i:Lcom/applovin/impl/mediation/a/c/b/b$a;

    return-void
.end method

.method public b(Lcom/applovin/impl/mediation/a/a/d;)Lcom/applovin/impl/mediation/a/a/c;
    .locals 3

    invoke-static {}, Lcom/applovin/impl/mediation/a/c/b/a/a;->j()Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    const-string v1, "Adapter"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/impl/mediation/a/a/c$a;->c:Lcom/applovin/impl/mediation/a/a/c$a;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Lcom/applovin/impl/mediation/a/a/c$a;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->c()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->c()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/a/c/b/b;->b(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    :cond_0
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a()Lcom/applovin/impl/mediation/a/c/b/a/a;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/applovin/impl/mediation/a/a/c$a;->d:Lcom/applovin/impl/mediation/a/a/c$a;

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/mediation/a/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/mediation/a/a/c;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/b;->f:Lcom/applovin/impl/mediation/a/a/c;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/a/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/a;->c()Z

    move-result v4

    invoke-static {}, Lcom/applovin/impl/mediation/a/c/b/a/a;->j()Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v5

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v5, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/applovin/impl/mediation/a/c/b/b;->b(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->b(I)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v1

    if-nez v4, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a(Z)Lcom/applovin/impl/mediation/a/c/b/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c/b/a/a$a;->a()Lcom/applovin/impl/mediation/a/c/b/a/a;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->h:Landroid/text/SpannedString;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediatedNetworkListAdapter{listItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
