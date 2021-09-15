.class Lcom/applovin/impl/sdk/h$1$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/h$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/h$1$1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/h$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/h$1$1$2;->a:Lcom/applovin/impl/sdk/h$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/h$1$1$2;->a:Lcom/applovin/impl/sdk/h$1$1;

    iget-object v0, v0, Lcom/applovin/impl/sdk/h$1$1;->a:Lcom/applovin/impl/sdk/h$1;

    iget-object v0, v0, Lcom/applovin/impl/sdk/h$1;->b:Lcom/applovin/impl/sdk/h$a;

    invoke-interface {v0}, Lcom/applovin/impl/sdk/h$a;->a()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/applovin/impl/sdk/h;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
