.class Lcom/applovin/impl/adview/e$1;
.super Landroid/webkit/WebViewRenderProcessClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/e;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/e$1;->a:Lcom/applovin/impl/adview/e;

    invoke-direct {p0}, Landroid/webkit/WebViewRenderProcessClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 0

    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 5

    instance-of v0, p1, Lcom/applovin/impl/adview/c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/applovin/impl/adview/c;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    instance-of v0, v1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/e$1;->a:Lcom/applovin/impl/adview/e;

    invoke-static {v0}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/c/c;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->F:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/e$1;->a:Lcom/applovin/impl/adview/e;

    invoke-static {v0}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v2, "AdWebViewRenderProcessClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView render process unresponsive for ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
