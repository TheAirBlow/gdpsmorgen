.class Lcom/applovin/impl/sdk/d/w;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private a:Lcom/applovin/impl/a/c;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .locals 1

    const-string v0, "TaskRenderVastAd"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/w;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->w:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method public run()V
    .locals 12

    const/4 v1, 0x0

    const-string v0, "Rendering VAST ad..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/w;->a(Ljava/lang/String;)V

    const-string v5, ""

    const-string v4, ""

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/a/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/a/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v1

    move-object v3, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/utils/s;

    invoke-static {v0}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/utils/s;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Wrapper"

    :goto_1
    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/utils/s;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v0, "AdSystem"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/utils/s;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v10, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v3, v10}, Lcom/applovin/impl/a/f;->a(Lcom/applovin/impl/sdk/utils/s;Lcom/applovin/impl/a/f;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/f;

    move-result-object v3

    :cond_0
    const-string v0, "AdTitle"

    invoke-static {v6, v0, v5}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/utils/s;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Description"

    invoke-static {v6, v0, v4}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/utils/s;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Impression"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/utils/s;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v10, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    iget-object v11, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v7, v10, v11}, Lcom/applovin/impl/a/i;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)V

    const-string v0, "ViewableImpression"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/utils/s;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v10, "Viewable"

    invoke-virtual {v0, v10}, Lcom/applovin/impl/sdk/utils/s;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v10, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    iget-object v11, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v7, v10, v11}, Lcom/applovin/impl/a/i;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)V

    :cond_1
    const-string v0, "Error"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/utils/s;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v10, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    iget-object v11, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v8, v10, v11}, Lcom/applovin/impl/a/i;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)V

    const-string v0, "Creatives"

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/utils/s;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/s;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/utils/s;

    const-string v10, "Linear"

    invoke-virtual {v0, v10}, Lcom/applovin/impl/sdk/utils/s;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    iget-object v11, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v10, v2, v0, v11}, Lcom/applovin/impl/a/j;->a(Lcom/applovin/impl/sdk/utils/s;Lcom/applovin/impl/a/j;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/j;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    const-string v6, "InLine"

    goto :goto_1

    :cond_4
    const-string v10, "CompanionAds"

    invoke-virtual {v0, v10}, Lcom/applovin/impl/sdk/utils/s;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string v0, "Companion"

    invoke-virtual {v10, v0}, Lcom/applovin/impl/sdk/utils/s;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v10, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    iget-object v11, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v10, v11}, Lcom/applovin/impl/a/b;->a(Lcom/applovin/impl/sdk/utils/s;Lcom/applovin/impl/a/b;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/b;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received and will skip rendering for an unidentified creative: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/w;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    :goto_3
    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_0

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Did not find wrapper or inline response for node: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/w;->d(Ljava/lang/String;)V

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/applovin/impl/a/a;->aO()Lcom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/a/a$a;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    invoke-virtual {v6}, Lcom/applovin/impl/a/c;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/applovin/impl/a/a$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    invoke-virtual {v6}, Lcom/applovin/impl/a/c;->d()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/applovin/impl/a/a$a;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    invoke-virtual {v6}, Lcom/applovin/impl/a/c;->e()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/applovin/impl/a/a$a;->a(Lcom/applovin/impl/sdk/ad/b;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    invoke-virtual {v6}, Lcom/applovin/impl/a/c;->f()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/applovin/impl/a/a$a;->a(J)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/applovin/impl/a/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/a/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/applovin/impl/a/a$a;->a(Lcom/applovin/impl/a/f;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/a/a$a;->a(Lcom/applovin/impl/a/j;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/a$a;->a(Lcom/applovin/impl/a/b;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/applovin/impl/a/a$a;->a(Ljava/util/Set;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/applovin/impl/a/a$a;->b(Ljava/util/Set;)Lcom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/a/a$a;->a()Lcom/applovin/impl/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/a/a;)Lcom/applovin/impl/a/d;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v3, Lcom/applovin/impl/sdk/d/h;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/w;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-direct {v3, v2, v0, v1}, Lcom/applovin/impl/sdk/d/h;-><init>(Lcom/applovin/impl/a/a;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    sget-object v1, Lcom/applovin/impl/sdk/d/r$a;->h:Lcom/applovin/impl/sdk/d/r$a;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    sget-object v4, Lcom/applovin/impl/sdk/b/c;->bl:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lcom/applovin/impl/a/a;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v4, :cond_9

    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->f:Lcom/applovin/impl/sdk/d/r$a;

    :goto_4
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    :goto_5
    return-void

    :cond_9
    invoke-virtual {v2}, Lcom/applovin/impl/a/a;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v2, :cond_b

    sget-object v0, Lcom/applovin/impl/sdk/d/r$a;->g:Lcom/applovin/impl/sdk/d/r$a;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/impl/a/c;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/w;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v3, -0x6

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/a/d;ILcom/applovin/impl/sdk/j;)V

    goto :goto_5

    :cond_b
    move-object v0, v1

    goto :goto_4
.end method
