.class public Lcom/android/zxing/DocumentDecoder;
.super Lcom/android/zxing/Decoder;
.source "DocumentDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/DocumentDecoder$DocumentBean;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DocumentDecoder"


# instance fields
.field public cachePreview:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/android/zxing/PreviewImage;",
            "[F>;"
        }
    .end annotation
.end field

.field public mSensorOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    const/16 v0, 0x5a

    .line 2
    iput v0, p0, Lcom/android/zxing/DocumentDecoder;->mSensorOrientation:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/zxing/Decoder;->mDecodeMaxCount:I

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/zxing/Decoder;->mDecodeAutoInterval:J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mEnable:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa04

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DocumentDecoder: init cost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentDecoder"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    .line 11
    sget-object v2, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 12
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO0o0/OooO00o;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o;-><init>(Lcom/android/zxing/DocumentDecoder;)V

    .line 13
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 14
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO0o0/OooO0O0;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 15
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/Decoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/ref/WeakReference;Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DocViewProtocol;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$DocViewProtocol;->updateDocument(Landroid/util/Pair;)V

    :cond_0
    return-void
.end method

.method private decode(Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/zxing/PreviewImage;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;",
            "[F>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const/16 v1, 0x8

    new-array v1, v1, [F

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/zxing/DocumentDecoder;->mSensorOrientation:I

    invoke-static {v0}, Lcom/android/zxing/DocumentDecoder;->getRotateFlag(I)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->PPT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    move-object v4, v1

    move-object v10, v0

    invoke-virtual/range {v2 .. v10}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doScanDocument([B[FIIIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)I

    move-result v2

    .line 6
    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p0, Lcom/android/zxing/DocumentDecoder;->cachePreview:Landroid/util/Pair;

    .line 7
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->rotatePoints([FIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F

    move-result-object v0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode: version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", status = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", points = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rotatePoints = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DocumentDecoder"

    .line 12
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 14
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public static getRotateFlag(I)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_90:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_270:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_180:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_0:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode E: previewImage is null? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentDecoder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/zxing/DocumentDecoder;->decode(Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getCachePreview()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/android/zxing/PreviewImage;",
            "[F>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/zxing/DocumentDecoder;->cachePreview:Landroid/util/Pair;

    return-object v0
.end method

.method public init(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result p1

    iput p1, p0, Lcom/android/zxing/DocumentDecoder;->mSensorOrientation:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x5a

    .line 3
    iput p1, p0, Lcom/android/zxing/DocumentDecoder;->mSensorOrientation:I

    :goto_0
    return-void
.end method

.method public needPreviewFrame()Z
    .locals 1

    const/16 v0, 0xba

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDocumentMode2On(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/zxing/Decoder;->needPreviewFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPreviewFrame(Lcom/android/zxing/PreviewImage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/zxing/Decoder;->quit()V

    .line 2
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public startDecode()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    return-void
.end method

.method public stopDecode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    return-void
.end method
