.class public Lcom/applovin/impl/sdk/network/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/network/a$a;->a:J

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/a$a;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/network/a$a;->b(J)V

    return-void
.end method

.method private b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/network/a$a;->b:J

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/a$a;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/network/a$a;->a(J)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/network/a$a;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/network/a$a;->b:J

    return-wide v0
.end method
