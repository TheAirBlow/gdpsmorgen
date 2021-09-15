.class public Lcom/unity3d/services/ar/view/DisplayRotationHelper;
.super Ljava/lang/Object;
.source "DisplayRotationHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final display:Landroid/view/Display;

.field private viewportChanged:Z

.field private viewportHeight:I

.field private viewportWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->context:Landroid/content/Context;

    .line 23
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->display:Landroid/view/Display;

    .line 24
    return-void
.end method


# virtual methods
.method public getRotation()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->viewportChanged:Z

    .line 61
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 56
    return-void
.end method

.method onPause()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 32
    return-void
.end method

.method onResume()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 28
    return-void
.end method

.method onSurfaceChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->viewportWidth:I

    .line 36
    iput p2, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->viewportHeight:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->viewportChanged:Z

    .line 38
    return-void
.end method

.method updateSessionIfNeeded(Lcom/google/ar/core/Session;)V
    .locals 3
    .param p1, "session"    # Lcom/google/ar/core/Session;

    .prologue
    .line 41
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->viewportChanged:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 43
    .local v0, "displayRotation":I
    iget v1, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->viewportWidth:I

    iget v2, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->viewportHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ar/core/Session;->setDisplayGeometry(III)V

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->viewportChanged:Z

    .line 46
    .end local v0    # "displayRotation":I
    :cond_0
    return-void
.end method
