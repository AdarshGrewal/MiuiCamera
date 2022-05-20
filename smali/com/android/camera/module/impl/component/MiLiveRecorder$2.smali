.class public Lcom/android/camera/module/impl/component/MiLiveRecorder$2;
.super Landroid/os/CountDownTimer;
.source "MiLiveRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/MiLiveRecorder;->startRecordingTime(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

.field public final synthetic val$listener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;JJLcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    iput-object p6, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->val$listener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$800(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "count down onFinish~"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->val$listener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;->this$0:Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)F

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;->onRecordingTimeUpdate(JF)V

    :cond_0
    return-void
.end method
