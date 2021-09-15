.class public Lcom/unity3d/services/analytics/core/api/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field public static analyticsInterface:Lcom/unity3d/services/analytics/interfaces/IAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/analytics/core/api/Analytics;->analyticsInterface:Lcom/unity3d/services/analytics/interfaces/IAnalytics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtras(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 3
    .param p0, "extras"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 19
    sget-object v0, Lcom/unity3d/services/analytics/core/api/Analytics;->analyticsInterface:Lcom/unity3d/services/analytics/interfaces/IAnalytics;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/unity3d/services/analytics/core/api/Analytics$1;

    invoke-direct {v0, p0}, Lcom/unity3d/services/analytics/core/api/Analytics$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 26
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/unity3d/services/analytics/interfaces/AnalyticsError;->API_NOT_FOUND:Lcom/unity3d/services/analytics/interfaces/AnalyticsError;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setAnalyticsInterface(Lcom/unity3d/services/analytics/interfaces/IAnalytics;)V
    .locals 0
    .param p0, "analytics"    # Lcom/unity3d/services/analytics/interfaces/IAnalytics;

    .prologue
    .line 14
    sput-object p0, Lcom/unity3d/services/analytics/core/api/Analytics;->analyticsInterface:Lcom/unity3d/services/analytics/interfaces/IAnalytics;

    .line 15
    return-void
.end method
