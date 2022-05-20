.class public Lcom/android/camera/effect/VideoRecorderCanvas;
.super Lcom/android/gallery3d/ui/BaseGLCanvas;
.source "VideoRecorderCanvas.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    .line 3
    new-instance v0, Lcom/android/camera/effect/renders/VideoRecorderRender;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 4
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->initialize()V

    return-void
.end method


# virtual methods
.method public applyFilterId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    check-cast v0, Lcom/android/camera/effect/renders/VideoRecorderRender;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/VideoRecorderRender;->setFilterId(I)V

    return-void
.end method

.method public deleteProgram()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->deleteProgram()V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    .line 3
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    .line 4
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    .line 5
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSize: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " modelMatrix="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->getModelMatrix()[F

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->dumpMatrix([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoRecorderCanvas"

    .line 4
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCinematic()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Lcom/android/camera/effect/renders/VideoRecorderRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->updateCinematic()V

    return-void
.end method
