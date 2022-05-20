.class public Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"

# interfaces
.implements Lcom/xiaomi/renderengine/RenderEngine$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderEngineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderEngineV2_StateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/RenderEngineAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;)V

    return-void
.end method


# virtual methods
.method public onCameraSurfaceChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    const-string p1, "RenderEngineAdapter"

    const-string/jumbo p2, "onCameraSurfaceChanged"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFrameAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->onFrameAvailable(I)V

    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "onFrameAvailable"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
