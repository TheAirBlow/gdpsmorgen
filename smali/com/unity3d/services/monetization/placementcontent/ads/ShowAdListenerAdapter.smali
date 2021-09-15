.class public abstract Lcom/unity3d/services/monetization/placementcontent/ads/ShowAdListenerAdapter;
.super Ljava/lang/Object;
.source "ShowAdListenerAdapter.java"

# interfaces
.implements Lcom/unity3d/services/monetization/placementcontent/ads/IShowAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFinished(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 0
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "withState"    # Lcom/unity3d/ads/UnityAds$FinishState;

    .prologue
    .line 9
    return-void
.end method

.method public onAdStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 14
    return-void
.end method
