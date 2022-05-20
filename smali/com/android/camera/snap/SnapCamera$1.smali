.class public Lcom/android/camera/snap/SnapCamera$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/snap/SnapCamera;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sessionCb: onConfigureFailed"

    invoke-static {p1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v1}, Lcom/android/camera/snap/SnapCamera;->access$000(Lcom/android/camera/snap/SnapCamera;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/snap/SnapCamera;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onConfigured: CameraDevice was already closed."

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v1, p1}, Lcom/android/camera/snap/SnapCamera;->access$202(Lcom/android/camera/snap/SnapCamera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/android/camera/snap/SnapCamera$1;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {p1}, Lcom/android/camera/snap/SnapCamera;->access$300(Lcom/android/camera/snap/SnapCamera;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
