.class public Lcom/applovin/impl/mediation/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field private d:Lcom/applovin/impl/mediation/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/mediation/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->d:Lcom/applovin/impl/mediation/a/a/c;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/mediation/a/a/c;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/a/b;->d:Lcom/applovin/impl/mediation/a/a/c;

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/c;->c()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/c;->d()Landroid/text/SpannedString;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/c;->d()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/c;->g()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a/c;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
