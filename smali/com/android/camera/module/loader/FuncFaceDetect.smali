.class public Lcom/android/camera/module/loader/FuncFaceDetect;
.super Lcom/android/camera/FuncPreviewMetadata;
.source "FuncFaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/FuncPreviewMetadata<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FuncFaceDetect"


# instance fields
.field public EMPTY_CROP_REGION:Landroid/graphics/Rect;

.field public EMPTY_FACES:[Lcom/android/camera2/CameraHardwareFace;

.field public EMPTY_FACE_ANALYZE_INFO:Lcom/android/camera/effect/FaceAnalyzeInfo;

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

.field public mNeedEyeInfo:Z

.field public mNeedFaceInfo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/FuncPreviewMetadata;-><init>(Ljava/lang/ref/WeakReference;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/android/camera2/CameraHardwareFace;

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->EMPTY_FACES:[Lcom/android/camera2/CameraHardwareFace;

    .line 3
    new-instance p1, Lcom/android/camera/effect/FaceAnalyzeInfo;

    invoke-direct {p1}, Lcom/android/camera/effect/FaceAnalyzeInfo;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->EMPTY_FACE_ANALYZE_INFO:Lcom/android/camera/effect/FaceAnalyzeInfo;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->EMPTY_CROP_REGION:Landroid/graphics/Rect;

    .line 5
    iput-object p2, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceCallbackReference:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mNeedFaceInfo:Z

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackEye()Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->isTrackEyeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mNeedEyeInfo:Z

    return-void
.end method


# virtual methods
.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceCallbackReference:Ljava/lang/ref/WeakReference;

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
    sget-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->EMPTY_FACES:[Lcom/android/camera2/CameraHardwareFace;

    iget-object v2, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->EMPTY_FACE_ANALYZE_INFO:Lcom/android/camera/effect/FaceAnalyzeInfo;

    iget-object v3, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->EMPTY_CROP_REGION:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/effect/FaceAnalyzeInfo;Landroid/graphics/Rect;)V

    return-object p1

    .line 7
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    if-nez v1, :cond_3

    return-object p1

    .line 8
    :cond_3
    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->isUseFaceInfo()Z

    move-result v3

    .line 9
    iget-boolean v4, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mNeedFaceInfo:Z

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 10
    iget-object v4, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    if-nez v4, :cond_4

    .line 11
    new-instance v4, Lcom/android/camera/effect/FaceAnalyzeInfo;

    invoke-direct {v4}, Lcom/android/camera/effect/FaceAnalyzeInfo;-><init>()V

    iput-object v4, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    .line 12
    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    sget-object v5, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_AGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v5}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    iput-object v5, v4, Lcom/android/camera/effect/FaceAnalyzeInfo;->mAge:[F

    .line 13
    iget-object v4, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    sget-object v5, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_GENDER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v5}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    iput-object v5, v4, Lcom/android/camera/effect/FaceAnalyzeInfo;->mGender:[F

    .line 14
    iget-object v4, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    sget-object v5, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_FACESCORE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v5}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    iput-object v5, v4, Lcom/android/camera/effect/FaceAnalyzeInfo;->mFaceScore:[F

    .line 15
    iget-object v4, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    sget-object v5, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_PROP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v5}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    iput-object v5, v4, Lcom/android/camera/effect/FaceAnalyzeInfo;->mProp:[F

    .line 16
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackEye()Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

    move-result-object v4

    .line 17
    sget-object v5, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    .line 18
    array-length v5, v1

    const/4 v6, 0x0

    if-lez v5, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusOn()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackEyeOn()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 19
    :cond_6
    sget-object v5, Lcom/android/camera/module/loader/FuncFaceDetect;->TAG:Ljava/lang/String;

    const-string v7, "need trim faces."

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    aget-object v1, v1, v6

    new-array v5, v2, [Landroid/hardware/camera2/params/Face;

    aput-object v1, v5, v6

    move-object v1, v5

    .line 21
    :cond_7
    iget-boolean v5, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mNeedFaceInfo:Z

    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    array-length v3, v1

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    iget-object v5, v3, Lcom/android/camera/effect/FaceAnalyzeInfo;->mAge:[F

    if-eqz v5, :cond_8

    .line 22
    invoke-static {v1, v3}, Lcom/android/camera2/CameraHardwareFace;->convertExCameraHardwareFace([Landroid/hardware/camera2/params/Face;Lcom/android/camera/effect/FaceAnalyzeInfo;)[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_8
    invoke-static {v1}, Lcom/android/camera2/CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v1

    .line 24
    :goto_0
    array-length v3, v1

    if-lez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mNeedEyeInfo:Z

    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 25
    sget-object v3, Lcom/android/camera/trackfocus/TrackFocusResultTag;->EYE_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 26
    sget-object v4, Lcom/android/camera/trackfocus/TrackFocusResultTag;->EYE_POS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v4}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 27
    sget-object v5, Lcom/android/camera/module/loader/FuncFaceDetect;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eye rect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    aget-object v5, v1, v6

    iget-object v5, v5, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    if-eqz v3, :cond_9

    move-object v7, v3

    goto :goto_1

    :cond_9
    sget-object v7, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    :goto_1
    iput-object v7, v5, Lcom/android/camera/trackfocus/EyeInfo;->rect:Landroid/graphics/Rect;

    .line 29
    aget-object v5, v1, v6

    iget-object v5, v5, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_2
    iput v6, v5, Lcom/android/camera/trackfocus/EyeInfo;->eyePos:I

    if-eqz v3, :cond_b

    .line 30
    sget-object v4, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 31
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->setFocusFrameType(I)V

    goto :goto_3

    .line 32
    :cond_b
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->setFocusFrameType(I)V

    goto :goto_3

    .line 33
    :cond_c
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->setFocusFrameType(I)V

    .line 34
    :goto_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 35
    iget-object v3, p0, Lcom/android/camera/module/loader/FuncFaceDetect;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    invoke-interface {v0, v1, v3, v2}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/effect/FaceAnalyzeInfo;Landroid/graphics/Rect;)V

    .line 36
    sget-object v0, Lcom/android/camera/module/loader/FuncFaceDetect;->TAG:Ljava/lang/String;

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

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FuncFaceDetect;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    return-object p1
.end method
