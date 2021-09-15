.class public final Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;
.super Ljava/lang/Object;
.source "CustomEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$1;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->data:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent;-><init>(Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$1;)V

    return-object v0
.end method

.method public putAllData(Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "vals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->data:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->data:Ljava/util/Map;

    .line 93
    :goto_0
    return-object p0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->data:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->data:Ljava/util/Map;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-object p0
.end method

.method public withCategory(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->category:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public withData(Ljava/util/Map;)Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->data:Ljava/util/Map;

    .line 84
    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/unity3d/services/monetization/placementcontent/core/CustomEvent$Builder;->type:Ljava/lang/String;

    .line 79
    return-object p0
.end method
