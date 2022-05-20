.class public Lcom/android/camera/effect/renders/VideoRecorderRender;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "VideoRecorderRender.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoRecorderRender"


# instance fields
.field public mCinematicEnabled:Z

.field public mEffectId:I

.field public mFirstFrameDrawn:Z

.field public mKaleidoscopeEnabled:Z

.field public mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

.field public mSecondRender:Lcom/android/camera/effect/renders/PipeRender;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 2
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    .line 3
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 4
    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->updateSecondRender()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 7
    new-instance v0, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->addCustomRender()V

    return-void
.end method

.method private addCustomRender()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isProAmbilightOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera/effect/renders/Yuv444ToRgbRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/Yuv444ToRgbRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 4
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_0

    .line 6
    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 9
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    return-object v0
.end method

.method private getSecondRender(IZZ)Lcom/android/camera/effect/renders/Render;
    .locals 3

    .line 1
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-interface {p1, v1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p1

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/EffectController;->getCurrentKaleidoscope()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/Render;->setKaleidoscope(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-eqz p3, :cond_4

    .line 9
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p2

    sget p3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p2

    if-nez p2, :cond_5

    .line 10
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    sget p3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    invoke-interface {p2, v1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    .line 11
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p2

    sget p3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, v2

    .line 12
    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz p3, :cond_6

    .line 13
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    :cond_6
    if-eqz v0, :cond_7

    .line 14
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 15
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_8
    if-eqz p2, :cond_9

    .line 16
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 17
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result p1

    if-lez p1, :cond_a

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    :cond_a
    return-object v2
.end method

.method private updateSecondRender()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    .line 2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    .line 4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->isKaleidoscopeEnable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    .line 5
    sget-object v3, Lcom/android/camera/effect/renders/VideoRecorderRender;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-boolean v6, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string v6, "effectId: 0x%x->0x%x KaleidoscopeEnabled: %b->%b"

    .line 7
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-boolean v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mCinematicEnabled:Z

    .line 9
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->isCinematicEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mCinematicEnabled:Z

    .line 10
    iget v5, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    if-ne v5, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    if-ne v0, v1, :cond_0

    if-eq v3, v4, :cond_1

    .line 11
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    .line 12
    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mCinematicEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondRender(IZZ)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/PipeRender;->deleteBuffer()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/effect/renders/VideoRecorderRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/VideoRecorderRender;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result p1

    return p1
.end method

.method public setFilterId(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    if-eq p1, v0, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->updateSecondRender()V

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public updateCinematic()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->updateSecondRender()V

    return-void
.end method
