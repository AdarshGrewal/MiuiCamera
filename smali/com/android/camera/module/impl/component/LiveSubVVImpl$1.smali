.class public Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;->initPreview(IIILcom/android/camera/CameraScreenNail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$000(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$100(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$102(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Z)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->notifyFrameAvailable(I)V

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    :cond_1
    return-void
.end method
