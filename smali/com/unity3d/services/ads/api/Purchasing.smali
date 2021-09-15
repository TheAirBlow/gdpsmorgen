.class public Lcom/unity3d/services/ads/api/Purchasing;
.super Ljava/lang/Object;
.source "Purchasing.java"


# static fields
.field public static purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPromoCatalog(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v0, Lcom/unity3d/services/ads/api/Purchasing$3;

    invoke-direct {v0}, Lcom/unity3d/services/ads/api/Purchasing$3;-><init>()V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    sget-object v0, Lcom/unity3d/services/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/unity3d/ads/purchasing/PurchasingError;->PURCHASE_INTERFACE_NULL:Lcom/unity3d/ads/purchasing/PurchasingError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getPromoVersion(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Lcom/unity3d/services/ads/api/Purchasing$2;

    invoke-direct {v0}, Lcom/unity3d/services/ads/api/Purchasing$2;-><init>()V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    sget-object v0, Lcom/unity3d/services/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    .line 48
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/unity3d/ads/purchasing/PurchasingError;->PURCHASE_INTERFACE_NULL:Lcom/unity3d/ads/purchasing/PurchasingError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static initializePurchasing(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    new-instance v0, Lcom/unity3d/services/ads/api/Purchasing$4;

    invoke-direct {v0}, Lcom/unity3d/services/ads/api/Purchasing$4;-><init>()V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    sget-object v0, Lcom/unity3d/services/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    .line 86
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/unity3d/ads/purchasing/PurchasingError;->PURCHASE_INTERFACE_NULL:Lcom/unity3d/ads/purchasing/PurchasingError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static initiatePurchasingCommand(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "eventString"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/services/core/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 19
    new-instance v0, Lcom/unity3d/services/ads/api/Purchasing$1;

    invoke-direct {v0, p0}, Lcom/unity3d/services/ads/api/Purchasing$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    sget-object v0, Lcom/unity3d/services/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    .line 29
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/unity3d/ads/purchasing/PurchasingError;->PURCHASE_INTERFACE_NULL:Lcom/unity3d/ads/purchasing/PurchasingError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setPurchasingInterface(Lcom/unity3d/ads/purchasing/IPurchasing;)V
    .locals 0
    .param p0, "purchasing"    # Lcom/unity3d/ads/purchasing/IPurchasing;

    .prologue
    .line 14
    sput-object p0, Lcom/unity3d/services/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    .line 15
    return-void
.end method
