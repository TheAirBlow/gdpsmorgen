.class public Lcom/unity3d/services/store/StoreLifecycleListener;
.super Ljava/lang/Object;
.source "StoreLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private _exceptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _purchaseTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _trackAllActivities:Z


# direct methods
.method public constructor <init>(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "trackAllActivities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "purchaseTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_trackAllActivities:Z

    .line 18
    iput-object p2, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_exceptions:Ljava/util/ArrayList;

    .line 19
    iput-object p3, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_purchaseTypes:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "isException":Z
    iget-object v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_exceptions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_exceptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 43
    :cond_0
    iget-boolean v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_trackAllActivities:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_trackAllActivities:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_purchaseTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_purchaseTypes:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/unity3d/services/store/StoreMonitor;->sendPurchaseStatusOnResume(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    :cond_3
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "isException":Z
    iget-object v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_exceptions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_exceptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 65
    :cond_0
    iget-boolean v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_trackAllActivities:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_trackAllActivities:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_purchaseTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/store/StoreLifecycleListener;->_purchaseTypes:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/unity3d/services/store/StoreMonitor;->sendPurchaseStatusOnStop(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    :cond_3
    return-void
.end method
