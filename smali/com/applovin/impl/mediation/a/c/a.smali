.class public abstract Lcom/applovin/impl/mediation/a/c/a;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/mediation/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/a;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c/a;->a:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/c/a;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/applovin/impl/mediation/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/a/a/c;

    return-object v0
.end method

.method protected abstract a(Lcom/applovin/impl/mediation/a/a/c;)V
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/c/a;->a(I)Lcom/applovin/impl/mediation/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/c/a;->a(I)Lcom/applovin/impl/mediation/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/c;->e()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/c/a;->a(I)Lcom/applovin/impl/mediation/a/a/c;

    move-result-object v2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c/a;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/a/c;->f()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/applovin/impl/mediation/a/a/b;

    invoke-direct {v1}, Lcom/applovin/impl/mediation/a/a/b;-><init>()V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/applovin/impl/mediation/a/a/b;->a:Landroid/widget/TextView;

    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/applovin/impl/mediation/a/a/b;->b:Landroid/widget/TextView;

    sget v0, Lcom/applovin/sdk/R$id;->imageView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/applovin/impl/mediation/a/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/applovin/impl/mediation/a/a/b;->a(Lcom/applovin/impl/mediation/a/a/c;)V

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/a/c;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/a/a/b;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lcom/applovin/impl/mediation/a/a/c;->a()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/c/a;->a(I)Lcom/applovin/impl/mediation/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/c;->b()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/a/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/b;->a()Lcom/applovin/impl/mediation/a/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/c/a;->a(Lcom/applovin/impl/mediation/a/a/c;)V

    return-void
.end method
