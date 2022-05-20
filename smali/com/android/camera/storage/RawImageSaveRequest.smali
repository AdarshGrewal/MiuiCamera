.class public Lcom/android/camera/storage/RawImageSaveRequest;
.super Lcom/android/camera/storage/BaseSaveRequest;
.source "RawImageSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RawImageSaveRequest"


# instance fields
.field public captureResult:Landroid/hardware/camera2/CaptureResult;

.field public characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public data:[B

.field public dateTaken:J

.field public height:I

.field public orientation:I

.field public size:I

.field public title:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/android/camera/storage/BaseSaveRequest;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$000(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$100(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureResult:Landroid/hardware/camera2/CaptureResult;

    .line 5
    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$200(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 6
    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$300(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->dateTaken:J

    .line 7
    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$400(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->title:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$500(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->width:I

    .line 9
    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$600(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->height:I

    .line 10
    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$700(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->orientation:I

    .line 11
    iget-object p1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->size:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/RawImageSaveRequest$Builder;Lcom/android/camera/storage/RawImageSaveRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/RawImageSaveRequest;-><init>(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->size:I

    return v0
.end method

.method public isFinal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFinish()V
    .locals 5

    const/4 v0, 0x4

    const-string v1, "RawImageSaveRequest"

    const-string v2, "image save onFinish"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "algo_capture_total_"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo_image_save_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/storage/RawImageSaveRequest;->dateTaken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, "shot_2_view"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    .line 4
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->getSize()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->save()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/storage/RawImageSaveRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v3, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureResult:Landroid/hardware/camera2/CaptureResult;

    iget-object v4, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    iget-wide v5, p0, Lcom/android/camera/storage/RawImageSaveRequest;->dateTaken:J

    iget v7, p0, Lcom/android/camera/storage/RawImageSaveRequest;->width:I

    iget v8, p0, Lcom/android/camera/storage/RawImageSaveRequest;->height:I

    iget v9, p0, Lcom/android/camera/storage/RawImageSaveRequest;->orientation:I

    invoke-static/range {v0 .. v9}, Lcom/android/camera/storage/Storage;->addRawImage(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;[BJIII)Landroid/net/Uri;

    .line 2
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    return-void
.end method

.method public bridge synthetic setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/storage/BaseSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    return-void
.end method
