.class Lcom/applovin/impl/adview/c$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/c;-><init>(Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/c;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/c$12;->a:Lcom/applovin/impl/adview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/c$12;->a:Lcom/applovin/impl/adview/c;

    invoke-static {v0}, Lcom/applovin/impl/adview/c;->a(Lcom/applovin/impl/adview/c;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "AdWebView"

    const-string v2, "Received a LongClick event."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
