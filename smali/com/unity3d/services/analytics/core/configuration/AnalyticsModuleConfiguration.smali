.class public Lcom/unity3d/services/analytics/core/configuration/AnalyticsModuleConfiguration;
.super Ljava/lang/Object;
.source "AnalyticsModuleConfiguration.java"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IModuleConfiguration;


# static fields
.field private static final WEB_APP_API_CLASS_LIST:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/unity3d/services/analytics/core/api/Analytics;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/services/analytics/core/configuration/AnalyticsModuleConfiguration;->WEB_APP_API_CLASS_LIST:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/unity3d/services/analytics/core/configuration/AnalyticsModuleConfiguration;->WEB_APP_API_CLASS_LIST:[Ljava/lang/Class;

    return-object v0
.end method

.method public initCompleteState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public initErrorState(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public initModuleState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public resetState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/services/core/configuration/Configuration;

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
