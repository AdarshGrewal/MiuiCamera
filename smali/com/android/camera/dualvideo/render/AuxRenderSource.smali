.class public Lcom/android/camera/dualvideo/render/AuxRenderSource;
.super Ljava/lang/Object;
.source "AuxRenderSource.java"

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderSource;


# static fields
.field public static final SKIP_FRAMES:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RenderSource"


# instance fields
.field public mCanDraw:Z

.field public mFrameReady:Z

.field public mFramesNeedSkip:I

.field public mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

.field public mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

.field public final mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field public mTextureSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/os/Handler;Lio/reactivex/CompletableEmitter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    .line 4
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    .line 5
    iput-object p2, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    .line 6
    iput-object p3, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->resetStatus()V

    return-void
.end method

.method private createSurfaceTexture()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 4
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    .line 5
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0o0;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private getListener()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private notifyTexReady()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mGLStatusEmitter:Lio/reactivex/CompletableEmitter;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    const-string v1, "RenderSource"

    if-lez p1, :cond_0

    const-string p1, "frame skipped: "

    .line 3
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "subFrameReady"

    .line 5
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    .line 7
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->getListener()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0oO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0oO;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    .line 9
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->getListener()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0o;-><init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;->onNewStreamAvailable(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;->onImageUpdated(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    return-void
.end method

.method public attachToGL(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/Assert;->check(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "RenderSource"

    const-string v1, "attachToGL: "

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ExtTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->notifyTexReady()V

    return-void
.end method

.method public canDraw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    return v0
.end method

.method public getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object v0
.end method

.method public ismFrameReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    return v0
.end method

.method public makeDrawable()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    return-void
.end method

.method public prepare(Landroid/util/Size;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->createSurfaceTexture()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTextureSize:Landroid/util/Size;

    .line 6
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mHandler:Landroid/os/Handler;

    .line 4
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 7
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 9
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurface:Landroid/view/Surface;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 12
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :cond_2
    return-void
.end method

.method public resetStatus()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFramesNeedSkip:I

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mFrameReady:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mCanDraw:Z

    :goto_0
    return-void
.end method

.method public setListener(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mListener:Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    return-void
.end method

.method public updateTexImage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/AuxRenderSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
