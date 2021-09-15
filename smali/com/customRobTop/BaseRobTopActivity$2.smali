.class Lcom/customRobTop/BaseRobTopActivity$2;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->onToggleKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    sget-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->keyboardActive_:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->openIMEKeyboard()V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->closeIMEKeyboard()V

    goto :goto_0
.end method
