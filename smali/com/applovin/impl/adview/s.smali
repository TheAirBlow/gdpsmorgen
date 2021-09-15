.class public Lcom/applovin/impl/adview/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F

.field private final j:F


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .locals 5

    const/16 v4, 0x1f4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "VideoButtonProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating video button properties with JSON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/i;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "width"

    const/16 v1, 0x40

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->a:I

    const-string v0, "height"

    const/4 v1, 0x7

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->b:I

    const-string v0, "margin"

    const/16 v1, 0x14

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->c:I

    const-string v0, "gravity"

    const/16 v1, 0x55

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->d:I

    const-string v0, "tap_to_fade"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/s;->e:Z

    const-string v0, "tap_to_fade_duration_milliseconds"

    invoke-static {p1, v0, v4, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->f:I

    const-string v0, "fade_in_duration_milliseconds"

    invoke-static {p1, v0, v4, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->g:I

    const-string v0, "fade_out_duration_milliseconds"

    invoke-static {p1, v0, v4, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->h:I

    const-string v0, "fade_in_delay_seconds"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/impl/sdk/j;)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->i:F

    const-string v0, "fade_out_delay_seconds"

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/impl/sdk/j;)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->j:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/s;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/applovin/impl/adview/s;

    iget v2, p0, Lcom/applovin/impl/adview/s;->a:I

    iget v3, p1, Lcom/applovin/impl/adview/s;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/s;->b:I

    iget v3, p1, Lcom/applovin/impl/adview/s;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/s;->c:I

    iget v3, p1, Lcom/applovin/impl/adview/s;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/s;->d:I

    iget v3, p1, Lcom/applovin/impl/adview/s;->d:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/applovin/impl/adview/s;->e:Z

    iget-boolean v3, p1, Lcom/applovin/impl/adview/s;->e:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/s;->f:I

    iget v3, p1, Lcom/applovin/impl/adview/s;->f:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/s;->g:I

    iget v3, p1, Lcom/applovin/impl/adview/s;->g:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/s;->h:I

    iget v3, p1, Lcom/applovin/impl/adview/s;->h:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/applovin/impl/adview/s;->i:F

    iget v3, p0, Lcom/applovin/impl/adview/s;->i:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/applovin/impl/adview/s;->j:F

    iget v3, p0, Lcom/applovin/impl/adview/s;->j:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public f()J
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/s;->f:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/s;->g:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/s;->h:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/applovin/impl/adview/s;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/s;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/s;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/s;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/applovin/impl/adview/s;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/s;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/s;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/s;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/applovin/impl/adview/s;->i:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/applovin/impl/adview/s;->i:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/s;->j:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/applovin/impl/adview/s;->j:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->i:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->j:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoButtonProperties{widthPercentOfScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightPercentOfScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tapToFade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/adview/s;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tapToFadeDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeInDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeOutDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeInDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeOutDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
