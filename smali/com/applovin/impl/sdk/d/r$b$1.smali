.class Lcom/applovin/impl/sdk/d/r$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/r$b;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/r$b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/r$b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/r$b$1;->a:Lcom/applovin/impl/sdk/d/r$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$b$1;->a:Lcom/applovin/impl/sdk/d/r$b;

    iget-object v0, v0, Lcom/applovin/impl/sdk/d/r$b;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/r;->b(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "TaskManager"

    const-string v2, "Caught unhandled exception"

    invoke-virtual {v0, v1, v2, p2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
