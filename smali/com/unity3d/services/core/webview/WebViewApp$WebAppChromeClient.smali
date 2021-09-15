.class Lcom/unity3d/services/core/webview/WebViewApp$WebAppChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/webview/WebViewApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebAppChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/core/webview/WebViewApp;


# direct methods
.method private constructor <init>(Lcom/unity3d/services/core/webview/WebViewApp;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/unity3d/services/core/webview/WebViewApp$WebAppChromeClient;->this$0:Lcom/unity3d/services/core/webview/WebViewApp;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/core/webview/WebViewApp;Lcom/unity3d/services/core/webview/WebViewApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/services/core/webview/WebViewApp;
    .param p2, "x1"    # Lcom/unity3d/services/core/webview/WebViewApp$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/unity3d/services/core/webview/WebViewApp$WebAppChromeClient;-><init>(Lcom/unity3d/services/core/webview/WebViewApp;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 364
    move-object v1, p3

    .line 365
    .local v1, "sourceFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 368
    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "tmp":Ljava/io/File;
    .local v3, "tmp":Ljava/io/File;
    move-object v2, v3

    .line 374
    .end local v3    # "tmp":Ljava/io/File;
    .restart local v2    # "tmp":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_0

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 380
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JavaScript (sourceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", line="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 383
    :cond_1
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Could not handle sourceId"

    invoke-static {v4, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
