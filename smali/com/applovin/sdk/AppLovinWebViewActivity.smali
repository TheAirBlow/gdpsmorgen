.class public Lcom/applovin/sdk/AppLovinWebViewActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;
    }
.end annotation


# static fields
.field public static final EVENT_DISMISSED_VIA_BACK_BUTTON:Ljava/lang/String; = "dismissed_via_back_button"

.field public static final INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON:Ljava/lang/String; = "immersive_mode_on"

.field public static final INTENT_EXTRA_KEY_SDK_KEY:Ljava/lang/String; = "sdk_key"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/sdk/AppLovinWebViewActivity;)Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->b:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    return-object v0
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V
    .locals 1

    iput-object p2, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->b:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->b:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->b:Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    const-string v1, "dismissed_via_back_button"

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;->onReceivedEvent(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sdk_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No SDK key specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/applovin/sdk/AppLovinWebViewActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->a:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/applovin/sdk/AppLovinWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/applovin/sdk/AppLovinWebViewActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/applovin/sdk/AppLovinWebViewActivity$1;-><init>(Lcom/applovin/sdk/AppLovinWebViewActivity;Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "immersive_mode_on"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method
