.class public Lcom/applovin/impl/sdk/utils/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        -0x53t
        -0x62t
        -0x35t
        -0x70t
        -0x1dt
        -0x76t
        0x37t
        0x75t
        0x3bt
        0x8t
        -0xct
        -0xft
        0x49t
        0x6et
        -0x43t
        0x39t
        0x75t
        0x4t
        -0x1at
        0x61t
        0x42t
        -0xct
        0x7dt
        0x5bt
        -0x77t
        -0x67t
        -0x1et
        0x72t
        0x7bt
        0x36t
        0x33t
        -0x4dt
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;J[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        -0x53t
        -0x62t
        -0x35t
        -0x70t
        -0x1dt
        -0x76t
        0x37t
        0x75t
        0x3bt
        0x8t
        -0xct
        -0xft
        0x49t
        0x6et
        -0x43t
        0x39t
        0x75t
        0x4t
        -0x1at
        0x61t
        0x42t
        -0xct
        0x7dt
        0x5bt
        -0x77t
        -0x67t
        -0x1et
        0x72t
        0x7bt
        0x36t
        0x33t
        -0x4dt
    .end array-data
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J[B)Ljava/lang/String;
    .locals 16

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No SDK key specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x50

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SDK key is too short"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p4, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No salt specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p4

    array-length v2, v0

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Salt is too short"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_0
    return-object p0

    :cond_5
    const/16 v2, 0x20

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v3, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;[B)[B

    move-result-object v6

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    shr-long v2, p2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x8

    shr-long v2, p2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x10

    shr-long v2, p2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x18

    shr-long v2, p2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x20

    shr-long v2, p2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x4

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x28

    shr-long v2, p2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x5

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x30

    shr-long v2, p2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x6

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x38

    shr-long v2, p2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    aget-byte v3, v6, v3

    xor-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v2, v5

    if-ge v3, v2, :cond_e

    int-to-long v8, v3

    add-long v8, v8, p2

    const/16 v2, 0x21

    shr-long v10, v8, v2

    xor-long/2addr v8, v10

    const-wide v10, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long/2addr v8, v10

    const/16 v2, 0x1d

    shr-long v10, v8, v2

    xor-long/2addr v8, v10

    const-wide v10, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    mul-long/2addr v8, v10

    const/16 v2, 0x20

    shr-long v10, v8, v2

    xor-long/2addr v8, v10

    add-int/lit8 v2, v3, 0x0

    array-length v10, v5

    if-lt v2, v10, :cond_6

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v10, v3, 0x0

    array-length v11, v6

    rem-int/2addr v10, v11

    aget-byte v10, v6, v10

    xor-int/2addr v2, v10

    int-to-long v10, v2

    const/4 v2, 0x0

    shr-long v12, v8, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    long-to-int v2, v10

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x1

    array-length v10, v5

    if-lt v2, v10, :cond_7

    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v10, v3, 0x1

    array-length v11, v6

    rem-int/2addr v10, v11

    aget-byte v10, v6, v10

    xor-int/2addr v2, v10

    int-to-long v10, v2

    const/16 v2, 0x8

    shr-long v12, v8, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    long-to-int v2, v10

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x2

    array-length v10, v5

    if-lt v2, v10, :cond_8

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v10, v3, 0x2

    array-length v11, v6

    rem-int/2addr v10, v11

    aget-byte v10, v6, v10

    xor-int/2addr v2, v10

    int-to-long v10, v2

    const/16 v2, 0x10

    shr-long v12, v8, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    long-to-int v2, v10

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x3

    array-length v10, v5

    if-lt v2, v10, :cond_9

    const/4 v2, 0x0

    :goto_5
    add-int/lit8 v10, v3, 0x3

    array-length v11, v6

    rem-int/2addr v10, v11

    aget-byte v10, v6, v10

    xor-int/2addr v2, v10

    int-to-long v10, v2

    const/16 v2, 0x18

    shr-long v12, v8, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    long-to-int v2, v10

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x4

    array-length v10, v5

    if-lt v2, v10, :cond_a

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v10, v3, 0x4

    array-length v11, v6

    rem-int/2addr v10, v11

    aget-byte v10, v6, v10

    xor-int/2addr v2, v10

    int-to-long v10, v2

    const/16 v2, 0x20

    shr-long v12, v8, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    long-to-int v2, v10

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x5

    array-length v10, v5

    if-lt v2, v10, :cond_b

    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v10, v3, 0x5

    array-length v11, v6

    rem-int/2addr v10, v11

    aget-byte v10, v6, v10

    xor-int/2addr v2, v10

    int-to-long v10, v2

    const/16 v2, 0x28

    shr-long v12, v8, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    long-to-int v2, v10

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x6

    array-length v10, v5

    if-lt v2, v10, :cond_c

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v10, v3, 0x6

    array-length v11, v6

    rem-int/2addr v10, v11

    aget-byte v10, v6, v10

    xor-int/2addr v2, v10

    int-to-long v10, v2

    const/16 v2, 0x30

    shr-long v12, v8, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    long-to-int v2, v10

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x7

    array-length v10, v5

    if-lt v2, v10, :cond_d

    const/4 v2, 0x0

    :goto_9
    add-int/lit8 v10, v3, 0x7

    array-length v11, v6

    rem-int/2addr v10, v11

    aget-byte v10, v6, v10

    xor-int/2addr v2, v10

    int-to-long v10, v2

    const/16 v2, 0x38

    shr-long/2addr v8, v2

    const-wide/16 v12, 0xff

    and-long/2addr v8, v12

    xor-long/2addr v8, v10

    long-to-int v2, v8

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v3, 0x8

    move v3, v2

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v2, v3, 0x0

    aget-byte v2, v5, v2

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v2, v3, 0x1

    aget-byte v2, v5, v2

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v2, v3, 0x2

    aget-byte v2, v5, v2

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v2, v3, 0x3

    aget-byte v2, v5, v2

    goto/16 :goto_5

    :cond_a
    add-int/lit8 v2, v3, 0x4

    aget-byte v2, v5, v2

    goto/16 :goto_6

    :cond_b
    add-int/lit8 v2, v3, 0x5

    aget-byte v2, v5, v2

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v3, 0x6

    aget-byte v2, v5, v2

    goto :goto_8

    :cond_d
    add-int/lit8 v2, v3, 0x7

    aget-byte v2, v5, v2

    goto :goto_9

    :cond_e
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/l;->b([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static/range {p4 .. p4}, Lcom/applovin/impl/sdk/utils/l;->a([B)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/16 p0, 0x0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 18

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No SDK key specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x50

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SDK key is too short"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No salt specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    array-length v2, v0

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Salt is too short"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_0
    return-object p0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ":"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    :try_start_0
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const/16 p0, 0x0

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x2

    aget-object v4, v2, v4

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 p0, 0x0

    goto :goto_0

    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/applovin/impl/sdk/utils/l;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;[B)[B

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    const/4 v3, 0x0

    aget-byte v3, v4, v3

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/4 v6, 0x0

    shl-long/2addr v2, v6

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    const/4 v7, 0x4

    aget-byte v7, v4, v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    const/4 v7, 0x6

    aget-byte v7, v4, v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v6, v2

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    const/16 v2, 0x8

    new-array v9, v2, [B

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    :goto_1
    if-ltz v2, :cond_8

    int-to-long v10, v3

    add-long/2addr v10, v6

    const/16 v2, 0x21

    shr-long v12, v10, v2

    xor-long/2addr v10, v12

    const-wide v12, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long/2addr v10, v12

    const/16 v2, 0x1d

    shr-long v12, v10, v2

    xor-long/2addr v10, v12

    const-wide v12, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    mul-long/2addr v10, v12

    const/16 v2, 0x20

    shr-long v12, v10, v2

    xor-long/2addr v10, v12

    const/4 v2, 0x0

    aget-byte v2, v9, v2

    add-int/lit8 v12, v3, 0x0

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-byte v12, v4, v12

    xor-int/2addr v2, v12

    int-to-long v12, v2

    const/4 v2, 0x0

    shr-long v14, v10, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    long-to-int v2, v12

    int-to-byte v2, v2

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x1

    aget-byte v2, v9, v2

    add-int/lit8 v12, v3, 0x1

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-byte v12, v4, v12

    xor-int/2addr v2, v12

    int-to-long v12, v2

    const/16 v2, 0x8

    shr-long v14, v10, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    long-to-int v2, v12

    int-to-byte v2, v2

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    aget-byte v2, v9, v2

    add-int/lit8 v12, v3, 0x2

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-byte v12, v4, v12

    xor-int/2addr v2, v12

    int-to-long v12, v2

    const/16 v2, 0x10

    shr-long v14, v10, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    long-to-int v2, v12

    int-to-byte v2, v2

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x3

    aget-byte v2, v9, v2

    add-int/lit8 v12, v3, 0x3

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-byte v12, v4, v12

    xor-int/2addr v2, v12

    int-to-long v12, v2

    const/16 v2, 0x18

    shr-long v14, v10, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    long-to-int v2, v12

    int-to-byte v2, v2

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x4

    aget-byte v2, v9, v2

    add-int/lit8 v12, v3, 0x4

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-byte v12, v4, v12

    xor-int/2addr v2, v12

    int-to-long v12, v2

    const/16 v2, 0x20

    shr-long v14, v10, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    long-to-int v2, v12

    int-to-byte v2, v2

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x5

    aget-byte v2, v9, v2

    add-int/lit8 v12, v3, 0x5

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-byte v12, v4, v12

    xor-int/2addr v2, v12

    int-to-long v12, v2

    const/16 v2, 0x28

    shr-long v14, v10, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    long-to-int v2, v12

    int-to-byte v2, v2

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x6

    aget-byte v2, v9, v2

    add-int/lit8 v12, v3, 0x6

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-byte v12, v4, v12

    xor-int/2addr v2, v12

    int-to-long v12, v2

    const/16 v2, 0x30

    shr-long v14, v10, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    long-to-int v2, v12

    int-to-byte v2, v2

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x7

    aget-byte v2, v9, v2

    add-int/lit8 v12, v3, 0x7

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-byte v12, v4, v12

    xor-int/2addr v2, v12

    int-to-long v12, v2

    const/16 v2, 0x38

    shr-long/2addr v10, v2

    const-wide/16 v14, 0xff

    and-long/2addr v10, v14

    xor-long/2addr v10, v12

    long-to-int v2, v10

    int-to-byte v2, v2

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_1

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    const/16 p0, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 p0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/16 p0, 0x0

    goto/16 :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/n;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SHA-1 algorithm not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[B)[B
    .locals 3

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SHA-1 algorithm not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 encoding not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2a

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/l;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
