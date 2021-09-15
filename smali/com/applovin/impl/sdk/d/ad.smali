.class public Lcom/applovin/impl/sdk/d/ad;
.super Lcom/applovin/impl/sdk/d/ae;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ad/f;

.field private final c:Lcom/applovin/sdk/AppLovinAdRewardListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/f;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/impl/sdk/j;)V
    .locals 1

    const-string v0, "TaskValidateAppLovinReward"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/d/ae;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/ad;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->z:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method protected a(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/d/ae;->a(I)V

    const-string v0, "network_timeout"

    const/16 v1, 0x190

    if-lt p1, v1, :cond_0

    const/16 v1, 0x1f4

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ad;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    const-string v0, "rejected"

    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/c;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/a/c;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ad;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-interface {v1, v2, p1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    goto :goto_0
.end method

.method protected a(Lcom/applovin/impl/sdk/a/c;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/a/c;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/c;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "accepted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ad;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-interface {v0, v2, v1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "quota_exceeded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ad;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-interface {v0, v2, v1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v2, "rejected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ad;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-interface {v0, v2, v1}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ad;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    const/16 v2, -0x190

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "zone_id"

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ad;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/f;->getClCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clcode"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ad;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void

    :cond_0
    const-string v0, "NO_CLCODE"

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0/vr"

    return-object v0
.end method

.method protected c()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ad;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/f;->aH()Z

    move-result v0

    return v0
.end method
