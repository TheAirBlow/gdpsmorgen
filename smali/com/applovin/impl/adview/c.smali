.class Lcom/applovin/impl/adview/c;
.super Lcom/applovin/impl/adview/g;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/sdk/j;

.field private c:Lcom/applovin/impl/sdk/c/d;

.field private d:Lcom/applovin/sdk/AppLovinAd;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Lcom/applovin/impl/adview/g;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/c;->d:Lcom/applovin/sdk/AppLovinAd;

    iput-boolean v2, p0, Lcom/applovin/impl/adview/c;->e:Z

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/c;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/applovin/impl/adview/b;

    invoke-direct {v0, p2}, Lcom/applovin/impl/adview/b;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/c;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/c;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/c;->setScrollBarStyle(I)V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/impl/adview/e;

    invoke-direct {v0, p2}, Lcom/applovin/impl/adview/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v0}, Lcom/applovin/impl/adview/e;->a()Landroid/webkit/WebViewRenderProcessClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/c;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    :cond_1
    new-instance v0, Lcom/applovin/impl/adview/c$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/c$1;-><init>(Lcom/applovin/impl/adview/c;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/applovin/impl/adview/c$12;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/c$12;-><init>(Lcom/applovin/impl/adview/c;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/c;)Lcom/applovin/impl/sdk/p;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{SOURCE}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/applovin/impl/sdk/ad/f;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eX:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/f;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/c$13;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/c$13;-><init>(Lcom/applovin/impl/adview/c;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/applovin/impl/adview/c$14;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/c$14;-><init>(Lcom/applovin/impl/adview/c;Lcom/applovin/impl/sdk/ad/f;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/f;->ay()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/applovin/impl/adview/c$15;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/c$15;-><init>(Lcom/applovin/impl/adview/c;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/f;->az()Lcom/applovin/impl/adview/w;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/applovin/impl/adview/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->b()Landroid/webkit/WebSettings$PluginState;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/applovin/impl/adview/c$16;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$16;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$PluginState;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->c()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lcom/applovin/impl/adview/c$17;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$17;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Lcom/applovin/impl/adview/c$18;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$18;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_6
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lcom/applovin/impl/adview/c$19;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$19;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_7
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/applovin/impl/adview/c$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$2;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_8
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->g()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v3, Lcom/applovin/impl/adview/c$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$3;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_9
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->h()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Lcom/applovin/impl/adview/c$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$4;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_a
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->i()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v3, Lcom/applovin/impl/adview/c$5;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$5;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_b
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->j()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v3, Lcom/applovin/impl/adview/c$6;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$6;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_c
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->k()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v3, Lcom/applovin/impl/adview/c$7;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$7;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_d
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->l()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    new-instance v3, Lcom/applovin/impl/adview/c$8;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$8;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_e
    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->m()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v3, Lcom/applovin/impl/adview/c$9;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$9;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_f
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->f()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->a()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10

    new-instance v3, Lcom/applovin/impl/adview/c$10;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/c$10;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Integer;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V

    :cond_10
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->g()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lcom/applovin/impl/adview/w;->n()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v2, Lcom/applovin/impl/adview/c$11;

    invoke-direct {v2, p0, v1, v0}, Lcom/applovin/impl/adview/c$11;-><init>(Lcom/applovin/impl/adview/c;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v2}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "Unable to apply WebView settings"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "Unable to apply WebView setting"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0, p3, p1}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v1, "AdWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rendering webview for VAST ad with resourceContents : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "text/html"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/b/c;->eH:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p4, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v1, "AdWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rendering webview for VAST ad with resourceContents : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "text/html"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering webview for VAST ad with resourceURL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->d:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/c;->c:Lcom/applovin/impl/sdk/c/d;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 8

    iget-boolean v1, p0, Lcom/applovin/impl/adview/c;->e:Z

    if-nez v1, :cond_f

    iput-object p1, p0, Lcom/applovin/impl/adview/c;->d:Lcom/applovin/sdk/AppLovinAd;

    :try_start_0
    instance-of v1, p1, Lcom/applovin/impl/sdk/ad/h;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/applovin/impl/sdk/ad/h;

    const-string v2, "/"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/h;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "Empty ad rendered"

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/f;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/applovin/impl/adview/c;->a(Lcom/applovin/impl/sdk/ad/f;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->ag()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/c;->setVisibility(I)V

    :cond_2
    instance-of v2, p1, Lcom/applovin/impl/sdk/ad/a;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->ax()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "AppLovinAd rendered"

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v3, "AdWebView"

    const-string v4, "Unable to render AppLovinAd"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    instance-of v2, p1, Lcom/applovin/impl/a/a;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/applovin/impl/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/a/a;->j()Lcom/applovin/impl/a/b;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/applovin/impl/a/b;->b()Lcom/applovin/impl/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/a/e;->b()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_1
    invoke-virtual {v4}, Lcom/applovin/impl/a/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/a/a;->aK()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_4
    invoke-virtual {v4}, Lcom/applovin/impl/a/e;->a()Lcom/applovin/impl/a/e$a;

    move-result-object v6

    sget-object v7, Lcom/applovin/impl/a/e$a;->b:Lcom/applovin/impl/a/e$a;

    if-ne v6, v7, :cond_6

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v4, "AdWebView"

    const-string v5, "Rendering WebView for static VAST ad"

    invoke-virtual {v2, v4, v5}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v4, Lcom/applovin/impl/sdk/b/c;->eG:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->ax()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, ""

    move-object v3, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Lcom/applovin/impl/a/e;->a()Lcom/applovin/impl/a/e$a;

    move-result-object v6

    sget-object v7, Lcom/applovin/impl/a/e$a;->d:Lcom/applovin/impl/a/e$a;

    if-ne v6, v7, :cond_9

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v5, v2}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v4, "AdWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rendering WebView for HTML VAST ad with resourceContents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->ax()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v3, v2

    goto :goto_2

    :cond_8
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v4, "AdWebView"

    const-string v6, "Preparing to load HTML VAST ad resourceUri"

    invoke-virtual {v2, v4, v6}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->ax()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0, v3, v1, v5, v2}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4}, Lcom/applovin/impl/a/e;->a()Lcom/applovin/impl/a/e$a;

    move-result-object v4

    sget-object v6, Lcom/applovin/impl/a/e$a;->c:Lcom/applovin/impl/a/e$a;

    if-ne v4, v6, :cond_c

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v4, "AdWebView"

    const-string v6, "Preparing to load iFrame VAST ad resourceUri"

    invoke-virtual {v2, v4, v6}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->ax()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0, v3, v1, v5, v2}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v5, v2}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_3
    iget-object v2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v4, "AdWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rendering WebView for iFrame VAST ad with resourceContents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->ax()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object v3, v2

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "Failed to render VAST companion ad of invalid type"

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "Unable to load companion ad. No resources provided."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "No companion ad provided."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_f
    const-string v1, "AdWebView"

    const-string v2, "Ad can not be loaded in a destroyed webview"

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forwarding \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to ad template"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "Unable to forward to template"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public b()Lcom/applovin/impl/sdk/c/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->c:Lcom/applovin/impl/sdk/c/d;

    return-object v0
.end method

.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/c;->e:Z

    :try_start_0
    invoke-super {p0}, Lcom/applovin/impl/adview/g;->destroy()V

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v1, "AdWebView"

    const-string v2, "Web view destroyed"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "destroy() threw exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/applovin/impl/adview/g;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "onFocusChanged() threw exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/g;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "onWindowFocusChanged() threw exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/g;->onWindowVisibilityChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "onWindowVisibilityChanged() threw exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/adview/g;->requestFocus(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/p;

    const-string v2, "AdWebView"

    const-string v3, "requestFocus() threw exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0

    return-void
.end method
