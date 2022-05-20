.class public Lcom/android/camera/module/loader/FunctionFaceDetect;
.super Ljava/lang/Object;
.source "FunctionFaceDetect.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionFaceDetect"


# instance fields
.field public mFaceCallbackReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

.field public mNeedFaceInfo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceCallbackReference:Ljava/lang/ref/WeakReference;

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mNeedFaceInfo:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceCallbackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->isFaceDetectStarted()Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 4
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    if-nez v1, :cond_2

    return-object p1

    .line 5
    :cond_2
    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->isUseFaceInfo()Z

    move-result v2

    .line 6
    iget-boolean v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mNeedFaceInfo:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 7
    iget-object v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    if-nez v3, :cond_3

    .line 8
    new-instance v3, Lcom/android/camera/effect/FaceAnalyzeInfo;

    invoke-direct {v3}, Lcom/android/camera/effect/FaceAnalyzeInfo;-><init>()V

    iput-object v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_AGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v4}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iput-object v4, v3, Lcom/android/camera/effect/FaceAnalyzeInfo;->mAge:[F

    .line 10
    iget-object v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_GENDER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v4}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iput-object v4, v3, Lcom/android/camera/effect/FaceAnalyzeInfo;->mGender:[F

    .line 11
    iget-object v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_FACESCORE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v4}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iput-object v4, v3, Lcom/android/camera/effect/FaceAnalyzeInfo;->mFaceScore:[F

    .line 12
    iget-object v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_PROP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v4}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iput-object v4, v3, Lcom/android/camera/effect/FaceAnalyzeInfo;->mProp:[F

    .line 13
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mNeedFaceInfo:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    iget-object v3, v2, Lcom/android/camera/effect/FaceAnalyzeInfo;->mAge:[F

    if-eqz v3, :cond_5

    .line 14
    invoke-static {v1, v2}, Lcom/android/camera2/CameraHardwareFace;->convertExCameraHardwareFace([Landroid/hardware/camera2/params/Face;Lcom/android/camera/effect/FaceAnalyzeInfo;)[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v1

    goto :goto_0

    .line 15
    :cond_5
    invoke-static {v1}, Lcom/android/camera2/CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v1

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 17
    iget-object v3, p0, Lcom/android/camera/module/loader/FunctionFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    invoke-interface {v0, v1, v3, v2}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/effect/FaceAnalyzeInfo;Landroid/graphics/Rect;)V

    .line 18
    sget-object v0, Lcom/android/camera/module/loader/FunctionFaceDetect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera faces size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionFaceDetect;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    return-object p1
.end method
