.class Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ar/view/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1940
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/ar/view/GLSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/services/ar/view/GLSurfaceView$1;

    .prologue
    .line 1939
    invoke-direct {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method


# virtual methods
.method public releaseEglContextLocked(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V
    .locals 0
    .param p1, "thread"    # Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;

    .prologue
    .line 1955
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1956
    return-void
.end method

.method public declared-synchronized threadExiting(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;

    .prologue
    .line 1946
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->access$1102(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;Z)Z

    .line 1947
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1948
    monitor-exit p0

    return-void

    .line 1946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
