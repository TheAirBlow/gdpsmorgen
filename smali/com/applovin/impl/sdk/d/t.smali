.class abstract Lcom/applovin/impl/sdk/d/t;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d/t$a;,
        Lcom/applovin/impl/sdk/d/t$c;,
        Lcom/applovin/impl/sdk/d/t$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final c:Lcom/applovin/impl/sdk/d/t$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .locals 2

    const-string v0, "TaskProcessVastResponse"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/applovin/impl/sdk/d/t;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast p1, Lcom/applovin/impl/sdk/d/t$a;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/t;->c:Lcom/applovin/impl/sdk/d/t$a;

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/s;Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/d/t;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/d/t$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/sdk/d/t$c;-><init>(Lcom/applovin/impl/sdk/utils/s;Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/d/t;
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/d/t$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/applovin/impl/sdk/d/t$a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V

    new-instance v1, Lcom/applovin/impl/sdk/d/t$b;

    invoke-direct {v1, v0, p3, p4}, Lcom/applovin/impl/sdk/d/t$b;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    return-object v1
.end method


# virtual methods
.method a(Lcom/applovin/impl/a/d;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to process VAST response due to VAST error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/t;->c:Lcom/applovin/impl/sdk/d/t$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/t;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v2, -0x6

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/t;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/a/d;ILcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/utils/s;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/t;->c:Lcom/applovin/impl/sdk/d/t$a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/t$a;->a()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished parsing XML at depth "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/t;->c:Lcom/applovin/impl/sdk/d/t$a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/t$a;->a(Lcom/applovin/impl/sdk/utils/s;)V

    invoke-static {p1}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/utils/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/t;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->eJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string v0, "VAST response is wrapper. Resolving..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/d/aa;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/t;->c:Lcom/applovin/impl/sdk/d/t$a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/t;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/t;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/d/aa;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/t;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reached beyond max wrapper depth of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/d;->e:Lcom/applovin/impl/a/d;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t;->a(Lcom/applovin/impl/a/d;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/a/i;->b(Lcom/applovin/impl/sdk/utils/s;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VAST response is inline. Rendering ad..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/d/w;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/t;->c:Lcom/applovin/impl/sdk/d/t$a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/t;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/t;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/d/w;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/t;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V

    goto :goto_0

    :cond_2
    const-string v0, "VAST response is an error"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/d;->f:Lcom/applovin/impl/a/d;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/t;->a(Lcom/applovin/impl/a/d;)V

    goto :goto_0
.end method
