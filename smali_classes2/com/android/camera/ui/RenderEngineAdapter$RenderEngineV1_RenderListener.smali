.class public Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$RequestRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderEngineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderEngineV1_RenderListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/RenderEngineAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;)V

    return-void
.end method


# virtual methods
.method public requestChangeWCGConfig()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->requestChangeWCGConfig()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$100(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "onFrameAvailable() cameraScreenNail is null"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$200(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/ui/CameraRenderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->requestRender()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/Module;->onRenderRequested()V

    :cond_3
    return-void
.end method
