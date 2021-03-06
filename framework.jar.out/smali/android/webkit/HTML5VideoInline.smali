.class public Landroid/webkit/HTML5VideoInline;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoInline.java"


# static fields
.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mVideoLayerUsingSurfaceTexture:I


# instance fields
.field private mTextureNames:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 27
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "autoStart"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HTML5VideoInline;->init(IIZ)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 41
    return-void
.end method

.method private setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 105
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getVideoLayerId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 46
    .local v1, surfaceTexture:Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 47
    .local v0, surface:Landroid/view/Surface;
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 48
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 49
    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 91
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 92
    return-void
.end method

.method public getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 3
    .parameter "videoLayerId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    sget v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-nez v0, :cond_2

    .line 73
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 76
    :cond_1
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 77
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 78
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 80
    :cond_2
    sput p1, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 81
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureName()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v0, v1, v0

    .line 100
    :cond_0
    return v0
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 63
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoInline;->setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 57
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getPauseDuringPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 35
    :cond_0
    return-void
.end method

.method public surfaceTextureDeleted()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
