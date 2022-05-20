.class public final Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JpegRepeatingCaptureCallback"
.end annotation


# instance fields
.field public mBurstShotTitle:Ljava/lang/String;

.field public mDropped:Z

.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

.field public mPressDownTitle:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1500(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mPressDownTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BURST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryCheckNeedStop()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3600(Lcom/android/camera/module/Camera2Module;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1700(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    const-string/jumbo v1, "onCaptureStart: revNum = "

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v3}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result v3

    if-ge v0, v3, :cond_16

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2000(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2100(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onShutter()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->tryCheckNeedStop()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onCaptureStart: need stop multi capture, return null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 10
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez v4, :cond_e

    .line 11
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCaptureStart: inputSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$2200(Lcom/android/camera/module/Camera2Module;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$2300(Lcom/android/camera/module/Camera2Module;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 13
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 14
    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v0}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 15
    :cond_6
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iput-object v0, v4, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 16
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getSatCameraId()I

    move-result p2

    invoke-static {v4, v0, p2}, Lcom/android/camera/module/Camera2Module;->access$2400(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/CameraSize;I)V

    .line 17
    :cond_7
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    if-nez p2, :cond_8

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    goto :goto_0

    .line 19
    :cond_8
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    .line 20
    :goto_0
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCaptureStart: outputSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v4, v7}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v4, v4, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-static {v4}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v4

    .line 22
    iget-object v7, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/module/Camera2Module;->access$2500(Lcom/android/camera/module/Camera2Module;I)I

    move-result v7

    .line 23
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCaptureStart: isHeic = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", quality = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_a

    .line 24
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 25
    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->isSupportZeroDegreeOrientationImage()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 26
    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$2600(Lcom/android/camera/module/Camera2Module;)I

    move-result v4

    const/16 v8, 0x5a

    if-eq v4, v8, :cond_9

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$2600(Lcom/android/camera/module/Camera2Module;)I

    move-result v4

    const/16 v8, 0x10e

    if-ne v4, v8, :cond_a

    .line 27
    :cond_9
    new-instance v4, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-direct {v4, v8, p2}, Landroid/util/Size;-><init>(II)V

    .line 28
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCaptureStart: switched outputSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v4

    .line 29
    :cond_a
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v4

    iget-object v8, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v8, v8, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4, v8}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 30
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$2700(Lcom/android/camera/module/Camera2Module;)Landroid/location/Location;

    move-result-object v4

    goto :goto_1

    :cond_b
    move-object v4, v3

    .line 31
    :goto_1
    new-instance v8, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    iget-object v9, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v9, v9, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 32
    invoke-virtual {v9}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v0

    iget-object v10, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v10, v10, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-direct {v8, v9, v0, p2, v10}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    .line 33
    invoke-virtual {v8, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 34
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3400(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 35
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLightingPattern(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 36
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    const/4 v0, -0x1

    iget-object v8, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v8, v8, Lcom/android/camera/module/BaseModule;->mOrientation:I

    if-ne v0, v8, :cond_c

    move v8, v6

    .line 37
    :cond_c
    invoke-virtual {p2, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 38
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2600(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 39
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3300(Lcom/android/camera/module/Camera2Module;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 40
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3200(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 41
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportZeroDegreeOrientationImage()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportZeroDegreeOrientationImage(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 42
    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 43
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 44
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isPictureUseDualFrontCamera()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 45
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3100(Lcom/android/camera/module/Camera2Module;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAlgorithmName(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 46
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3000(Lcom/android/camera/module/Camera2Module;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 47
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2900(Lcom/android/camera/module/Camera2Module;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSuffix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 48
    invoke-virtual {p2, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSaveGroupshotPrimitive(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 49
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2800(Lcom/android/camera/module/Camera2Module;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 50
    invoke-virtual {p2, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 51
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isZoomRatioBetweenUltraAndWide()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O0o()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_2

    :cond_d
    move v0, v6

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setReprocessBurstShotPicture(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    .line 53
    :cond_e
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 54
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 55
    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 56
    :cond_f
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result p2

    if-nez p2, :cond_12

    .line 57
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1604(Lcom/android/camera/module/Camera2Module;)I

    .line 58
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p2, v5}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 59
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO()V

    .line 60
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)Lio/reactivex/ObservableEmitter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 62
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    if-gt p2, v0, :cond_13

    .line 63
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget p2, p2, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-static {p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result p2

    .line 64
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCaptureStart: savePath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSavePath(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    if-eq p2, v0, :cond_11

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 68
    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$2000(Lcom/android/camera/module/Camera2Module;)Z

    move-result p2

    if-nez p2, :cond_11

    iget-boolean p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mDropped:Z

    if-eqz p2, :cond_10

    goto :goto_3

    :cond_10
    move v2, v6

    .line 69
    :cond_11
    :goto_3
    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 70
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2, p1, v6}, Lcom/android/camera/module/Camera2Module;->access$3500(Lcom/android/camera/module/Camera2Module;Lcom/xiaomi/camera/core/ParallelTaskData;Z)V

    .line 71
    iput-boolean v6, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mDropped:Z

    goto :goto_4

    .line 72
    :cond_12
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCaptureStart: queue full and drop "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mDropped:Z

    .line 74
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    if-lt p1, p2, :cond_13

    .line 75
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    :cond_13
    move-object p1, v3

    .line 76
    :goto_4
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    if-ge p2, v0, :cond_14

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$2000(Lcom/android/camera/module/Camera2Module;)Z

    move-result p2

    if-nez p2, :cond_14

    iget-boolean p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mDropped:Z

    if-eqz p2, :cond_15

    .line 77
    :cond_14
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$3600(Lcom/android/camera/module/Camera2Module;)V

    :cond_15
    return-object p1

    .line 78
    :cond_16
    :goto_5
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " paused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-boolean v1, v1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 79
    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$1900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 82
    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 83
    :cond_17
    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAbandoned(Z)V

    return-object p1
.end method

.method public onPictureTakenFinished(ZJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setPreviewThumbnail(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-static {v0, p1, p2, p3}, Lcom/android/camera/module/Camera2Module;->access$3700(Lcom/android/camera/module/Camera2Module;ZJ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callback onShotFinished null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
