.class public Lcom/unity3d/services/ar/view/BackgroundRenderer;
.super Ljava/lang/Object;
.source "BackgroundRenderer.java"


# static fields
.field private static final COORDS_PER_VERTEX:I = 0x3

.field private static final FLOAT_SIZE:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TexCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, v_TexCoord);\n}"

.field private static final QUAD_COORDS:[F

.field private static final QUAD_TEXCOORDS:[F

.field private static final TEXCOORDS_PER_VERTEX:I = 0x2

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 a_Position;\nattribute vec2 a_TexCoord;\n\nvarying vec2 v_TexCoord;\n\nvoid main() {\n   gl_Position = a_Position;\n   v_TexCoord = a_TexCoord;\n}"


# instance fields
.field private quadPositionParam:I

.field private quadProgram:I

.field private quadTexCoord:Ljava/nio/FloatBuffer;

.field private quadTexCoordParam:I

.field private quadTexCoordTransformed:Ljava/nio/FloatBuffer;

.field private quadVertices:Ljava/nio/FloatBuffer;

.field private textureId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->QUAD_COORDS:[F

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->QUAD_TEXCOORDS:[F

    return-void

    .line 126
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 131
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->textureId:I

    .line 30
    return-void
.end method


# virtual methods
.method createOnGlThread()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    const v12, 0x812f

    const/16 v9, 0x2600

    const/16 v11, 0x20

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 38
    new-array v6, v8, [I

    .line 39
    .local v6, "textures":[I
    invoke-static {v8, v6, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 40
    aget v8, v6, v10

    iput v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->textureId:I

    .line 41
    const v5, 0x8d65

    .line 42
    .local v5, "textureTarget":I
    iget v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->textureId:I

    invoke-static {v5, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 43
    const/16 v8, 0x2802

    invoke-static {v5, v8, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 44
    const/16 v8, 0x2803

    invoke-static {v5, v8, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 45
    const/16 v8, 0x2801

    invoke-static {v5, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 46
    const/16 v8, 0x2800

    invoke-static {v5, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 48
    const/4 v4, 0x4

    .line 49
    .local v4, "numVertices":I
    sget-object v8, Lcom/unity3d/services/ar/view/BackgroundRenderer;->QUAD_COORDS:[F

    array-length v8, v8

    div-int/lit8 v8, v8, 0x3

    if-eq v4, v8, :cond_0

    .line 50
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unexpected number of vertices in BackgroundRenderer."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 53
    :cond_0
    sget-object v8, Lcom/unity3d/services/ar/view/BackgroundRenderer;->QUAD_COORDS:[F

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 54
    .local v2, "bbVertices":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadVertices:Ljava/nio/FloatBuffer;

    .line 56
    iget-object v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadVertices:Ljava/nio/FloatBuffer;

    sget-object v9, Lcom/unity3d/services/ar/view/BackgroundRenderer;->QUAD_COORDS:[F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 57
    iget-object v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, "bbTexCoords":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoord:Ljava/nio/FloatBuffer;

    .line 63
    iget-object v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoord:Ljava/nio/FloatBuffer;

    sget-object v9, Lcom/unity3d/services/ar/view/BackgroundRenderer;->QUAD_TEXCOORDS:[F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 64
    iget-object v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    .local v1, "bbTexCoordsTransformed":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoordTransformed:Ljava/nio/FloatBuffer;

    .line 71
    const-string v8, "attribute vec4 a_Position;\nattribute vec2 a_TexCoord;\n\nvarying vec2 v_TexCoord;\n\nvoid main() {\n   gl_Position = a_Position;\n   v_TexCoord = a_TexCoord;\n}"

    const v9, 0x8b31

    invoke-static {v8, v9}, Lcom/unity3d/services/ar/view/ShaderLoader;->load(Ljava/lang/String;I)I

    move-result v7

    .line 72
    .local v7, "vertexShader":I
    const-string v8, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TexCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, v_TexCoord);\n}"

    const v9, 0x8b30

    invoke-static {v8, v9}, Lcom/unity3d/services/ar/view/ShaderLoader;->load(Ljava/lang/String;I)I

    move-result v3

    .line 74
    .local v3, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    iput v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadProgram:I

    .line 75
    iget v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadProgram:I

    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 76
    iget v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadProgram:I

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 77
    iget v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadProgram:I

    invoke-static {v8}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 78
    iget v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadProgram:I

    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 80
    const-string v8, "Program creation"

    invoke-static {v8}, Lcom/unity3d/services/ar/view/ShaderLoader;->checkGLError(Ljava/lang/String;)Z

    .line 82
    iget v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadProgram:I

    const-string v9, "a_Position"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadPositionParam:I

    .line 83
    iget v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadProgram:I

    const-string v9, "a_TexCoord"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoordParam:I

    .line 85
    const-string v8, "Program parameters"

    invoke-static {v8}, Lcom/unity3d/services/ar/view/ShaderLoader;->checkGLError(Ljava/lang/String;)Z

    .line 86
    return-void
.end method

.method draw(Lcom/google/ar/core/Frame;)V
    .locals 7
    .param p1, "frame"    # Lcom/google/ar/core/Frame;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    const/16 v2, 0x1406

    const/16 v6, 0xb71

    const/4 v3, 0x0

    .line 92
    invoke-virtual {p1}, Lcom/google/ar/core/Frame;->hasDisplayGeometryChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoord:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoordTransformed:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/google/ar/core/Frame;->transformDisplayUvCoords(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 96
    :cond_0
    invoke-static {v6}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 97
    invoke-static {v3}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 99
    const v0, 0x8d65

    iget v1, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->textureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    iget v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 103
    iget v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadPositionParam:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 106
    iget v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoordParam:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoordTransformed:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 114
    iget v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadPositionParam:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 115
    iget v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoordParam:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 117
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 119
    iget v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadPositionParam:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 120
    iget v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->quadTexCoordParam:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 123
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 124
    return-void
.end method

.method getTextureId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/unity3d/services/ar/view/BackgroundRenderer;->textureId:I

    return v0
.end method
