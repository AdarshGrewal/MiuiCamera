.class public Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;
.super Ljava/lang/Object;
.source "FragmentPanorama.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StillPreviewRender"
.end annotation


# instance fields
.field public mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mTransform:[F

.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentPanorama;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentPanorama;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mTransform:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentPanorama;Lcom/android/camera/fragment/FragmentPanorama$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;-><init>(Lcom/android/camera/fragment/FragmentPanorama;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 7
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v2

    .line 8
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v3

    .line 9
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 10
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v4}, Lcom/android/camera/fragment/FragmentPanorama;->access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    .line 11
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v5}, Lcom/android/camera/fragment/FragmentPanorama;->access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    .line 12
    invoke-interface {v1, v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mTransform:[F

    invoke-virtual {p1, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 14
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->mTransform:[F

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    .line 15
    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$300(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v8

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$400(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v9

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    .line 16
    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$500(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v10

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$600(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v11

    .line 17
    invoke-virtual/range {v5 .. v11}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p1

    .line 18
    invoke-interface {v1, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 19
    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 20
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 21
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$700(Lcom/android/camera/fragment/FragmentPanorama;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$702(Lcom/android/camera/fragment/FragmentPanorama;Z)Z

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$1000(Lcom/android/camera/fragment/FragmentPanorama;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender$1;-><init>(Lcom/android/camera/fragment/FragmentPanorama$StillPreviewRender;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method
