.class public Lcom/xiaomi/protocol/ICustomCaptureResult;
.super Ljava/lang/Object;
.source "ICustomCaptureResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAPTURE_RESULT_EXTRA_CLASS:Ljava/lang/String; = "android.hardware.camera2.impl.CaptureResultExtras"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/protocol/ICustomCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHYSICAL_CAPTURE_RESULT_CLASS:Ljava/lang/String; = "android.hardware.camera2.impl.PhysicalCaptureResultInfo"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCaptureId:Ljava/lang/String;

.field public mFrameNumber:J

.field public mMainPhysicalResult:Landroid/os/Parcelable;

.field public mParcelRequest:Landroid/os/Parcelable;

.field public mRequest:Landroid/hardware/camera2/CaptureRequest;

.field public mResults:Landroid/os/Parcelable;

.field public mSequenceId:I

.field public mSessionId:I

.field public mSubPhysicalResult:Landroid/os/Parcelable;

.field public mTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/xiaomi/protocol/ICustomCaptureResult$1;

    invoke-direct {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIJLandroid/os/Parcelable;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    .line 4
    iput p2, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    .line 5
    iput-wide p3, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    .line 6
    iput-object p5, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    .line 7
    iput-object p6, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method public constructor <init>(IIJLandroid/os/Parcelable;Landroid/os/Parcelable;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    .line 10
    iput p2, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    .line 11
    iput-wide p3, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    .line 12
    iput-object p5, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    .line 13
    iput-object p6, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mParcelRequest:Landroid/os/Parcelable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mTimestamp:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mCaptureId:Ljava/lang/String;

    .line 20
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    .line 21
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method public static getCameraMetaDataCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "android.hardware.camera2.impl.CameraMetadataNative"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
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

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    .line 4
    :goto_0
    sget-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v1, "getCameraMetaDataCopy: failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static retrieveLogicalCameraId(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/hardware/camera2/CaptureRequest;

    const-string v1, "getLogicalCameraId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    sget-object p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v0, "Failed to invoke the method."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :catch_1
    sget-object p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v0, "Cannot access the method"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :catch_2
    sget-object p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get method"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p0, "none"

    return-object p0
.end method

.method public static toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;IZ)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method public static toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;IZ)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 23

    const-string v0, "android.hardware.camera2.impl.PhysicalCaptureResultInfo"

    const-string v1, "|"

    .line 2
    const-class v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v5

    .line 4
    sget-object v7, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toTotalCaptureResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sdk int "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.hardware.camera2.impl.CaptureResultExtras"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v8, 0x1e

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v3, 0x2

    const/16 v17, 0x1

    const/4 v10, 0x0

    if-lt v7, v8, :cond_0

    const/16 v7, 0xb

    :try_start_1
    new-array v8, v7, [Ljava/lang/Class;

    .line 7
    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v10

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v17

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v3

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v15

    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v14

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v13

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v12

    aput-object v2, v8, v11

    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x8

    aput-object v19, v8, v18

    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x9

    aput-object v19, v8, v20

    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v21, 0xa

    aput-object v19, v8, v21

    .line 8
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v3

    .line 10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v7, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v12

    const/16 v16, 0x0

    aput-object v16, v7, v11

    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v18, 0x8

    aput-object v22, v7, v18

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v7, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v21

    .line 11
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 12
    :catch_0
    :try_start_2
    sget-object v7, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v8, "could not reflect constructor with more params, try anthor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x8

    new-array v8, v7, [Ljava/lang/Class;

    .line 13
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v10

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v17

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v15

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v14

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v13

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v12

    aput-object v2, v8, v11

    .line 14
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 16
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v12

    const/4 v1, 0x0

    aput-object v1, v2, v11

    .line 17
    invoke-virtual {v8, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 18
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_1

    const/16 v7, 0x8

    new-array v8, v7, [Ljava/lang/Class;

    .line 19
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v10

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v17

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v15

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v14

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v13

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v8, v12

    aput-object v2, v8, v11

    .line 20
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 22
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v12

    const/4 v1, 0x0

    aput-object v1, v2, v11

    .line 23
    invoke-virtual {v8, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-array v2, v11, [Ljava/lang/Class;

    .line 24
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v10

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v17

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v15

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v14

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v13

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v12

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v1, v11, [Ljava/lang/Object;

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    .line 28
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    :goto_0
    const-class v2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 30
    array-length v7, v2

    move v11, v10

    :goto_1
    if-ge v11, v7, :cond_3

    aget-object v20, v2, v11

    .line 31
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v12

    array-length v12, v12

    if-le v12, v3, :cond_2

    move-object/from16 v8, v20

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x6

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 32
    sget-object v2, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v7, "prefer physical meta"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getMainPhysicalResult()Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_5

    .line 34
    sget-object v2, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v7, "no physical meta, use logical"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_3

    .line 36
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v2

    .line 37
    :cond_5
    :goto_3
    invoke-static {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getCameraMetaDataCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 38
    sget-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    const-string v1, "null native metadata"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    .line 39
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-ge v7, v11, :cond_7

    new-array v0, v13, [Ljava/lang/Object;

    aput-object v2, v0, v10

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    aput-object v2, v0, v17

    aput-object v1, v0, v3

    const/4 v1, 0x0

    aput-object v1, v0, v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v14

    .line 41
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0

    .line 42
    :cond_7
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1e

    if-gt v7, v11, :cond_8

    .line 43
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    invoke-static {v0, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x6

    :try_start_3
    new-array v11, v7, [Ljava/lang/Object;

    aput-object v2, v11, v10

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    aput-object v7, v11, v17

    aput-object v1, v11, v3

    const/4 v1, 0x0

    aput-object v1, v11, v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v14

    aput-object v0, v11, v13

    .line 46
    invoke-virtual {v8, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v1

    .line 47
    :catch_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->retrieveLogicalCameraId(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;

    move-result-object v7

    .line 49
    sget-object v11, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Still sdk 30: logicalCameraId is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v10

    aput-object v2, v11, v17

    aput-object v1, v11, v3

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v14

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-object v1, v11, v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v11, v2

    const/4 v1, 0x7

    aput-object v0, v11, v1

    .line 51
    invoke-virtual {v8, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0

    .line 52
    :cond_8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    invoke-static {v0, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->retrieveLogicalCameraId(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;

    move-result-object v7

    .line 56
    sget-object v11, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "logicalCameraId is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v10

    aput-object v2, v11, v17

    aput-object v1, v11, v3

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v14

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-object v1, v11, v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v11, v2

    const/4 v1, 0x7

    aput-object v0, v11, v1

    .line 58
    invoke-virtual {v8, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    sget-object v0, Lcom/xiaomi/protocol/ICustomCaptureResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v2, "null capture result!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCaptureId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mCaptureId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    return-wide v0
.end method

.method public getMainPhysicalResult()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mMainPhysicalResult:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getParcelRequest()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mParcelRequest:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getResults()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    return v0
.end method

.method public getSubPhysicalResult()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSubPhysicalResult:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mTimestamp:J

    return-wide v0
.end method

.method public setCaptureId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mCaptureId:Ljava/lang/String;

    return-void
.end method

.method public setFrameNumber(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    return-void
.end method

.method public setMainPhysicalResult(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mMainPhysicalResult:Landroid/os/Parcelable;

    return-void
.end method

.method public setParcelRequest(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mParcelRequest:Landroid/os/Parcelable;

    return-void
.end method

.method public setRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method public setResults(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    return-void
.end method

.method public setSequenceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    return-void
.end method

.method public setSessionId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    return-void
.end method

.method public setSubPhysicalResult(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSubPhysicalResult:Landroid/os/Parcelable;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICustomCaptureResult{mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mSequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mFrameNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mResults:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object v0, p0, Lcom/xiaomi/protocol/ICustomCaptureResult;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
