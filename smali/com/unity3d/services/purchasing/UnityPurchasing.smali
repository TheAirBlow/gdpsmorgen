.class public Lcom/unity3d/services/purchasing/UnityPurchasing;
.super Ljava/lang/Object;
.source "UnityPurchasing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter()Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/unity3d/services/purchasing/core/properties/ClientProperties;->getAdapter()Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static setAdapter(Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;)V
    .locals 0
    .param p0, "adapter"    # Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;

    .prologue
    .line 8
    invoke-static {p0}, Lcom/unity3d/services/purchasing/core/properties/ClientProperties;->setAdapter(Lcom/unity3d/services/purchasing/core/IPurchasingAdapter;)V

    .line 9
    return-void
.end method
