.class final Lcom/unity3d/services/banners/UnityBanners$2;
.super Ljava/lang/Object;
.source "UnityBanners.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/UnityBanners;->sendError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/unity3d/services/banners/UnityBanners$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;

    move-result-object v0

    .line 138
    .local v0, "listener":Lcom/unity3d/services/banners/IUnityBannerListener;
    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$2;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/services/banners/IUnityBannerListener;->onUnityBannerError(Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method