.class public Lcom/android/gallery3d/ui/FilterCanvasImpl;
.super Lcom/android/gallery3d/ui/BaseGLCanvas;
.source "FilterCanvasImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FilterCanvasImpl"


# instance fields
.field public mCurrentTarget:I

.field public mHasEffectRender:Z

.field public mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mHasEffectRender:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mCurrentTarget:I

    .line 4
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    .line 5
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 6
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 7
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 8
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 9
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilterCanvasImpl;->initialize()V

    return-void
.end method

.method private targetChange()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    .line 3
    iget v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mCurrentTarget:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v2, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    .line 5
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mHasEffectRender:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v2, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mHasEffectRender:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v2, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public deleteProgram()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->deleteProgram()V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    .line 3
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mCurrentTarget:I

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mCurrentTarget:I

    .line 3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilterCanvasImpl;->targetChange()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->initialize()V

    const/16 v0, 0xbd0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    return-void
.end method

.method public prepareEffectRenders(ZI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    .line 3
    iget-object p1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/FilterCanvasImpl;->mHasEffectRender:Z

    :cond_0
    return-void
.end method
