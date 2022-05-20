.class public Lcom/android/camera/module/Camera2Module$26;
.super Landroid/os/CountDownTimer;
.source "Camera2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->updateRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$26;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$26;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/Camera2Module;->stopVideoRecording(ZZ)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3b6

    add-long/2addr p1, v0

    const-wide/16 v0, 0x1c2

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xac

    .line 3
    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0x3b1

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
