.class Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ads/webplayer/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavaScriptInvocation"
.end annotation


# instance fields
.field private _jsString:Ljava/lang/String;

.field private _webView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/webplayer/WebPlayerView;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 1
    .param p2, "jsString"    # Ljava/lang/String;
    .param p3, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v0, 0x0

    .line 216
    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->_webView:Landroid/webkit/WebView;

    .line 217
    iput-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->_webView:Landroid/webkit/WebView;

    .line 219
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 223
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 225
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 226
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    invoke-static {v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->access$300(Lcom/unity3d/services/ads/webplayer/WebPlayerView;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->_webView:Landroid/webkit/WebView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->this$0:Lcom/unity3d/services/ads/webplayer/WebPlayerView;

    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerView$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while processing JavaScriptString"

    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "Could not process JavaScript, the string is NULL"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
