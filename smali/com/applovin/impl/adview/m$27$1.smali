.class Lcom/applovin/impl/adview/m$27$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/m$27;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/m$27;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/m$27;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/m$27$1;->a:Lcom/applovin/impl/adview/m$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/m$27$1;->a:Lcom/applovin/impl/adview/m$27;

    iget-object v0, v0, Lcom/applovin/impl/adview/m$27;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->e(Lcom/applovin/impl/adview/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/m$27$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/applovin/impl/adview/m$27$1$1;-><init>(Lcom/applovin/impl/adview/m$27$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
