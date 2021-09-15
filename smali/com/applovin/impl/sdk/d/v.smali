.class Lcom/applovin/impl/sdk/d/v;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 1

    const-string v0, "TaskRenderNativeAd"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/d/v;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/v;->c:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, p1, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "{CLCODE}"

    invoke-virtual {v1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "click_url"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    const-string v1, "{CLCODE}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{EVENT_ID}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 17

    const-string v2, "native_ads"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object v11

    const-string v2, "native_settings"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v11, v9, v2, v4}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v2, "clcode"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v2, v4, v5}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "zone_id"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5, v6}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v13, v2}, Lcom/applovin/impl/sdk/ad/d;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v14

    const-string v2, "event_id"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v2, v5, v6}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "simp_url"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/applovin/impl/sdk/d/v;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/applovin/impl/sdk/d/v;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "simp_urls"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v3, v4, v15, v6}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v16

    const-string v2, "should_post_click_url"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v3, v2, v6, v7}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v6, v10

    :goto_1
    const-string v2, "click_tracking_urls"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static/range {v2 .. v7}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No impression URL available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No click tracking URL available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v2, "resource_cache_prefix"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v2, v6, v7}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_2
    new-instance v6, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    invoke-direct {v6}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;-><init>()V

    invoke-virtual {v6, v14}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "title"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "description"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->g(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "caption"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->h(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "cta"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->q(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "icon_url"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "image_url"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "video_url"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "star_rating_url"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "icon_url"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->i(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "image_url"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->j(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "video_url"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->k(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "star_rating"

    const/high16 v13, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v7, v13, v14}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/impl/sdk/j;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(F)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->p(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->l(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->m(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "video_start_url"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v4}, Lcom/applovin/impl/sdk/d/v;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->n(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v6

    const-string v7, "video_end_url"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v4}, Lcom/applovin/impl/sdk/d/v;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->o(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->b(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v4

    const-string v5, "ad_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v12, v5, v6, v7, v10}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(J)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->c(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a()Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared native ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getAdId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/d/v;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    sget-object v6, Lcom/applovin/impl/sdk/b/c;->bM:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v6}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/d/v;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/applovin/impl/sdk/d/v;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    move-object v2, v8

    check-cast v2, Ljava/util/List;

    invoke-interface {v3, v2}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    const-string v2, "No ads were returned from the server"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/d/v;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/d/v;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    const/16 v3, 0xcc

    invoke-interface {v2, v3}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    goto :goto_3
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->v:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/v;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/v;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to notify listener about failure."

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    const/16 v2, -0x2bc

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/v;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/v;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, -0x2bc

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/v;->a(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/v;->c:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/v;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to render native ad."

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/d/v;->a(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/v;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/c/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/v;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;)V

    goto :goto_0
.end method
