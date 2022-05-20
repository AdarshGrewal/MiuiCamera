.class public Lcom/android/camera/effect/SnapshotCanvas;
.super Lcom/android/gallery3d/ui/BaseGLCanvas;
.source "SnapshotCanvas.java"


# instance fields
.field public final BASIC_RENDER_INDEX:I

.field public final EFFECT_GROUP_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->EFFECT_GROUP_INDEX:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->BASIC_RENDER_INDEX:I

    .line 4
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    .line 5
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 6
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 7
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->initialize()V

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

.method public getBasicRender()Lcom/android/camera/effect/renders/BasicRender;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/BasicRender;

    return-object v0
.end method

.method public getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/RenderGroup;

    return-object v0
.end method
