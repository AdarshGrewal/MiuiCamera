.class public Lcom/android/camera/module/video/RecorderController$1;
.super Ljava/lang/Object;
.source "RecorderController.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video/RecorderController;->stopRecorder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/video/RecorderController;

.field public final synthetic val$cameraId:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/RecorderController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    iput p2, p0, Lcom/android/camera/module/video/RecorderController$1;->val$cameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/camera/module/video/RecorderController;->access$002(Lcom/android/camera/module/video/RecorderController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v3}, Lcom/android/camera/module/video/RecorderController;->access$100(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/UserRecordSetting;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/module/video/RecorderController$1;->val$cameraId:I

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStopVideoRecordStart(Ljava/lang/String;Z)V

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v3}, Lcom/android/camera/module/video/RecorderController;->access$200(Lcom/android/camera/module/video/RecorderController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v4}, Lcom/android/camera/module/video/RecorderController;->access$300(Lcom/android/camera/module/video/RecorderController;)Landroid/media/MediaRecorder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v4}, Lcom/android/camera/module/video/RecorderController;->access$300(Lcom/android/camera/module/video/RecorderController;)Landroid/media/MediaRecorder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 7
    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v4}, Lcom/android/camera/module/video/RecorderController;->access$300(Lcom/android/camera/module/video/RecorderController;)Landroid/media/MediaRecorder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 8
    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v4}, Lcom/android/camera/module/video/RecorderController;->access$300(Lcom/android/camera/module/video/RecorderController;)Landroid/media/MediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V

    .line 9
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to stop media recorder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecorderController"

    invoke-static {v5, v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v3}, Lcom/android/camera/module/video/RecorderController;->access$100(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/UserRecordSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->deleteInvalidFile()V

    .line 12
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v3}, Lcom/android/camera/module/video/RecorderController;->access$400(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v3}, Lcom/android/camera/module/video/RecorderController;->access$400(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera/module/video/RecorderController$ModuleCallback;->enableCameraControls(Z)V

    :cond_1
    :goto_0
    const/16 v3, 0x320

    .line 14
    invoke-static {v3, v2}, Lcom/android/camera/module/video/Boost;->startBoost(II)V

    .line 15
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v2}, Lcom/android/camera/module/video/RecorderController;->access$400(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v2}, Lcom/android/camera/module/video/RecorderController;->access$400(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/camera/module/video/RecorderController$ModuleCallback;->playCameraSound(I)V

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v2}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 18
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v2}, Lcom/android/camera/module/video/RecorderController;->access$000(Lcom/android/camera/module/video/RecorderController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecorderController"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController$1;->this$0:Lcom/android/camera/module/video/RecorderController;

    invoke-static {v0}, Lcom/android/camera/module/video/RecorderController;->access$500(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderStopped()Z

    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
