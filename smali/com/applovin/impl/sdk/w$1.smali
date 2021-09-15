.class Lcom/applovin/impl/sdk/w$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/w;-><init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/w$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/mediation/ads/MaxAdView;

.field final synthetic b:Lcom/applovin/impl/sdk/w$a;

.field final synthetic c:Lcom/applovin/impl/sdk/w;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/w;Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/w$a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/w$1;->c:Lcom/applovin/impl/sdk/w;

    iput-object p2, p0, Lcom/applovin/impl/sdk/w$1;->a:Lcom/applovin/mediation/ads/MaxAdView;

    iput-object p3, p0, Lcom/applovin/impl/sdk/w$1;->b:Lcom/applovin/impl/sdk/w$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->c:Lcom/applovin/impl/sdk/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/w;->a(Lcom/applovin/impl/sdk/w;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->c:Lcom/applovin/impl/sdk/w;

    iget-object v1, p0, Lcom/applovin/impl/sdk/w$1;->a:Lcom/applovin/mediation/ads/MaxAdView;

    iget-object v2, p0, Lcom/applovin/impl/sdk/w$1;->c:Lcom/applovin/impl/sdk/w;

    invoke-static {v2}, Lcom/applovin/impl/sdk/w;->a(Lcom/applovin/impl/sdk/w;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/w;->a(Lcom/applovin/impl/sdk/w;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->c:Lcom/applovin/impl/sdk/w;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/w;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->b:Lcom/applovin/impl/sdk/w$a;

    invoke-interface {v0}, Lcom/applovin/impl/sdk/w$a;->onLogVisibilityImpression()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->c:Lcom/applovin/impl/sdk/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/w;->b(Lcom/applovin/impl/sdk/w;)V

    goto :goto_0
.end method
