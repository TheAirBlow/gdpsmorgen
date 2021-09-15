.class Lcom/applovin/impl/adview/AdViewControllerImpl$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/AdViewControllerImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl$2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl$2;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$2$1;->a:Lcom/applovin/impl/adview/AdViewControllerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl$2$1;->a:Lcom/applovin/impl/adview/AdViewControllerImpl$2;

    iget-object v0, v0, Lcom/applovin/impl/adview/AdViewControllerImpl$2;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->contractAd()V

    return-void
.end method
