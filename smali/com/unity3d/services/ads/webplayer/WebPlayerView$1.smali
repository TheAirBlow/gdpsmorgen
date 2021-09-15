.class Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/webplayer/WebPlayerView;->subscribeOnLayoutChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$1;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->onLayoutChange()V

    .line 118
    return-void
.end method
