.class public final Lcom/applovin/impl/adview/w;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/applovin/impl/sdk/j;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    iput-object p1, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Integer;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v2, "mixed_content_mode"

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "always_allow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "never_allow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "compatibility_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method b()Landroid/webkit/WebSettings$PluginState;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v2, "plugin_state"

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "on_demand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    goto :goto_0

    :cond_2
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    goto :goto_0
.end method

.method c()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "allow_file_access"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "load_with_overview_mode"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "use_wide_view_port"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "allow_content_access"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "use_built_in_zoom_controls"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "display_zoom_controls"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "save_form_data"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method j()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "geolocation_enabled"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "need_initial_focus"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method l()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "allow_file_access_from_file_urls"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "allow_universal_access_from_file_urls"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/w;->b:Lorg/json/JSONObject;

    const-string v1, "offscreen_pre_raster"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/adview/w;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
