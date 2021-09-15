.class public Lcom/applovin/impl/sdk/network/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/a$b;,
        Lcom/applovin/impl/sdk/network/a$a;,
        Lcom/applovin/impl/sdk/network/a$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/p;

.field private c:Lcom/applovin/impl/sdk/network/a$b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)I
    .locals 3

    const/16 v1, -0x64

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/16 v0, -0x67

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    const/16 v0, -0x66

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->ag:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "authentication challenge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x191

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_5

    const/16 v0, -0x68

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/xml/sax/SAXException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    :cond_2
    move-object p1, p2

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/applovin/impl/sdk/utils/s;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object p1

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to process response of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-gez p4, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dw:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-gez p4, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dx:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p4

    :cond_0
    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppLovin-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, p4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ad:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/network/d;->a(ILjava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to track response code for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->g(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->h(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->h:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/b;->a(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/b;->b(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->n:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->i:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;ZLcom/applovin/impl/sdk/network/a$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "TT;Z",
            "Lcom/applovin/impl/sdk/network/a$c",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "ConnectionManager"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_5

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_5

    if-eqz p5, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/16 v2, 0xcc

    if-eq p2, v2, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    instance-of v1, p4, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    move-object p4, v0

    :cond_0
    :goto_2
    invoke-interface {p6, p4, p2}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V

    :goto_3
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    instance-of v1, p4, Lcom/applovin/impl/sdk/utils/s;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object p4

    goto :goto_2

    :cond_3
    instance-of v1, p4, Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p4, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to handle \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid JSON returned from \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid XML returned from \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error received from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, p2}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V

    goto/16 :goto_3

    :cond_6
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successful "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p4

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/h;->f(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p4

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/h;->f(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p6}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/network/a$b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/a;->c:Lcom/applovin/impl/sdk/network/a$b;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/network/a$a;Lcom/applovin/impl/sdk/network/a$c;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/network/b",
            "<TT;>;",
            "Lcom/applovin/impl/sdk/network/a$a;",
            "Lcom/applovin/impl/sdk/network/a$c",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No request specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No endpoint specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No method specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p3, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No callback specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "http"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested postback submission to non HTTP endpoint "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; skipping..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/p;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x384

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V

    :goto_0
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v5, Lcom/applovin/impl/sdk/b/c;->dy:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "https://"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v5, "ConnectionManager"

    const-string v6, "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting..."

    invoke-virtual {v2, v5, v6}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "http://"

    const-string v5, "https://"

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->m()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/q;->a(Lcom/applovin/impl/sdk/j;)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->c()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->i()I

    move-result v4

    if-ltz v4, :cond_1d

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->c()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->i()I

    move-result v5

    if-ltz v5, :cond_7

    const-string v5, "current_retry_attempt"

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v14, :cond_c

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/j;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10, v11}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "p"

    invoke-static {v2, v5, v4}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v12, "ConnectionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " request to \""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\"..."

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->d()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->k()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v8, v12}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->e()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v14, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->s()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v10, v11}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v10, "ConnectionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request to \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Content-Type"

    const-string v10, "application/json; charset=utf-8"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v8, Ljava/io/PrintWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const-string v12, "UTF8"

    invoke-direct {v10, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_8
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    if-lez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v8, Lcom/applovin/impl/sdk/b/c;->fc:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v8}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v15

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/applovin/impl/sdk/network/a;->a(ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v12, v8, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v8, Lcom/applovin/impl/sdk/b/c;->fc:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v8}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v15, v2}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->h()Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz p2, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/applovin/impl/sdk/network/a$a;->a(Lcom/applovin/impl/sdk/network/a$a;J)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->n()Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Lcom/applovin/impl/sdk/network/a$b;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    invoke-direct/range {v8 .. v13}, Lcom/applovin/impl/sdk/network/a$b;-><init>(Ljava/lang/String;JJ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/applovin/impl/sdk/network/a;->c:Lcom/applovin/impl/sdk/network/a$b;

    :cond_a
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/applovin/impl/sdk/network/a$a;->b(Lcom/applovin/impl/sdk/network/a$a;J)V

    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v11, v4

    move v13, v14

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;ZLcom/applovin/impl/sdk/network/a$c;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    move-object v2, v15

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {v2, v4}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_d
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    goto/16 :goto_3

    :cond_e
    if-eqz p2, :cond_f

    :try_start_5
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/applovin/impl/sdk/network/a$a;->b(Lcom/applovin/impl/sdk/network/a$a;J)V

    :cond_f
    move-object/from16 v0, p3

    invoke-interface {v0, v2, v5}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v8

    move-object v9, v15

    :goto_6
    const/16 v2, -0x385

    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/applovin/impl/sdk/network/a;->a(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v10, Lcom/applovin/impl/sdk/b/c;->fc:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v10}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->h()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    :cond_11
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    const/16 v2, -0x385

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v2, v9

    goto :goto_5

    :cond_12
    const/16 v2, 0xc8

    if-lt v5, v2, :cond_1a

    const/16 v2, 0x190

    if-ge v5, v2, :cond_1a

    if-eqz p2, :cond_13

    :try_start_7
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/applovin/impl/sdk/network/a$a;->b(Lcom/applovin/impl/sdk/network/a$a;J)V

    :cond_13
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v15, v2}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/io/InputStream;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v9, "ConnectionManager"

    invoke-virtual {v8, v9, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/applovin/impl/sdk/network/a$a;->a(Lcom/applovin/impl/sdk/network/a$a;J)V

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->n()Z

    move-result v8

    if-eqz v8, :cond_15

    new-instance v8, Lcom/applovin/impl/sdk/network/a$b;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    invoke-direct/range {v8 .. v13}, Lcom/applovin/impl/sdk/network/a$b;-><init>(Ljava/lang/String;JJ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/applovin/impl/sdk/network/a;->c:Lcom/applovin/impl/sdk/network/a$b;

    :cond_15
    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->s()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    :cond_16
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v5}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    :catch_1
    move-exception v2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/impl/sdk/network/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v9, "ConnectionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to parse response from \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->K()Lcom/applovin/impl/sdk/c/h;

    move-result-object v2

    sget-object v8, Lcom/applovin/impl/sdk/c/g;->i:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v2, v8}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    const/16 v2, -0x320

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :catch_2
    move-exception v8

    move-object v9, v15

    move-object/from16 v10, v16

    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    sget-object v11, Lcom/applovin/impl/sdk/b/c;->ag:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v11}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez v5, :cond_18

    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/Throwable;)I

    move-result v5

    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/applovin/impl/sdk/network/a;->a(ILjava/lang/String;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v9, v2}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v10, v2}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    goto/16 :goto_0

    :cond_19
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v5}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    move-object v9, v15

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v9, v3}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/j;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/applovin/impl/sdk/network/a;->a:Lcom/applovin/impl/sdk/j;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/j;)V

    throw v2

    :cond_1a
    const/4 v8, 0x0

    move-object/from16 v2, p0

    :try_start_c
    invoke-direct/range {v2 .. v8}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    :cond_1b
    const/4 v8, 0x0

    move-object/from16 v2, p0

    :try_start_d
    invoke-direct/range {v2 .. v8}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lcom/applovin/impl/sdk/network/a$c;->a(I)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object v2, v9

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v2, p0

    :try_start_e
    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/sdk/network/a;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/b;->g()Ljava/lang/Object;

    move-result-object v2

    const/16 v8, -0x385

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v8}, Lcom/applovin/impl/sdk/network/a$c;->a(Ljava/lang/Object;I)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object v2, v9

    goto/16 :goto_5

    :catchall_1
    move-exception v3

    move-object/from16 v16, v2

    move-object v2, v3

    goto :goto_8

    :catchall_2
    move-exception v2

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object/from16 v16, v10

    goto :goto_8

    :catch_3
    move-exception v8

    move-object v10, v2

    goto/16 :goto_7

    :catch_4
    move-exception v8

    move-object/from16 v10, v16

    goto/16 :goto_7

    :catch_5
    move-exception v8

    goto/16 :goto_6

    :cond_1d
    move-object v4, v2

    goto/16 :goto_2

    :cond_1e
    move-object v2, v4

    goto/16 :goto_1
.end method
