.class Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ar/view/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mDidDraw:Z

.field private mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unity3d/services/ar/view/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mRequestSwap:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unity3d/services/ar/view/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/unity3d/services/ar/view/GLSurfaceView;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1259
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1883
    iput-boolean v2, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1260
    iput v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWidth:I

    .line 1261
    iput v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHeight:I

    .line 1262
    iput-boolean v2, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1263
    iput v2, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1264
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1265
    iput-object p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1266
    return-void
.end method

.method static synthetic access$1102(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1257
    iput-boolean p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1307
    new-instance v22, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    .line 1308
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1309
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1310
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1313
    const/4 v10, 0x0

    .line 1314
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v4, 0x0

    .line 1315
    .local v4, "createEglContext":Z
    const/4 v5, 0x0

    .line 1316
    .local v5, "createEglSurface":Z
    const/4 v6, 0x0

    .line 1317
    .local v6, "createGlInterface":Z
    const/4 v12, 0x0

    .line 1318
    .local v12, "lostEglContext":Z
    const/16 v16, 0x0

    .line 1319
    .local v16, "sizeChanged":Z
    const/16 v21, 0x0

    .line 1320
    .local v21, "wantRenderNotification":Z
    const/4 v7, 0x0

    .line 1321
    .local v7, "doRenderNotification":Z
    const/4 v3, 0x0

    .line 1322
    .local v3, "askedToReleaseEglContext":Z
    const/4 v15, 0x0

    .line 1323
    .local v15, "shouldSwap":Z
    const/16 v20, 0x0

    .line 1324
    .local v20, "w":I
    const/4 v11, 0x0

    .line 1325
    .local v11, "h":I
    const/4 v8, 0x0

    .line 1326
    .local v8, "event":Ljava/lang/Runnable;
    const/4 v9, 0x0

    .line 1329
    .local v9, "finishDrawingRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1331
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1332
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1647
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23

    .line 1648
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1649
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1650
    monitor-exit v23

    .line 1332
    return-void

    .line 1650
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 1335
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_3

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/Runnable;

    move-object v8, v0

    .line 1508
    :cond_2
    :goto_2
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1510
    if-eqz v8, :cond_16

    .line 1511
    :try_start_4
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1512
    const/4 v8, 0x0

    .line 1513
    goto :goto_0

    .line 1341
    :cond_3
    const/4 v13, 0x0

    .line 1342
    .local v13, "pausing":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1343
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    .line 1345
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1352
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1356
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1357
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1358
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1359
    const/4 v3, 0x1

    .line 1363
    :cond_5
    if-eqz v12, :cond_6

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1366
    const/4 v12, 0x0

    .line 1370
    :cond_6
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1378
    :cond_7
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/unity3d/services/ar/view/GLSurfaceView;

    .line 1380
    .local v19, "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    if-nez v19, :cond_12

    const/4 v14, 0x0

    .line 1382
    .local v14, "preserveEglContextOnPause":Z
    :goto_3
    if-nez v14, :cond_8

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1391
    .end local v14    # "preserveEglContextOnPause":Z
    .end local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    .line 1395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1396
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1398
    :cond_9
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1399
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1400
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1404
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1408
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1409
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1412
    :cond_b
    if-eqz v7, :cond_c

    .line 1416
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1417
    const/4 v7, 0x0

    .line 1418
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1419
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1422
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1423
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1424
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1428
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 1431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    .line 1432
    if-eqz v3, :cond_13

    .line 1433
    const/4 v3, 0x0

    .line 1448
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 1449
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1450
    const/4 v5, 0x1

    .line 1451
    const/4 v6, 0x1

    .line 1452
    const/16 v16, 0x1

    .line 1455
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 1456
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 1457
    const/16 v16, 0x1

    .line 1458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWidth:I

    move/from16 v20, v0

    .line 1459
    move-object/from16 v0, p0

    iget v11, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHeight:I

    .line 1460
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1468
    const/4 v5, 0x1

    .line 1470
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1472
    :cond_10
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1473
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestSwap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 1474
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestSwap:Z

    .line 1475
    const/4 v15, 0x1

    .line 1477
    :cond_11
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1479
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1381
    .restart local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    :cond_12
    invoke-static/range {v19 .. v19}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$900(Lcom/unity3d/services/ar/view/GLSurfaceView;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v14

    goto/16 :goto_3

    .line 1436
    .end local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    :cond_13
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->start()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1441
    const/16 v22, 0x1

    :try_start_7
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1442
    const/4 v4, 0x1

    .line 1444
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 1508
    .end local v13    # "pausing":Z
    :catchall_1
    move-exception v22

    monitor-exit v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1647
    :catchall_2
    move-exception v22

    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23

    .line 1648
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1649
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1650
    monitor-exit v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1651
    throw v22

    .line 1437
    .restart local v13    # "pausing":Z
    :catch_0
    move-exception v18

    .line 1438
    .local v18, "t":Ljava/lang/RuntimeException;
    :try_start_a
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    .line 1439
    throw v18

    .line 1484
    .end local v18    # "t":Ljava/lang/RuntimeException;
    :cond_14
    if-eqz v9, :cond_15

    .line 1485
    const-string v22, "GLSurfaceView"

    const-string v24, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 1488
    const/4 v9, 0x0

    .line 1506
    :cond_15
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1516
    .end local v13    # "pausing":Z
    :cond_16
    if-eqz v5, :cond_17

    .line 1520
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 1521
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1522
    const/16 v22, 0x1

    :try_start_c
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1523
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1524
    monitor-exit v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1533
    const/4 v5, 0x0

    .line 1536
    :cond_17
    if-eqz v15, :cond_19

    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mDidDraw:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    .line 1537
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mDidDraw:Z

    .line 1538
    const/4 v15, 0x0

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->swap()I

    move-result v17

    .line 1540
    .local v17, "swapError":I
    sparse-switch v17, :sswitch_data_0

    .line 1554
    const-string v22, "GLThread"

    const-string v23, "eglSwapBuffers"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1556
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1557
    const/16 v22, 0x1

    :try_start_e
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1558
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1559
    monitor-exit v23

    goto/16 :goto_0

    :catchall_3
    move-exception v22

    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v22
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1524
    .end local v17    # "swapError":I
    :catchall_4
    move-exception v22

    :try_start_10
    monitor-exit v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v22

    .line 1526
    :cond_18
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1527
    const/16 v22, 0x1

    :try_start_12
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1528
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1529
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1530
    monitor-exit v23

    goto/16 :goto_0

    :catchall_5
    move-exception v22

    monitor-exit v23
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v22

    .line 1547
    .restart local v17    # "swapError":I
    :sswitch_1
    const/4 v12, 0x1

    .line 1548
    goto/16 :goto_0

    .line 1566
    .end local v17    # "swapError":I
    :cond_19
    if-eqz v6, :cond_1a

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v10, v0

    .line 1569
    const/4 v6, 0x0

    .line 1572
    :cond_1a
    if-eqz v4, :cond_1c

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/unity3d/services/ar/view/GLSurfaceView;

    .line 1577
    .restart local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    if-eqz v19, :cond_1b

    .line 1578
    invoke-static/range {v19 .. v19}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$1000(Lcom/unity3d/services/ar/view/GLSurfaceView;)Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v10, v1}, Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1580
    :cond_1b
    const/4 v4, 0x0

    .line 1583
    .end local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    :cond_1c
    if-eqz v16, :cond_1e

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/unity3d/services/ar/view/GLSurfaceView;

    .line 1588
    .restart local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    if-eqz v19, :cond_1d

    .line 1589
    invoke-static/range {v19 .. v19}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$1000(Lcom/unity3d/services/ar/view/GLSurfaceView;)Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v10, v1, v11}, Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1591
    :cond_1d
    const/16 v16, 0x0

    .line 1599
    .end local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/unity3d/services/ar/view/GLSurfaceView;

    .line 1600
    .restart local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    if-eqz v19, :cond_1f

    .line 1601
    invoke-static/range {v19 .. v19}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$1000(Lcom/unity3d/services/ar/view/GLSurfaceView;)Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1602
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mDidDraw:Z

    .line 1603
    if-eqz v9, :cond_1f

    .line 1604
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 1605
    const/4 v9, 0x0

    .line 1610
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    .line 1611
    const/4 v15, 0x0

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->swap()I

    move-result v17

    .line 1613
    .restart local v17    # "swapError":I
    sparse-switch v17, :sswitch_data_1

    .line 1627
    const-string v22, "GLThread"

    const-string v23, "eglSwapBuffers"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1629
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v23

    monitor-enter v23
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1630
    const/16 v22, 0x1

    :try_start_14
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1631
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 1632
    monitor-exit v23

    .line 1637
    .end local v17    # "swapError":I
    :cond_20
    :goto_5
    :sswitch_2
    if-eqz v21, :cond_0

    .line 1638
    const/4 v7, 0x1

    .line 1639
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1620
    .restart local v17    # "swapError":I
    :sswitch_3
    const/4 v12, 0x1

    .line 1621
    goto :goto_5

    .line 1632
    :catchall_6
    move-exception v22

    monitor-exit v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    throw v22
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1650
    .end local v17    # "swapError":I
    .end local v19    # "view":Lcom/unity3d/services/ar/view/GLSurfaceView;
    :catchall_7
    move-exception v22

    :try_start_16
    monitor-exit v23
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v22

    .line 1540
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch

    .line 1613
    :sswitch_data_1
    .sparse-switch
        0x3000 -> :sswitch_2
        0x300e -> :sswitch_3
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1659
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1300
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->finish()V

    .line 1302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1303
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    .line 1305
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1291
    iget-object v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1293
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1655
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1675
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1676
    :try_start_0
    iget v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1677
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1751
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1755
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1756
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1757
    :goto_0
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1762
    :try_start_1
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1767
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1768
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1771
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1775
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1776
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1777
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1778
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1779
    :goto_0
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1784
    :try_start_1
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1789
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1790
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1793
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1794
    :try_start_0
    iput p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWidth:I

    .line 1795
    iput p2, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHeight:I

    .line 1796
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1797
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1798
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1805
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1806
    monitor-exit v2

    .line 1824
    :goto_0
    return-void

    .line 1809
    :cond_0
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1812
    :goto_1
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_1

    .line 1813
    invoke-virtual {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1818
    :try_start_1
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1819
    :catch_0
    move-exception v0

    .line 1820
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1823
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1852
    if-nez p1, :cond_0

    .line 1853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1855
    :cond_0
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1856
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1858
    monitor-exit v1

    .line 1859
    return-void

    .line 1858
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1829
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1830
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1831
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    :goto_0
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1834
    :try_start_1
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1839
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1840
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1844
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1845
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1681
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1682
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1683
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1684
    monitor-exit v1

    .line 1685
    return-void

    .line 1684
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .prologue
    .line 1695
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1700
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1701
    monitor-exit v1

    .line 1711
    :goto_0
    return-void

    .line 1704
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1707
    iput-object p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1709
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1710
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1276
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    .line 1282
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v0

    .line 1280
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    .line 1281
    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1665
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1666
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_1
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1669
    :try_start_0
    iput p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1670
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1671
    monitor-exit v1

    .line 1672
    return-void

    .line 1671
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1714
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1718
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1719
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1720
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1721
    :goto_0
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1725
    :try_start_1
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1726
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1730
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1731
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1734
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1738
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1739
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1740
    :goto_0
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1742
    :try_start_1
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1747
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1748
    return-void
.end method

.method public swapBuffers()V
    .locals 2

    .prologue
    .line 1688
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1689
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestSwap:Z

    .line 1690
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1691
    monitor-exit v1

    .line 1692
    return-void

    .line 1691
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
