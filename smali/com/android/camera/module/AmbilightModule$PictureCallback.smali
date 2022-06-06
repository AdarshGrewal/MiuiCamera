.class public Lcom/android/camera/module/AmbilightModule$PictureCallback;
.super Ljava/lang/Object;
.source "AmbilightModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureCallback"
.end annotation


# instance fields
.field public ambilightModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/AmbilightModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/AmbilightModule;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule$PictureCallback;->ambilightModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPictureTaken>>image="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$PictureCallback;->ambilightModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/AmbilightModule;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$500(Lcom/android/camera/module/AmbilightModule;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$600(Lcom/android/camera/module/AmbilightModule;)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    sget-object p2, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus does not reach infinity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$608(Lcom/android/camera/module/AmbilightModule;)I

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$708(Lcom/android/camera/module/AmbilightModule;)I

    if-eqz p2, :cond_3

    invoke-static {v0, p2}, Lcom/android/camera/module/AmbilightModule;->access$302(Lcom/android/camera/module/AmbilightModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    :cond_3
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$800(Lcom/android/camera/module/AmbilightModule;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$900(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1000(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr p2, v1

    const/4 v1, 0x4

    if-le p2, v1, :cond_6

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1108(Lcom/android/camera/module/AmbilightModule;)I

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1200(Lcom/android/camera/module/AmbilightModule;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1100(Lcom/android/camera/module/AmbilightModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proc is busy, drop this frame, All drop count:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1100(Lcom/android/camera/module/AmbilightModule;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$900(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1300(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$700(Lcom/android/camera/module/AmbilightModule;)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/media/Image;->setTimestamp(J)V

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1300(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1300(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public onPictureTakenFinished(ZJ)V
    .locals 1

    sget-object p2, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPictureBurstFinished success = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x4

    invoke-static {p3, p2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/AmbilightModule$PictureCallback;->handleImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    const/4 p1, 0x1

    return p1
.end method
