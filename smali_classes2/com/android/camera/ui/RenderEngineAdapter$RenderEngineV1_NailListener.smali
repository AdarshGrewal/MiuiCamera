.class public Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$NailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderEngineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderEngineV1_NailListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/RenderEngineAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;)V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v0

    return v0
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->needKeepBitmapTexture()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onFrameAvailable(I)V

    return-void
.end method

.method public onPreviewPixelsRead([BIIIZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/module/common/ISurfaceTextureMgr;->onPreviewPixelsRead([BIIIZ)V

    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceTextureCreated surfaceTexture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderEngineAdapter"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTexturePending(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/common/ISurfaceTextureMgr;->onSurfaceTexturePending(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureReleased()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ISurfaceTextureMgr;->onSurfaceTextureReleased()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/Camera;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/common/ISurfaceTextureMgr;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    :cond_0
    return-void
.end method
