.class public Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "ParallelSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureSessionStateCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onConfigureFailed"

    invoke-static {p1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$602(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$300(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onConfigured>>"

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v1, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$602(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$300(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onConfigured<<"

    invoke-static {p1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
