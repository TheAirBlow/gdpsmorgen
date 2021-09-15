.class public Lcom/unity3d/services/ar/view/ARViewHandler;
.super Ljava/lang/Object;
.source "ARViewHandler.java"

# interfaces
.implements Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;


# instance fields
.field private _arView:Lcom/unity3d/services/ar/view/ARView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z
    .locals 2
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-static {}, Lcom/unity3d/services/ar/ARCheck;->isFrameworkPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/unity3d/services/ar/view/ARView;

    invoke-direct {v0, p1}, Lcom/unity3d/services/ar/view/ARView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    goto :goto_0
.end method

.method public destroy()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    invoke-static {v0}, Lcom/unity3d/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 31
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    return-object v0
.end method

.method public onCreate(Lcom/unity3d/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/unity3d/services/ar/view/ARViewHandler;->create(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z

    .line 42
    return-void
.end method

.method public onDestroy(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/unity3d/services/ar/view/ARViewHandler;->destroy()Z

    .line 66
    :cond_0
    return-void
.end method

.method public onPause(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    invoke-virtual {v0}, Lcom/unity3d/services/ar/view/ARView;->onPause()V

    .line 60
    :cond_0
    return-void
.end method

.method public onResume(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARViewHandler;->_arView:Lcom/unity3d/services/ar/view/ARView;

    invoke-virtual {v0}, Lcom/unity3d/services/ar/view/ARView;->onResume()V

    .line 54
    :cond_0
    return-void
.end method

.method public onStart(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 45
    return-void
.end method

.method public onStop(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    .prologue
    .line 48
    return-void
.end method
