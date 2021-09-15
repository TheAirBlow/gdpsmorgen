.class public Lcom/unity3d/services/ar/view/ARView;
.super Lcom/unity3d/services/ar/view/GLSurfaceView;
.source "ARView.java"

# interfaces
.implements Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final FRAME_UPDATE_TIMEOUT:J = 0x1f4L


# instance fields
.field private _anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ar/core/Anchor;",
            ">;"
        }
    .end annotation
.end field

.field private _arFar:F

.field private _arNear:F

.field private _backgroundRenderer:Lcom/unity3d/services/ar/view/BackgroundRenderer;

.field private _detectedPlanes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/ar/core/Plane;",
            ">;"
        }
    .end annotation
.end field

.field private _displayRotationHelper:Lcom/unity3d/services/ar/view/DisplayRotationHelper;

.field private _drawNextCameraFrame:Z

.field _frameInfo:Lorg/json/JSONObject;

.field _lightEstimate:Lorg/json/JSONObject;

.field _orientation:Lorg/json/JSONArray;

.field _orientationArray:[F

.field _planeMatrix:[F

.field _planeVertices:[F

.field _position:Lorg/json/JSONArray;

.field _projectionMatrix:Lorg/json/JSONArray;

.field _projectionMatrixArray:[F

.field private _session:Lcom/google/ar/core/Session;

.field private _sessionRunning:Z

.field private _sessionWasRunning:Z

.field private _shouldSendResize:Z

.field private _showCameraFrame:Z

.field private _timeOfLastDrawnCameraFrame:J

.field _viewMatrix:Lorg/json/JSONArray;

.field _viewMatrixArray:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x10

    const/16 v1, 0x8

    .line 73
    invoke-direct {p0, p1}, Lcom/unity3d/services/ar/view/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    .line 47
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/unity3d/services/ar/view/ARView;->_arNear:F

    .line 48
    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Lcom/unity3d/services/ar/view/ARView;->_arFar:F

    .line 50
    new-instance v0, Lcom/unity3d/services/ar/view/BackgroundRenderer;

    invoke-direct {v0}, Lcom/unity3d/services/ar/view/BackgroundRenderer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_backgroundRenderer:Lcom/unity3d/services/ar/view/BackgroundRenderer;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_detectedPlanes:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_anchors:Ljava/util/Map;

    .line 57
    iput-boolean v6, p0, Lcom/unity3d/services/ar/view/ARView;->_shouldSendResize:Z

    .line 60
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_projectionMatrixArray:[F

    .line 61
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_viewMatrixArray:[F

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_orientationArray:[F

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_planeVertices:[F

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_frameInfo:Lorg/json/JSONObject;

    .line 65
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_position:Lorg/json/JSONArray;

    .line 66
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_orientation:Lorg/json/JSONArray;

    .line 67
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_viewMatrix:Lorg/json/JSONArray;

    .line 68
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_projectionMatrix:Lorg/json/JSONArray;

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_lightEstimate:Lorg/json/JSONObject;

    .line 70
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_planeMatrix:[F

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    .line 76
    invoke-virtual {p0, v7}, Lcom/unity3d/services/ar/view/ARView;->setPreserveEGLContextOnPause(Z)V

    .line 78
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unity3d/services/ar/view/ARView;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 79
    invoke-virtual/range {v0 .. v6}, Lcom/unity3d/services/ar/view/ARView;->setEGLConfigChooser(IIIIII)V

    .line 80
    invoke-virtual {p0, p0}, Lcom/unity3d/services/ar/view/ARView;->setRenderer(Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;)V

    .line 81
    invoke-virtual {p0, v6}, Lcom/unity3d/services/ar/view/ARView;->setRenderMode(I)V

    .line 82
    invoke-virtual {p0, v7}, Lcom/unity3d/services/ar/view/ARView;->setPreserveEGLContextOnPause(Z)V

    .line 84
    new-instance v0, Lcom/unity3d/services/ar/view/DisplayRotationHelper;

    invoke-direct {v0, p1}, Lcom/unity3d/services/ar/view/DisplayRotationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_displayRotationHelper:Lcom/unity3d/services/ar/view/DisplayRotationHelper;

    .line 85
    return-void
.end method

.method private static getPlaneVertices(Lcom/google/ar/core/Plane;[F)V
    .locals 4
    .param p0, "plane"    # Lcom/google/ar/core/Plane;
    .param p1, "planeVertices"    # [F

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/ar/core/Plane;->getExtentX()F

    move-result v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 289
    const/4 v0, 0x1

    aput v3, p1, v0

    .line 290
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/ar/core/Plane;->getExtentZ()F

    move-result v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 292
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/ar/core/Plane;->getExtentX()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 293
    const/4 v0, 0x4

    aput v3, p1, v0

    .line 294
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/ar/core/Plane;->getExtentZ()F

    move-result v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 296
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/ar/core/Plane;->getExtentX()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 297
    const/4 v0, 0x7

    aput v3, p1, v0

    .line 298
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/ar/core/Plane;->getExtentZ()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 300
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/ar/core/Plane;->getExtentX()F

    move-result v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 301
    const/16 v0, 0xa

    aput v3, p1, v0

    .line 302
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/ar/core/Plane;->getExtentZ()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 303
    return-void
.end method

.method private static matrix4x4ToQuaternion([F[F)V
    .locals 12
    .param p0, "m"    # [F
    .param p1, "q"    # [F

    .prologue
    const/4 v11, 0x3

    const/4 v3, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 412
    const/16 v1, 0xa

    aget v1, p0, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 413
    aget v1, p0, v8

    aget v2, p0, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 414
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p0, v8

    add-float/2addr v1, v2

    aget v2, p0, v3

    sub-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    sub-float v0, v1, v2

    .line 415
    .local v0, "t":F
    aput v0, p1, v8

    .line 416
    aget v1, p0, v9

    const/4 v2, 0x4

    aget v2, p0, v2

    add-float/2addr v1, v2

    aput v1, p1, v9

    .line 417
    const/16 v1, 0x8

    aget v1, p0, v1

    aget v2, p0, v10

    add-float/2addr v1, v2

    aput v1, p1, v10

    .line 418
    const/4 v1, 0x6

    aget v1, p0, v1

    const/16 v2, 0x9

    aget v2, p0, v2

    sub-float/2addr v1, v2

    aput v1, p1, v11

    .line 442
    :goto_0
    aget v1, p1, v8

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v1, v2

    aput v1, p1, v8

    .line 443
    aget v1, p1, v9

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v1, v2

    aput v1, p1, v9

    .line 444
    aget v1, p1, v10

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v1, v2

    aput v1, p1, v10

    .line 445
    aget v1, p1, v11

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v1, v2

    aput v1, p1, v11

    .line 446
    return-void

    .line 420
    .end local v0    # "t":F
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p0, v8

    sub-float/2addr v1, v2

    aget v2, p0, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    sub-float v0, v1, v2

    .line 421
    .restart local v0    # "t":F
    aget v1, p0, v9

    const/4 v2, 0x4

    aget v2, p0, v2

    add-float/2addr v1, v2

    aput v1, p1, v8

    .line 422
    aput v0, p1, v9

    .line 423
    const/4 v1, 0x6

    aget v1, p0, v1

    const/16 v2, 0x9

    aget v2, p0, v2

    add-float/2addr v1, v2

    aput v1, p1, v10

    .line 424
    const/16 v1, 0x8

    aget v1, p0, v1

    aget v2, p0, v10

    sub-float/2addr v1, v2

    aput v1, p1, v11

    goto :goto_0

    .line 427
    .end local v0    # "t":F
    :cond_1
    aget v1, p0, v8

    aget v2, p0, v3

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 428
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p0, v8

    sub-float/2addr v1, v2

    aget v2, p0, v3

    sub-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    add-float v0, v1, v2

    .line 429
    .restart local v0    # "t":F
    const/16 v1, 0x8

    aget v1, p0, v1

    aget v2, p0, v10

    add-float/2addr v1, v2

    aput v1, p1, v8

    .line 430
    const/4 v1, 0x6

    aget v1, p0, v1

    const/16 v2, 0x9

    aget v2, p0, v2

    add-float/2addr v1, v2

    aput v1, p1, v9

    .line 431
    aput v0, p1, v10

    .line 432
    aget v1, p0, v9

    const/4 v2, 0x4

    aget v2, p0, v2

    sub-float/2addr v1, v2

    aput v1, p1, v11

    goto/16 :goto_0

    .line 434
    .end local v0    # "t":F
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p0, v8

    add-float/2addr v1, v2

    aget v2, p0, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    add-float v0, v1, v2

    .line 435
    .restart local v0    # "t":F
    const/4 v1, 0x6

    aget v1, p0, v1

    const/16 v2, 0x9

    aget v2, p0, v2

    sub-float/2addr v1, v2

    aput v1, p1, v8

    .line 436
    const/16 v1, 0x8

    aget v1, p0, v1

    aget v2, p0, v10

    sub-float/2addr v1, v2

    aput v1, p1, v9

    .line 437
    aget v1, p0, v9

    const/4 v2, 0x4

    aget v2, p0, v2

    sub-float/2addr v1, v2

    aput v1, p1, v10

    .line 438
    aput v0, p1, v11

    goto/16 :goto_0
.end method

.method private static matrix4x4ToTranslation([F[F)V
    .locals 2
    .param p0, "m"    # [F
    .param p1, "t"    # [F

    .prologue
    .line 449
    const/4 v0, 0x0

    const/4 v1, 0x3

    aget v1, p0, v1

    aput v1, p1, v0

    .line 450
    const/4 v0, 0x1

    const/4 v1, 0x7

    aget v1, p0, v1

    aput v1, p1, v0

    .line 451
    const/4 v0, 0x2

    const/16 v1, 0xb

    aget v1, p0, v1

    aput v1, p1, v0

    .line 452
    return-void
.end method

.method private varargs sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventType"    # Lcom/unity3d/services/ar/AREvent;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 121
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    .line 123
    .local v0, "webViewApp":Lcom/unity3d/services/core/webview/WebViewApp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->AR:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    invoke-virtual {v0, v1, p1, p2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updatePlanes(Ljava/util/Collection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ar/core/Plane;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "planes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/ar/core/Plane;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 241
    .local v0, "addedPlanesArray":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 242
    .local v8, "updatedPlanesArray":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 243
    .local v7, "removedPlanesArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ar/core/Plane;

    .line 245
    .local v3, "plane":Lcom/google/ar/core/Plane;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v2, "p":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getCenterPose()Lcom/google/ar/core/Pose;

    move-result-object v10

    iget-object v11, p0, Lcom/unity3d/services/ar/view/ARView;->_planeMatrix:[F

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    .line 247
    new-instance v5, Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/unity3d/services/ar/view/ARView;->_planeMatrix:[F

    invoke-direct {v5, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 248
    .local v5, "planeMatrixArray":Lorg/json/JSONArray;
    const-string v10, "modelMatrix"

    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v10, "identifier"

    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 251
    .local v4, "planeExtentArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getExtentX()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 252
    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getExtentZ()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 253
    const-string v10, "extent"

    invoke-virtual {v2, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    iget-object v10, p0, Lcom/unity3d/services/ar/view/ARView;->_planeVertices:[F

    invoke-static {v3, v10}, Lcom/unity3d/services/ar/view/ARView;->getPlaneVertices(Lcom/google/ar/core/Plane;[F)V

    .line 255
    new-instance v6, Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/unity3d/services/ar/view/ARView;->_planeVertices:[F

    invoke-direct {v6, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 256
    .local v6, "planeVerticesArray":Lorg/json/JSONArray;
    const-string v10, "vertices"

    invoke-virtual {v2, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v10, "alignment"

    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getType()Lcom/google/ar/core/Plane$Type;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/ar/core/Plane$Type;->ordinal()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getSubsumedBy()Lcom/google/ar/core/Plane;

    move-result-object v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/unity3d/services/ar/view/ARView;->_detectedPlanes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    .line 259
    iget-object v10, p0, Lcom/unity3d/services/ar/view/ARView;->_detectedPlanes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 260
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 269
    .end local v2    # "p":Lorg/json/JSONObject;
    .end local v4    # "planeExtentArray":Lorg/json/JSONArray;
    .end local v5    # "planeMatrixArray":Lorg/json/JSONArray;
    .end local v6    # "planeVerticesArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Lorg/json/JSONException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error updating AR planes: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "p":Lorg/json/JSONObject;
    .restart local v4    # "planeExtentArray":Lorg/json/JSONArray;
    .restart local v5    # "planeMatrixArray":Lorg/json/JSONArray;
    .restart local v6    # "planeVerticesArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getSubsumedBy()Lcom/google/ar/core/Plane;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 263
    iget-object v10, p0, Lcom/unity3d/services/ar/view/ARView;->_detectedPlanes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 264
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 266
    :cond_3
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 274
    .end local v2    # "p":Lorg/json/JSONObject;
    .end local v3    # "plane":Lcom/google/ar/core/Plane;
    .end local v4    # "planeExtentArray":Lorg/json/JSONArray;
    .end local v5    # "planeMatrixArray":Lorg/json/JSONArray;
    .end local v6    # "planeVerticesArray":Lorg/json/JSONArray;
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 275
    sget-object v9, Lcom/unity3d/services/ar/AREvent;->AR_PLANES_ADDED:Lcom/unity3d/services/ar/AREvent;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {p0, v9, v10}, Lcom/unity3d/services/ar/view/ARView;->sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V

    .line 278
    :cond_5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 279
    sget-object v9, Lcom/unity3d/services/ar/AREvent;->AR_PLANES_UPDATED:Lcom/unity3d/services/ar/AREvent;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {p0, v9, v10}, Lcom/unity3d/services/ar/view/ARView;->sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V

    .line 282
    :cond_6
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 283
    sget-object v9, Lcom/unity3d/services/ar/AREvent;->AR_PLANES_REMOVED:Lcom/unity3d/services/ar/AREvent;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {p0, v9, v10}, Lcom/unity3d/services/ar/view/ARView;->sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addAnchor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "matrix"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x10

    .line 367
    iget-object v8, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    if-nez v8, :cond_0

    .line 368
    const-string v8, "Session is null. Not adding anchor."

    invoke-static {v8}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 372
    :cond_0
    const-string v8, ","

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "floats":[Ljava/lang/String;
    array-length v8, v2

    if-eq v8, v9, :cond_1

    .line 374
    const-string v8, "Matrix doesn\'t have 16 elements. Not adding anchor."

    invoke-static {v8}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    new-array v1, v9, [F

    .line 379
    .local v1, "anchorMatrix":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v9, :cond_2

    .line 381
    :try_start_0
    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 382
    :catch_0
    move-exception v4

    .line 383
    .local v4, "ignored":Ljava/lang/NumberFormatException;
    const-string v8, "Cannot parse matrix. Not adding anchor."

    invoke-static {v8}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    .end local v4    # "ignored":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, 0x4

    new-array v6, v8, [F

    .line 389
    .local v6, "quaternion":[F
    invoke-static {v1, v6}, Lcom/unity3d/services/ar/view/ARView;->matrix4x4ToQuaternion([F[F)V

    .line 390
    const/4 v8, 0x3

    new-array v7, v8, [F

    .line 391
    .local v7, "translation":[F
    invoke-static {v1, v7}, Lcom/unity3d/services/ar/view/ARView;->matrix4x4ToTranslation([F[F)V

    .line 393
    new-instance v5, Lcom/google/ar/core/Pose;

    invoke-direct {v5, v7, v6}, Lcom/google/ar/core/Pose;-><init>([F[F)V

    .line 394
    .local v5, "pose":Lcom/google/ar/core/Pose;
    iget-object v8, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-virtual {v8, v5}, Lcom/google/ar/core/Session;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object v0

    .line 395
    .local v0, "a":Lcom/google/ar/core/Anchor;
    iget-object v8, p0, Lcom/unity3d/services/ar/view/ARView;->_anchors:Ljava/util/Map;

    invoke-interface {v8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getArFar()F
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/unity3d/services/ar/view/ARView;->_arFar:F

    return v0
.end method

.method public getArNear()F
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/unity3d/services/ar/view/ARView;->_arNear:F

    return v0
.end method

.method public getShowCameraFrame()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/ARView;->_showCameraFrame:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/unity3d/services/ar/view/ARView;->_shouldSendResize:Z

    if-eqz v14, :cond_1

    .line 149
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v12

    .line 150
    .local v12, "webViewApp":Lcom/unity3d/services/core/webview/WebViewApp;
    if-eqz v12, :cond_0

    .line 151
    invoke-virtual {v12}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/unity3d/services/core/webview/WebView;->getWidth()I

    move-result v14

    int-to-float v13, v14

    .line 152
    .local v13, "width":F
    invoke-virtual {v12}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/unity3d/services/core/webview/WebView;->getHeight()I

    move-result v14

    int-to-float v7, v14

    .line 153
    .local v7, "height":F
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-lez v14, :cond_0

    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-lez v14, :cond_0

    .line 154
    sget-object v14, Lcom/unity3d/services/ar/AREvent;->AR_WINDOW_RESIZED:Lcom/unity3d/services/ar/AREvent;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/unity3d/services/ar/view/ARView;->sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V

    .line 158
    .end local v7    # "height":F
    .end local v13    # "width":F
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/unity3d/services/ar/view/ARView;->_shouldSendResize:Z

    .line 161
    .end local v12    # "webViewApp":Lcom/unity3d/services/core/webview/WebViewApp;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/unity3d/services/ar/view/ARView;->_sessionRunning:Z

    if-eqz v14, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unity3d/services/ar/view/ARView;->_backgroundRenderer:Lcom/unity3d/services/ar/view/BackgroundRenderer;

    invoke-virtual {v15}, Lcom/unity3d/services/ar/view/BackgroundRenderer;->getTextureId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/ar/core/Session;->setCameraTextureName(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_displayRotationHelper:Lcom/unity3d/services/ar/view/DisplayRotationHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-virtual {v14, v15}, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->updateSessionIfNeeded(Lcom/google/ar/core/Session;)V

    .line 167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-virtual {v14}, Lcom/google/ar/core/Session;->update()Lcom/google/ar/core/Frame;

    move-result-object v6

    .line 168
    .local v6, "frame":Lcom/google/ar/core/Frame;
    invoke-virtual {v6}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/CameraNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/NotYetAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 177
    .local v2, "camera":Lcom/google/ar/core/Camera;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 178
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/unity3d/services/ar/view/ARView;->_timeOfLastDrawnCameraFrame:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 179
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/unity3d/services/ar/view/ARView;->_timeOfLastDrawnCameraFrame:J

    .line 182
    :cond_2
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/unity3d/services/ar/view/ARView;->_timeOfLastDrawnCameraFrame:J

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_projectionMatrixArray:[F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/unity3d/services/ar/view/ARView;->_arNear:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/unity3d/services/ar/view/ARView;->_arFar:F

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Lcom/google/ar/core/Camera;->getProjectionMatrix([FIFF)V

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_viewMatrixArray:[F

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Lcom/google/ar/core/Camera;->getViewMatrix([FI)V

    .line 187
    invoke-virtual {v6}, Lcom/google/ar/core/Frame;->getLightEstimate()Lcom/google/ar/core/LightEstimate;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/ar/core/LightEstimate;->getPixelIntensity()F

    move-result v9

    .line 189
    .local v9, "lightIntensity":F
    invoke-virtual {v2}, Lcom/google/ar/core/Camera;->getDisplayOrientedPose()Lcom/google/ar/core/Pose;

    move-result-object v10

    .line 190
    .local v10, "pose":Lcom/google/ar/core/Pose;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_orientationArray:[F

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Lcom/google/ar/core/Pose;->getRotationQuaternion([FI)V

    .line 193
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_position:Lorg/json/JSONArray;

    const/4 v15, 0x0

    invoke-virtual {v10}, Lcom/google/ar/core/Pose;->tx()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_position:Lorg/json/JSONArray;

    const/4 v15, 0x1

    invoke-virtual {v10}, Lcom/google/ar/core/Pose;->ty()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_position:Lorg/json/JSONArray;

    const/4 v15, 0x2

    invoke-virtual {v10}, Lcom/google/ar/core/Pose;->tz()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_frameInfo:Lorg/json/JSONObject;

    const-string v15, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/ARView;->_position:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v14, 0x4

    if-ge v8, v14, :cond_4

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_orientation:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unity3d/services/ar/view/ARView;->_orientationArray:[F

    aget v15, v15, v8

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v8, v0, v1}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 198
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 169
    .end local v2    # "camera":Lcom/google/ar/core/Camera;
    .end local v4    # "currentTime":J
    .end local v6    # "frame":Lcom/google/ar/core/Frame;
    .end local v8    # "i":I
    .end local v9    # "lightIntensity":F
    .end local v10    # "pose":Lcom/google/ar/core/Pose;
    :catch_0
    move-exception v3

    .line 170
    .local v3, "e":Lcom/google/ar/core/exceptions/CameraNotAvailableException;
    sget-object v14, Lcom/unity3d/services/ar/AREvent;->AR_ERROR:Lcom/unity3d/services/ar/AREvent;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Lcom/google/ar/core/exceptions/CameraNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/unity3d/services/ar/view/ARView;->sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V

    .line 233
    .end local v3    # "e":Lcom/google/ar/core/exceptions/CameraNotAvailableException;
    :cond_3
    :goto_1
    return-void

    .line 172
    :catch_1
    move-exception v3

    .line 173
    .local v3, "e":Lcom/google/ar/core/exceptions/NotYetAvailableException;
    sget-object v14, Lcom/unity3d/services/ar/AREvent;->AR_ERROR:Lcom/unity3d/services/ar/AREvent;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Lcom/google/ar/core/exceptions/NotYetAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/unity3d/services/ar/view/ARView;->sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    .end local v3    # "e":Lcom/google/ar/core/exceptions/NotYetAvailableException;
    .restart local v2    # "camera":Lcom/google/ar/core/Camera;
    .restart local v4    # "currentTime":J
    .restart local v6    # "frame":Lcom/google/ar/core/Frame;
    .restart local v8    # "i":I
    .restart local v9    # "lightIntensity":F
    .restart local v10    # "pose":Lcom/google/ar/core/Pose;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_frameInfo:Lorg/json/JSONObject;

    const-string v15, "orientation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/ARView;->_orientation:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const/4 v8, 0x0

    :goto_2
    const/16 v14, 0x10

    if-ge v8, v14, :cond_5

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_viewMatrix:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unity3d/services/ar/view/ARView;->_viewMatrixArray:[F

    aget v15, v15, v8

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v8, v0, v1}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 206
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_frameInfo:Lorg/json/JSONObject;

    const-string v15, "viewMatrix"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/ARView;->_viewMatrix:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const/4 v8, 0x0

    :goto_3
    const/16 v14, 0x10

    if-ge v8, v14, :cond_6

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_projectionMatrix:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unity3d/services/ar/view/ARView;->_projectionMatrixArray:[F

    aget v15, v15, v8

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v8, v0, v1}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    .line 208
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 211
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_frameInfo:Lorg/json/JSONObject;

    const-string v15, "projectionMatrix"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/ARView;->_projectionMatrix:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_lightEstimate:Lorg/json/JSONObject;

    const-string v15, "ambientIntensity"

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_lightEstimate:Lorg/json/JSONObject;

    const-string v15, "state"

    invoke-virtual {v6}, Lcom/google/ar/core/Frame;->getLightEstimate()Lcom/google/ar/core/LightEstimate;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/ar/core/LightEstimate;->getState()Lcom/google/ar/core/LightEstimate$State;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/ar/core/LightEstimate$State;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_frameInfo:Lorg/json/JSONObject;

    const-string v15, "lightEstimate"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/ARView;->_lightEstimate:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    .end local v8    # "i":I
    :goto_4
    sget-object v14, Lcom/unity3d/services/ar/AREvent;->AR_FRAME_UPDATED:Lcom/unity3d/services/ar/AREvent;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/ARView;->_frameInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/unity3d/services/ar/view/ARView;->sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V

    .line 221
    const-class v14, Lcom/google/ar/core/Plane;

    invoke-virtual {v6, v14}, Lcom/google/ar/core/Frame;->getUpdatedTrackables(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v11

    .line 222
    .local v11, "updatedTrackables":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/ar/core/Plane;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/unity3d/services/ar/view/ARView;->updatePlanes(Ljava/util/Collection;)V

    .line 224
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/unity3d/services/ar/view/ARView;->_showCameraFrame:Z

    if-eqz v14, :cond_3

    .line 230
    const/16 v14, 0x4000

    invoke-static {v14}, Landroid/opengl/GLES20;->glClear(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unity3d/services/ar/view/ARView;->_backgroundRenderer:Lcom/unity3d/services/ar/view/BackgroundRenderer;

    invoke-virtual {v14, v6}, Lcom/unity3d/services/ar/view/BackgroundRenderer;->draw(Lcom/google/ar/core/Frame;)V

    goto/16 :goto_1

    .line 217
    .end local v11    # "updatedTrackables":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/ar/core/Plane;>;"
    :catch_2
    move-exception v14

    goto :goto_4
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView;->onPause()V

    .line 107
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/ARView;->_sessionRunning:Z

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/ARView;->_sessionWasRunning:Z

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/ARView;->_sessionRunning:Z

    .line 111
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-virtual {v1}, Lcom/google/ar/core/Session;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_displayRotationHelper:Lcom/unity3d/services/ar/view/DisplayRotationHelper;

    invoke-virtual {v1}, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->onPause()V

    .line 118
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error pausing AR session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView;->onResume()V

    .line 91
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/ARView;->_sessionWasRunning:Z

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-virtual {v1}, Lcom/google/ar/core/Session;->resume()V

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/ARView;->_sessionRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_displayRotationHelper:Lcom/unity3d/services/ar/view/DisplayRotationHelper;

    invoke-virtual {v1}, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->onResume()V

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error resuming AR session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 140
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_displayRotationHelper:Lcom/unity3d/services/ar/view/DisplayRotationHelper;

    invoke-virtual {v0, p2, p3}, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->onSurfaceChanged(II)V

    .line 142
    sget-object v0, Lcom/unity3d/services/ar/AREvent;->AR_WINDOW_RESIZED:Lcom/unity3d/services/ar/AREvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    int-to-float v3, p3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/unity3d/services/ar/view/ARView;->sendToWebView(Lcom/unity3d/services/ar/AREvent;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x0

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 133
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_backgroundRenderer:Lcom/unity3d/services/ar/view/BackgroundRenderer;

    invoke-virtual {v0}, Lcom/unity3d/services/ar/view/BackgroundRenderer;->createOnGlThread()V

    .line 134
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 135
    return-void
.end method

.method public pauseSession()V
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/ARView;->_sessionRunning:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->pause()V

    .line 336
    :cond_0
    return-void
.end method

.method public removeAnchor(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_anchors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_anchors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ar/core/Anchor;

    .line 401
    .local v0, "a":Lcom/google/ar/core/Anchor;
    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->detach()V

    .line 402
    iget-object v1, p0, Lcom/unity3d/services/ar/view/ARView;->_anchors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v0    # "a":Lcom/google/ar/core/Anchor;
    :goto_0
    return-void

    .line 404
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Anchor with identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restartSession(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "properties"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 306
    iget-object v3, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    if-nez v3, :cond_0

    .line 308
    :try_start_0
    new-instance v3, Lcom/google/ar/core/Session;

    invoke-virtual {p0}, Lcom/unity3d/services/ar/view/ARView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/ar/core/Session;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    .line 309
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/unity3d/services/ar/view/ARView;->_shouldSendResize:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    const-string v3, "configuration"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 317
    .local v1, "configProps":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-static {v1, v3}, Lcom/unity3d/services/ar/ARUtils;->createConfiguration(Lorg/json/JSONObject;Lcom/google/ar/core/Session;)Lcom/google/ar/core/Config;

    move-result-object v0

    .line 318
    .local v0, "config":Lcom/google/ar/core/Config;
    iget-object v3, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-virtual {v3, v0}, Lcom/google/ar/core/Session;->configure(Lcom/google/ar/core/Config;)V

    .line 319
    iget-object v3, p0, Lcom/unity3d/services/ar/view/ARView;->_session:Lcom/google/ar/core/Session;

    invoke-virtual {v3}, Lcom/google/ar/core/Session;->resume()V

    .line 320
    iput-boolean v5, p0, Lcom/unity3d/services/ar/view/ARView;->_sessionRunning:Z

    .line 322
    iget-object v3, p0, Lcom/unity3d/services/ar/view/ARView;->_displayRotationHelper:Lcom/unity3d/services/ar/view/DisplayRotationHelper;

    invoke-virtual {v3}, Lcom/unity3d/services/ar/view/DisplayRotationHelper;->onResume()V

    .line 324
    new-instance v3, Lcom/unity3d/services/ar/view/ARView$1;

    invoke-direct {v3, p0}, Lcom/unity3d/services/ar/view/ARView$1;-><init>(Lcom/unity3d/services/ar/view/ARView;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v3, v4, v5}, Lcom/unity3d/services/ar/view/ARView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    .end local v0    # "config":Lcom/google/ar/core/Config;
    .end local v1    # "configProps":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error creating ARCore session"

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArFar(F)V
    .locals 0
    .param p1, "arFar"    # F

    .prologue
    .line 363
    iput p1, p0, Lcom/unity3d/services/ar/view/ARView;->_arFar:F

    .line 364
    return-void
.end method

.method public setArNear(F)V
    .locals 0
    .param p1, "arNear"    # F

    .prologue
    .line 355
    iput p1, p0, Lcom/unity3d/services/ar/view/ARView;->_arNear:F

    .line 356
    return-void
.end method

.method public setDrawNextCameraFrame()V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/unity3d/services/ar/view/ARView;->requestRender()V

    .line 340
    return-void
.end method

.method public setShowCameraFrame(Z)V
    .locals 0
    .param p1, "showCameraFrame"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/unity3d/services/ar/view/ARView;->_showCameraFrame:Z

    .line 348
    return-void
.end method
