.class public final Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;
.super Ljava/lang/Object;
.source "TransactionErrorDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private exceptionMessage:Ljava/lang/String;

.field private extras:Ljava/util/Map;
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

.field private store:Lcom/unity3d/services/purchasing/core/Store;

.field private storeSpecificErrorCode:Ljava/lang/String;

.field private transactionError:Lcom/unity3d/services/purchasing/core/TransactionError;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->extras:Ljava/util/Map;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;)Lcom/unity3d/services/purchasing/core/TransactionError;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->transactionError:Lcom/unity3d/services/purchasing/core/TransactionError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->exceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;)Lcom/unity3d/services/purchasing/core/Store;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->store:Lcom/unity3d/services/purchasing/core/Store;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->storeSpecificErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->extras:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails;-><init>(Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$1;)V

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->extras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object p0
.end method

.method public putExtras(Ljava/util/Map;)Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 77
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->extras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object p0
.end method

.method public withExceptionMessage(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->exceptionMessage:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public withStore(Lcom/unity3d/services/purchasing/core/Store;)Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;
    .locals 0
    .param p1, "val"    # Lcom/unity3d/services/purchasing/core/Store;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->store:Lcom/unity3d/services/purchasing/core/Store;

    .line 67
    return-object p0
.end method

.method public withStoreSpecificErrorCode(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->storeSpecificErrorCode:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public withTransactionError(Lcom/unity3d/services/purchasing/core/TransactionError;)Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;
    .locals 0
    .param p1, "val"    # Lcom/unity3d/services/purchasing/core/TransactionError;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/TransactionErrorDetails$Builder;->transactionError:Lcom/unity3d/services/purchasing/core/TransactionError;

    .line 57
    return-object p0
.end method
