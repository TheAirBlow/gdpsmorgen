.class Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;
.super Ljava/lang/Thread;
.source "AdsModuleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;->initModuleState(Lcom/unity3d/services/core/configuration/Configuration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;

.field final synthetic val$configHost:Ljava/lang/String;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->this$0:Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;

    iput-object p2, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->val$configHost:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->this$0:Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;

    iget-object v2, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->val$configHost:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;->access$002(Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 58
    iget-object v1, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get address. Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->val$configHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    iget-object v1, p0, Lcom/unity3d/services/ads/configuration/AdsModuleConfiguration$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method
