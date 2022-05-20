.class public final Lcom/xiaomi/camera/base/CameraDeviceUtil;
.super Ljava/lang/Object;
.source "CameraDeviceUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraDeviceUtil"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraCombinationMode(I)I
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/16 v3, 0x28

    if-eq p0, v3, :cond_2

    const/16 v3, 0x50

    if-eq p0, v3, :cond_1

    const/16 v3, 0x51

    if-eq p0, v3, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x302

    return p0

    :pswitch_1
    const/16 p0, 0x202

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    return v2

    :pswitch_4
    return v1

    :cond_0
    const/16 p0, 0x303

    return p0

    :cond_1
    const/16 p0, 0x203

    return p0

    :cond_2
    const/16 p0, 0x12

    return p0

    :cond_3
    :pswitch_5
    const/16 p0, 0x301

    return p0

    :cond_4
    :pswitch_6
    const/16 p0, 0x201

    return p0

    :cond_5
    :pswitch_7
    return v0

    :cond_6
    const/16 p0, 0x11

    return p0

    :cond_7
    return v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/xiaomi/camera/base/CameraDeviceUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomCaptureResult: resultCameraMetadataNative ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    const-string v2, "getNativeCopy"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 6
    sget-object v2, Lcom/xiaomi/camera/base/CameraDeviceUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomCaptureResult: requestNativeMetadata ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v2, Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-direct {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setFrameNumber(J)V

    .line 9
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 10
    invoke-virtual {v2, v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setParcelRequest(Landroid/os/Parcelable;)V

    .line 11
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSequenceId(I)V

    .line 12
    invoke-virtual {v2, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setResults(Landroid/os/Parcelable;)V

    .line 13
    invoke-virtual {v2, p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setCaptureId(Ljava/lang/String;)V

    .line 14
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setTimeStamp(J)V

    .line 16
    :cond_0
    sget-object p0, Lcom/xiaomi/camera/base/CameraDeviceUtil;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomCaptureResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/xiaomi/camera/base/CameraDeviceUtil;->TAG:Ljava/lang/String;

    const-string v0, "getCustomCaptureResult: getCustomCaptureResult"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/hardware/camera2/CaptureResult;

    const-string v1, "getNativeCopy"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 4
    :goto_0
    sget-object v0, Lcom/xiaomi/camera/base/CameraDeviceUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static prepareCalibrationDataForAlgo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "camera"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_5

    .line 3
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    :try_start_1
    const-string v3, "android.hardware.camera2.CameraCharacteristics$Key"

    .line 5
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 6
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "com.xiaomi.camera.algoup.dualCalibrationData"

    aput-object v6, v4, v2

    .line 7
    const-class v2, [B

    aput-object v2, v4, v1

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 10
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_2

    .line 11
    invoke-static {p0, p1, v0}, Lcom/xiaomi/camera/base/CommonUtil;->saveCameraCalibrationToFile(Landroid/content/Context;[BZ)Z

    :cond_2
    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    .line 12
    :goto_1
    sget-object p1, Lcom/xiaomi/camera/base/CameraDeviceUtil;->TAG:Ljava/lang/String;

    const-string v0, "prepareCalibrationDataForAlgo: call reflect method failed!"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "getCameraCharacteristics\'s dualCalibrationData failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_5
    move-exception p0

    .line 14
    sget-object p1, Lcom/xiaomi/camera/base/CameraDeviceUtil;->TAG:Ljava/lang/String;

    const-string v0, "prepareCalibrationDataForAlgo: get getCameraCharacteristics failed!"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
