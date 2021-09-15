.class public Lcom/applovin/impl/adview/u;
.super Lcom/applovin/impl/adview/g;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/v;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/applovin/impl/adview/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/u;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/u;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/u;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/u;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/u;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/u;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/u;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v1, "/"

    const-string v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/u;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
