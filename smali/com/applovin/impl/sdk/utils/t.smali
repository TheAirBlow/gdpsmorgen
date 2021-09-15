.class public Lcom/applovin/impl/sdk/utils/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/utils/t$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/applovin/impl/sdk/utils/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/StringBuilder;

.field private d:J

.field private e:Lcom/applovin/impl/sdk/utils/t$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->a:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/t;J)J
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/utils/t;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/t;)Lcom/applovin/impl/sdk/p;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->a:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/utils/s;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/applovin/impl/sdk/utils/t;

    invoke-direct {v0, p1}, Lcom/applovin/impl/sdk/utils/t;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/sdk/utils/t$a;)Lcom/applovin/impl/sdk/utils/t$a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/t;->e:Lcom/applovin/impl/sdk/utils/t$a;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/t;Lorg/xml/sax/Attributes;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/utils/t;->a(Lorg/xml/sax/Attributes;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/xml/sax/Attributes;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/utils/t;)J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/utils/t;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/utils/t;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->b:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/utils/t;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->c:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/utils/t;)Lcom/applovin/impl/sdk/utils/t$a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->e:Lcom/applovin/impl/sdk/utils/t$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/s;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to parse. No XML specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->b:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->e:Lcom/applovin/impl/sdk/utils/t$a;

    new-instance v0, Lcom/applovin/impl/sdk/utils/t$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/t$1;-><init>(Lcom/applovin/impl/sdk/utils/t;)V

    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->e:Lcom/applovin/impl/sdk/utils/t$a;

    if-nez v0, :cond_1

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Unable to parse XML into node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/t;->e:Lcom/applovin/impl/sdk/utils/t$a;

    return-object v0
.end method
