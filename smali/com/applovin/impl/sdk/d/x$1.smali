.class Lcom/applovin/impl/sdk/d/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/network/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/x;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/sdk/network/a$c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/j;

.field final synthetic b:Lcom/applovin/impl/sdk/d/x;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/x;Lcom/applovin/impl/sdk/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/x$1;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_0

    const/16 v2, 0x1f4

    if-lt p1, v2, :cond_3

    :cond_0
    move v3, v0

    :goto_0
    const/16 v2, 0x1ad

    if-ne p1, v2, :cond_4

    move v2, v0

    :goto_1
    const/16 v4, -0x67

    if-eq p1, v4, :cond_5

    :goto_2
    if-eqz v0, :cond_8

    if-nez v3, :cond_1

    if-eqz v2, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/b;->j()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send request due to server failure (code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v3}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/network/b;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempts left, retrying in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v4}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/network/b;->l()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/d/x;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/b;->j()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/b;->a(I)V

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/x;->b(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/b/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;Lcom/applovin/impl/sdk/b/c;)V

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching to backup endpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/x;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x$1;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->J()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/x;->c(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/d/r$a;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v3}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/network/b;->l()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;J)V

    :goto_3
    return-void

    :cond_3
    move v3, v1

    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/x;->d(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/b/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;Lcom/applovin/impl/sdk/b/c;)V

    :goto_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/x;->a(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/x;->b(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/b/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;Lcom/applovin/impl/sdk/b/c;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/x;->a(I)V

    goto :goto_3
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/d/x;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b;->a(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/x$1;->b:Lcom/applovin/impl/sdk/d/x;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/d/x;->a(Ljava/lang/Object;I)V

    return-void
.end method
