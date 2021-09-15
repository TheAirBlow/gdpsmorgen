.class public Lcom/applovin/impl/sdk/ad/NativeAdImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/ad/j;
.implements Lcom/applovin/nativeAds/AppLovinNativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    }
.end annotation


# static fields
.field public static final QUERY_PARAM_IS_FIRST_PLAY:Ljava/lang/String; = "fp"

.field public static final QUERY_PARAM_VIDEO_PERCENT_VIEWED:Ljava/lang/String; = "pv"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/ad/d;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/lang/String;

.field private final s:J

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:F

.field private x:Ljava/lang/String;

.field private y:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/ad/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    iput-object p11, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:Ljava/lang/String;

    move/from16 v0, p12

    iput v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:F

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->x:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:J

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/ad/NativeAdImpl$1;)V
    .locals 0

    invoke-direct/range {p0 .. p25}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;-><init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/ad/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_9
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    if-nez v2, :cond_a

    :cond_c
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    if-nez v2, :cond_d

    :cond_f
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_12
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    if-nez v2, :cond_13

    :cond_15
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    if-nez v2, :cond_16

    :cond_18
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    if-nez v2, :cond_19

    :cond_1b
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    if-nez v2, :cond_1c

    :cond_1e
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    move v0, v1

    goto/16 :goto_0

    :cond_20
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    if-nez v2, :cond_1f

    :cond_21
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    goto/16 :goto_0

    :cond_23
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    if-nez v2, :cond_22

    :cond_24
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_25
    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    if-nez v2, :cond_25

    :cond_27
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_28
    move v0, v1

    goto/16 :goto_0

    :cond_29
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_2a
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_2b
    move v0, v1

    goto/16 :goto_0

    :cond_2c
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    if-nez v2, :cond_2b

    :cond_2d
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    :cond_2e
    move v0, v1

    goto/16 :goto_0

    :cond_2f
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    if-nez v2, :cond_2e

    :cond_30
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    :cond_31
    move v0, v1

    goto/16 :goto_0

    :cond_32
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    if-nez v2, :cond_31

    :cond_33
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_34
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAdId()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:J

    return-wide v0
.end method

.method public getAdZone()Lcom/applovin/impl/sdk/ad/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    return-object v0
.end method

.method public getCaptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getClCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getCtaText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionTrackingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    return-object v0
.end method

.method public getSourceIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceStarRatingImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoEndTrackingUrl(IZ)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    :cond_1
    const-string v0, "AppLovinNativeAd"

    const-string v1, "Invalid percent viewed supplied."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Percent viewed must be an integer between 0 and 100."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pv"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fp"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoStartTrackingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_4

    :cond_6
    move v0, v1

    goto/16 :goto_5

    :cond_7
    move v0, v1

    goto/16 :goto_6

    :cond_8
    move v0, v1

    goto/16 :goto_7

    :cond_9
    move v0, v1

    goto/16 :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_c
    move v0, v1

    goto :goto_b

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_e
    move v0, v1

    goto :goto_d

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public isImagePrecached()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public isVideoPrecached()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchClickTarget(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/c/a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/network/e;

    move-result-object v2

    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->k()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/f$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/q;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/impl/sdk/j;)Z

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:Ljava/lang/String;

    return-void
.end method

.method public setStarRating(F)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:F

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->x:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinNativeAd{clCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceIconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceStarRatingImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceVideoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptionText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captionText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ctaText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", starRating=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoStartTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoEndTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionPostbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickTrackingPostbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourcePrefixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackImpression()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->trackImpression(Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public trackImpression(Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "AppLovinNativeAd"

    const-string v2, "Tracking impression..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/c/a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/network/e;

    move-result-object v2

    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->k()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/f$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object v0

    invoke-virtual {v2, v0, v5, p1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;ZLcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    const/16 v1, -0x2be

    invoke-interface {p1, v0, v1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
