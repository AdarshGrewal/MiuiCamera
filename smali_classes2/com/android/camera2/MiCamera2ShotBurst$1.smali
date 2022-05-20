.class public Lcom/android/camera2/MiCamera2ShotBurst$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotBurst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotBurst;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotBurst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotBurst;->access$302(Lcom/android/camera2/MiCamera2ShotBurst;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/android/camera2/MiCamera2;->updateFrameNumber(J)V

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OooOO()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotBurst;->access$400(Lcom/android/camera2/MiCamera2ShotBurst;)I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->isMultiSnapStopRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotBurst;->access$500(Lcom/android/camera2/MiCamera2ShotBurst;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera2/MiCamera2ShotBurst;->access$202(Lcom/android/camera2/MiCamera2ShotBurst;I)I

    .line 6
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureCompleted:  latestSequenceId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotBurst;->access$200(Lcom/android/camera2/MiCamera2ShotBurst;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2ShotBurst;->startSessionCapture()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/android/camera2/MiCamera2ShotBurst;->access$000(Lcom/android/camera2/MiCamera2ShotBurst;ZI)V

    .line 3
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 2
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureSequenceAborted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotBurst;->access$200(Lcom/android/camera2/MiCamera2ShotBurst;)I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/camera2/MiCamera2ShotBurst;->access$000(Lcom/android/camera2/MiCamera2ShotBurst;ZI)V

    :cond_0
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureSequenceCompleted: sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " latestSequenceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    .line 2
    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotBurst;->access$200(Lcom/android/camera2/MiCamera2ShotBurst;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotBurst;->access$200(Lcom/android/camera2/MiCamera2ShotBurst;)I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotBurst;

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Lcom/android/camera2/MiCamera2ShotBurst;->access$000(Lcom/android/camera2/MiCamera2ShotBurst;ZI)V

    :cond_0
    return-void
.end method
