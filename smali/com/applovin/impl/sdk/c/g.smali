.class public Lcom/applovin/impl/sdk/c/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/applovin/impl/sdk/c/g;

.field public static final b:Lcom/applovin/impl/sdk/c/g;

.field public static final c:Lcom/applovin/impl/sdk/c/g;

.field public static final d:Lcom/applovin/impl/sdk/c/g;

.field public static final e:Lcom/applovin/impl/sdk/c/g;

.field public static final f:Lcom/applovin/impl/sdk/c/g;

.field public static final g:Lcom/applovin/impl/sdk/c/g;

.field public static final h:Lcom/applovin/impl/sdk/c/g;

.field public static final i:Lcom/applovin/impl/sdk/c/g;

.field public static final j:Lcom/applovin/impl/sdk/c/g;

.field public static final k:Lcom/applovin/impl/sdk/c/g;

.field public static final l:Lcom/applovin/impl/sdk/c/g;

.field public static final m:Lcom/applovin/impl/sdk/c/g;

.field public static final n:Lcom/applovin/impl/sdk/c/g;

.field public static final o:Lcom/applovin/impl/sdk/c/g;

.field public static final p:Lcom/applovin/impl/sdk/c/g;

.field public static final q:Lcom/applovin/impl/sdk/c/g;

.field public static final r:Lcom/applovin/impl/sdk/c/g;

.field private static final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/sdk/c/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->s:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->u:Ljava/util/Set;

    const-string v0, "ad_req"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->a:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "ad_imp"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->b:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "ad_session_start"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->c:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "ad_imp_session"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->d:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "cached_files_expired"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->e:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "cache_drop_count"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->f:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "sdk_reset_state_count"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->g:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "ad_response_process_failures"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->h:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "response_process_failures"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->i:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "incent_failed_to_display_count"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->j:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "app_paused_and_resumed"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->k:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "ad_rendered_with_mismatched_sdk_key"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->l:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "med_ad_req"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->m:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "med_ad_response_process_failures"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->n:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "med_adapters_failed_init_missing_activity"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->o:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "med_waterfall_ad_no_fill"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->p:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "med_waterfall_ad_adapter_load_failed"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->q:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "med_waterfall_ad_invalid_response"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/c/g;->r:Lcom/applovin/impl/sdk/c/g;

    const-string v0, "fullscreen_ad_nil_vc_count"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    const-string v0, "applovin_bundle_missing"

    invoke-static {v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/g;->t:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/applovin/impl/sdk/c/g;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/c/g;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/c/g;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No key name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/c/g;->s:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key has already been used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/c/g;->s:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/applovin/impl/sdk/c/g;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c/g;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->u:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/applovin/impl/sdk/c/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/sdk/c/g;->u:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/g;->t:Ljava/lang/String;

    return-object v0
.end method
