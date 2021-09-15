.class Lcom/applovin/impl/adview/p;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/applovin/impl/adview/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/p$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Landroid/view/TextureView;

.field private final c:Landroid/media/MediaPlayer;

.field private final d:Lcom/applovin/impl/adview/p$a;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;Landroid/content/Context;Lcom/applovin/impl/adview/p$a;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/sdk/p;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/applovin/impl/adview/p;->d:Lcom/applovin/impl/adview/p$a;

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->b:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->b:Landroid/view/TextureView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->b:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->b:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/p;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/p;)Lcom/applovin/impl/adview/p$a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->d:Lcom/applovin/impl/adview/p$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Lcom/applovin/impl/sdk/p;

    const-string v1, "TextureVideoView"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/adview/p$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/p$1;-><init>(Lcom/applovin/impl/adview/p;Ljava/lang/String;)V

    const-wide/16 v2, 0xfa

    invoke-static {v0, v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const-string v0, "Failed to prepare media player"

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/p;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/applovin/impl/adview/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/q;->b(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/applovin/impl/adview/p;->e:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->b:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->b:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    iput v0, p0, Lcom/applovin/impl/adview/p;->e:I

    iput v3, p0, Lcom/applovin/impl/adview/p;->f:I

    iput v1, p0, Lcom/applovin/impl/adview/p;->g:I

    :goto_0
    int-to-float v0, p2

    int-to-float v2, p1

    div-float v2, v0, v2

    int-to-float v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lt v1, v0, :cond_2

    move v2, v3

    :goto_1
    sub-int v4, v3, v2

    :try_start_0
    div-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget-object v7, p0, Lcom/applovin/impl/adview/p;->b:Landroid/view/TextureView;

    invoke-virtual {v7, v6}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v0, v4

    int-to-float v1, v5

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->b:Landroid/view/TextureView;

    invoke-virtual {v0, v6}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/p;->invalidate()V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/p;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    iget v1, p0, Lcom/applovin/impl/adview/p;->e:I

    if-ne v0, v1, :cond_1

    iget v3, p0, Lcom/applovin/impl/adview/p;->f:I

    iget v1, p0, Lcom/applovin/impl/adview/p;->g:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/applovin/impl/adview/p;->g:I

    iget v1, p0, Lcom/applovin/impl/adview/p;->f:I

    goto :goto_0

    :cond_2
    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set video size to width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/p;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/p;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
