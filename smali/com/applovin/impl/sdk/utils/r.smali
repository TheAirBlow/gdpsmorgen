.class public Lcom/applovin/impl/sdk/utils/r;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Z
    .locals 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/r;->a(I)Z

    move-result v0

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/r;->a(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(III)[I
    .locals 7

    const/16 v1, 0xf

    const/16 v0, 0xe

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_0

    new-array v0, v6, [I

    aput p1, v0, v5

    aput p2, v0, v4

    :goto_0
    return-object v0

    :cond_0
    and-int/lit8 v2, p0, 0x77

    const/16 v3, 0x77

    if-ne v2, v3, :cond_1

    new-array v0, v4, [I

    const/16 v1, 0xd

    aput v1, v0, v5

    goto :goto_0

    :cond_1
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_4

    move p1, v1

    :cond_2
    :goto_1
    and-int/lit8 v1, p0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    move p2, v0

    :cond_3
    :goto_2
    new-array v0, v6, [I

    aput p2, v0, v5

    aput p1, v0, v4

    goto :goto_0

    :cond_4
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5

    const/16 p1, 0xa

    goto :goto_1

    :cond_5
    and-int/lit8 v2, p0, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_6

    const/16 p1, 0xc

    goto :goto_1

    :cond_6
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    move p1, v1

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x800003

    and-int/2addr v1, p0

    const v2, 0x800003

    if-ne v1, v2, :cond_8

    const/16 p2, 0x14

    goto :goto_2

    :cond_8
    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    const/16 p2, 0x9

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x800005

    and-int/2addr v1, p0

    const v2, 0x800005

    if-ne v1, v2, :cond_a

    const/16 p2, 0x15

    goto :goto_2

    :cond_a
    and-int/lit8 v1, p0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    const/16 p2, 0xb

    goto :goto_2

    :cond_b
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v4, :cond_3

    move p2, v0

    goto :goto_2
.end method
