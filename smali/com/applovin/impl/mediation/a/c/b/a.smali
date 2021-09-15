.class public Lcom/applovin/impl/mediation/a/c/b/a;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/applovin/sdk/R$layout;->mediation_debugger_detail_activity:I

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/c/b/a;->setContentView(I)V

    sget v0, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/c/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/b/a;->a:Landroid/widget/ListView;

    return-void
.end method

.method public setNetwork(Lcom/applovin/impl/mediation/a/a/d;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/c/b/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/applovin/impl/mediation/a/c/b/b;

    invoke-direct {v0, p1, p0}, Lcom/applovin/impl/mediation/a/c/b/b;-><init>(Lcom/applovin/impl/mediation/a/a/d;Landroid/content/Context;)V

    new-instance v1, Lcom/applovin/impl/mediation/a/c/b/a$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/a/c/b/a$1;-><init>(Lcom/applovin/impl/mediation/a/c/b/a;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/c/b/b;->a(Lcom/applovin/impl/mediation/a/c/b/b$a;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c/b/a;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
