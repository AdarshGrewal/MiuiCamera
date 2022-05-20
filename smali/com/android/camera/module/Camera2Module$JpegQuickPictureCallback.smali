.class public final Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;
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
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field public mBurstShotTitle:Ljava/lang/String;

.field public mDropped:Z

.field public mLocation:Landroid/location/Location;

.field public mPressDownTitle:Ljava/lang/String;

.field public mSavedJpegCallbackNum:I

.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1500(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BURST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 3
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2000(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$1900(Lcom/android/camera/module/Camera2Module;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$3600(Lcom/android/camera/module/Camera2Module;)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onPictureTaken: stop multiple shot due to low storage"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1604(Lcom/android/camera/module/Camera2Module;)I

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result v0

    if-nez v0, :cond_8

    .line 12
    iget v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO()V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)Lio/reactivex/ObservableEmitter;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 16
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v0

    .line 17
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$2600(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    add-int/2addr v2, v0

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_4

    .line 18
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v3, v3, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v3

    goto :goto_0

    .line 20
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    .line 21
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v3, v3, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v3

    .line 22
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v5}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v1, :cond_6

    iget-object v5, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v5}, Lcom/android/camera/module/Camera2Module;->access$2000(Lcom/android/camera/module/Camera2Module;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    move v5, v6

    goto :goto_1

    .line 24
    :cond_6
    iget-object v5, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v5}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v5

    iget-object v7, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v7}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result v7

    if-eq v5, v7, :cond_7

    iget-object v5, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v5}, Lcom/android/camera/module/Camera2Module;->access$2000(Lcom/android/camera/module/Camera2Module;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mDropped:Z

    if-eqz v5, :cond_5

    :cond_7
    move v5, v1

    .line 25
    :goto_1
    new-instance v7, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v7}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 26
    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 27
    invoke-virtual {v7, v5}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 28
    invoke-virtual {v7, v4}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 30
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 31
    invoke-virtual {v7, v2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 32
    invoke-virtual {v7, v3}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 33
    invoke-virtual {v7, v0}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 34
    invoke-virtual {v7, v1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 35
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$3000(Lcom/android/camera/module/Camera2Module;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    const/4 p1, -0x1

    .line 36
    invoke-virtual {v7, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 37
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p1

    invoke-virtual {p1, v7, p2}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    .line 38
    iput-boolean v6, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mDropped:Z

    goto :goto_2

    .line 39
    :cond_8
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CaptureBurst queue full and drop "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mDropped:Z

    .line 41
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    if-lt p1, p2, :cond_9

    .line 42
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    .line 43
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    if-ge p1, p2, :cond_a

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$2000(Lcom/android/camera/module/Camera2Module;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mDropped:Z

    if-eqz p1, :cond_b

    .line 44
    :cond_a
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$3600(Lcom/android/camera/module/Camera2Module;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public onPictureTakenFinished(ZJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$3600(Lcom/android/camera/module/Camera2Module;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)Lio/reactivex/ObservableEmitter;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method
