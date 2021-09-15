.class Lcom/applovin/impl/sdk/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b$2;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$2;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->b(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/adview/m;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$2;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->c(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->bQ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$2;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->c(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->bR:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$2;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->c(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->bT:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/a/b$2$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/a/b$2$1;-><init>(Lcom/applovin/impl/sdk/a/b$2;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$2;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->c(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->bS:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/a/b$2$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/a/b$2$2;-><init>(Lcom/applovin/impl/sdk/a/b$2;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$2;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/a/b;->a(Lcom/applovin/impl/sdk/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
