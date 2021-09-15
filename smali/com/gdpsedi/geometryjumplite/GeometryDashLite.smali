.class public Lcom/gdpsedi/geometryjumplite/GeometryDashLite;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "GeometryDashLite.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "fmod"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    const-string v0, "modloader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    const-string v0, "cocos2dcpp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    const-string v0, "gdkit"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    const-string v0, "androidml"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqAlDXsMhKnag5i4WBWu0gZ1UfW4kVORh3p6g2mZ5Z40uA2XRtTycXYBNX23iHWbfn/VKY7BiEpeMe2iiMX5Xv7i6JePnnHDYv4EdBOvzG6q8oRzQEqcNzTN19UhnQBc6oRQ+h24deSMJ1hcq5VTlocZx5QrrQqKJ3ywfdqkA0LbheKVUPOI2CHPa9fIFmftFIpRFLYfo521TIsLABRTb1fEly/9pW33Fzrbpu34rXX/8v0NcSLrIiEvH4fsrw8ycvyKsmqrLR0u90VW7hth4jZRNwz4hjUBISWgtqvFCWlFpU/dveP/9i0Y+ModV1HXq1rKHPx82R0fwsK6YKYC0nQIDAQAB"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-static {p0}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    .line 39
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Lcom/customRobTop/GameAdManager;

    invoke-direct {v0}, Lcom/customRobTop/GameAdManager;-><init>()V

    sput-object v0, Lcom/gdpsedi/geometryjumplite/GeometryDashLite;->GAM_:Lcom/customRobTop/GameAdManager;

    .line 42
    sget-object v0, Lcom/gdpsedi/geometryjumplite/GeometryDashLite;->GAM_:Lcom/customRobTop/GameAdManager;

    const-string v2, "ca-app-pub-5196608350275332/6222175000"

    const-string v3, "52358da117ba475e1c000001"

    const-string v4, "d6921b0bd1ae894abe01631d068228fd08a0c448"

    const-string v5, "131624163"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/customRobTop/GameAdManager;->setup(Lcom/customRobTop/BaseRobTopActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 7

    .prologue
    const/4 v1, 0x5

    .line 46
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "glSurfaceView":Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 50
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 56
    invoke-static {}, Lorg/fmod/FMOD;->close()V

    .line 58
    return-void
.end method
