.class Lcom/applovin/impl/sdk/c/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:D

.field private e:D

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    iput v2, p0, Lcom/applovin/impl/sdk/c/j$b;->c:I

    iput-wide v0, p0, Lcom/applovin/impl/sdk/c/j$b;->d:D

    iput-wide v0, p0, Lcom/applovin/impl/sdk/c/j$b;->e:D

    iput-object v3, p0, Lcom/applovin/impl/sdk/c/j$b;->f:Ljava/lang/Long;

    iput-object v3, p0, Lcom/applovin/impl/sdk/c/j$b;->g:Ljava/lang/Long;

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/j$b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    iput v2, p0, Lcom/applovin/impl/sdk/c/j$b;->c:I

    iput-wide v0, p0, Lcom/applovin/impl/sdk/c/j$b;->d:D

    iput-wide v0, p0, Lcom/applovin/impl/sdk/c/j$b;->e:D

    iput-object v3, p0, Lcom/applovin/impl/sdk/c/j$b;->f:Ljava/lang/Long;

    iput-object v3, p0, Lcom/applovin/impl/sdk/c/j$b;->g:Ljava/lang/Long;

    sget-object v0, Lcom/applovin/impl/sdk/c/j$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->a:Ljava/lang/String;

    sget-object v0, Lcom/applovin/impl/sdk/c/j$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    sget-object v0, Lcom/applovin/impl/sdk/c/j$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/c/j$b;->c:I

    sget-object v0, Lcom/applovin/impl/sdk/c/j$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/c/j$b;->d:D

    sget-object v0, Lcom/applovin/impl/sdk/c/j$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/c/j$b;->e:D

    sget-object v0, Lcom/applovin/impl/sdk/c/j$a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->f:Ljava/lang/Long;

    sget-object v0, Lcom/applovin/impl/sdk/c/j$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->g:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(J)V
    .locals 11

    iget v0, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/j$b;->d:D

    iget-wide v4, p0, Lcom/applovin/impl/sdk/c/j$b;->e:D

    iget v1, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    int-to-double v6, v0

    mul-double/2addr v6, v2

    long-to-double v8, p1

    add-double/2addr v6, v8

    iget v1, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    int-to-double v8, v1

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/applovin/impl/sdk/c/j$b;->d:D

    int-to-double v0, v0

    iget v6, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    int-to-double v6, v6

    div-double/2addr v0, v6

    long-to-double v6, p1

    sub-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v6, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/sdk/c/j$b;->e:D

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->f:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->f:Ljava/lang/Long;

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->g:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/j$b;->g:Ljava/lang/Long;

    :cond_3
    return-void
.end method

.method b()V
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/c/j$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/sdk/c/j$b;->c:I

    return-void
.end method

.method c()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/applovin/impl/sdk/c/j$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/j$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/j$a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/j$a;->c:Ljava/lang/String;

    iget v2, p0, Lcom/applovin/impl/sdk/c/j$b;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/j$a;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/j$b;->d:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/j$a;->e:Ljava/lang/String;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/c/j$b;->e:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/j$a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/j$b;->f:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/applovin/impl/sdk/c/j$a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/j$b;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x7d

    const/16 v2, 0x27

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStats{n=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/j$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c/j$b;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStats{n=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/j$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/c/j$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
