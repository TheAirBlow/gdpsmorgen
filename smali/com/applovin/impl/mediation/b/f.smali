.class public Lcom/applovin/impl/mediation/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/b/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/mediation/b/g;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/b/g;Lcom/applovin/impl/mediation/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/f;->a:Lcom/applovin/impl/mediation/b/g;

    iput-object p4, p0, Lcom/applovin/impl/mediation/b/f;->e:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/g;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/b/f;->d:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/b/f;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/i;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/b/f;->c:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    iput-object v3, p0, Lcom/applovin/impl/mediation/b/f;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/applovin/impl/mediation/b/f;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/applovin/impl/mediation/b/f;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Lcom/applovin/impl/mediation/b/g;Lcom/applovin/impl/mediation/i;Ljava/lang/String;)Lcom/applovin/impl/mediation/b/f;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No spec specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No adapterWrapper specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/applovin/impl/mediation/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/applovin/impl/mediation/b/f;-><init>(Lcom/applovin/impl/mediation/b/g;Lcom/applovin/impl/mediation/i;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/applovin/impl/mediation/b/g;Ljava/lang/String;)Lcom/applovin/impl/mediation/b/f;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/applovin/impl/mediation/b/f;->b(Lcom/applovin/impl/mediation/b/g;Lcom/applovin/impl/mediation/i;Ljava/lang/String;)Lcom/applovin/impl/mediation/b/f;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/applovin/impl/mediation/b/g;Lcom/applovin/impl/mediation/i;Ljava/lang/String;)Lcom/applovin/impl/mediation/b/f;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No spec specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/applovin/impl/mediation/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/applovin/impl/mediation/b/f;-><init>(Lcom/applovin/impl/mediation/b/g;Lcom/applovin/impl/mediation/i;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/mediation/b/g;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->a:Lcom/applovin/impl/mediation/b/g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalCollectionResult{mSignalProviderSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f;->a:Lcom/applovin/impl/mediation/b/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSdkVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdapterVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSignalDataLength=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
