.class Lcom/applovin/impl/sdk/a/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/a/b$3;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/a/b$3;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b$3$1;->a:Lcom/applovin/impl/sdk/a/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$3$1;->a:Lcom/applovin/impl/sdk/a/b$3;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b$3;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->b(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/adview/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/m;->dismiss()V

    return-void
.end method
