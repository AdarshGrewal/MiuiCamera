.class public Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;
.super Lcom/xiaomi/camera/util/State;
.source "ParallelSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionCreatedState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entering SessionCreatedState state"

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const-string v3, "SessionCreatedState:"

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    const-string v4, "->SessionClosingState"

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1900(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    goto/16 :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1600(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1900(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionCreatedState deferMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SessionCreatedState:same surface,skip create session"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->CameraClosingState"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1300(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraClosingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    :cond_4
    :goto_0
    return v1
.end method
