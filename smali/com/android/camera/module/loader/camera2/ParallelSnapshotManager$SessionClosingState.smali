.class public Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;
.super Lcom/xiaomi/camera/util/State;
.source "ParallelSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionClosingState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entering SessionClosingState state"

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$300(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 p1, 0xb

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$600(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$600(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$602(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1602(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Ljava/util/List;)Ljava/util/List;

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CaptureSession close"

    invoke-static {p1, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1100(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    .line 9
    :cond_1
    monitor-exit v0

    :goto_0
    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1100(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionClosingState deferMessage:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
