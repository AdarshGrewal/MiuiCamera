.class public Lcom/android/camera/ExifTool;
.super Ljava/lang/Object;
.source "ExifTool.java"


# static fields
.field public static final APERTURE_VALUE_PRECISION:Ljava/lang/Long;

.field public static final FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

.field public static final F_NUMBER_PRECISION:Ljava/lang/Long;

.field public static final LOG_2:D

.field public static final MS_TO_S:Ljava/lang/Long;

.field public static final NS_TO_S:Ljava/lang/Long;

.field public static final SHUTTER_SPEED_VALUE_PRECISION:Ljava/lang/Long;

.field public static final TAG:Ljava/lang/String; = "ExifTool"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ExifTool;->LOG_2:D

    const-wide/32 v0, 0x3b9aca00

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ExifTool;->NS_TO_S:Ljava/lang/Long;

    const-wide/32 v0, 0xf4240

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ExifTool;->MS_TO_S:Ljava/lang/Long;

    const-wide/16 v0, 0x64

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ExifTool;->SHUTTER_SPEED_VALUE_PRECISION:Ljava/lang/Long;

    .line 5
    sput-object v0, Lcom/android/camera/ExifTool;->F_NUMBER_PRECISION:Ljava/lang/Long;

    .line 6
    sput-object v0, Lcom/android/camera/ExifTool;->APERTURE_VALUE_PRECISION:Ljava/lang/Long;

    .line 7
    sput-object v0, Lcom/android/camera/ExifTool;->FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendExifInfo(IIIJLandroid/location/Location;Landroid/hardware/camera2/CaptureResult;JLcom/android/gallery3d/exif/ExifInterface;Z)V
    .locals 4

    .line 34
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifOrientationValue(I)S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p9, v0, p2}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 35
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p9, p2, v0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 36
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p9, p2, v0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 37
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p9, p2, p0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 38
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p9, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 39
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p9, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 40
    sget-object p0, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 41
    sget-object p0, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-virtual {p9, p0}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiProduct(Ljava/lang/String;)Z

    .line 42
    :cond_0
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {p9, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    const-wide/16 p0, 0x0

    cmp-long p2, p3, p0

    if-lez p2, :cond_1

    .line 43
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p9, p2, p3, p4, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 44
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p9, p2, p3, p4, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addSubTagSecTime(IJLjava/util/TimeZone;)Z

    .line 45
    :cond_1
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p6, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "LENS_FOCAL_LENGTH: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ExifTool"

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 47
    sget p3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    sget-object p2, Lcom/android/camera/ExifTool;->FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object p2

    invoke-static {p9, p3, p2}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 48
    :cond_2
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p6, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LENS_APERTURE: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    .line 50
    sget p3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    sget-object v2, Lcom/android/camera/ExifTool;->F_NUMBER_PRECISION:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object v0

    invoke-static {p9, p3, v0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 51
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Lcom/android/camera/ExifTool;->log2(D)D

    move-result-wide p2

    mul-double/2addr p2, v0

    .line 52
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    sget-object v1, Lcom/android/camera/ExifTool;->APERTURE_VALUE_PRECISION:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object p2

    invoke-static {p9, v0, p2}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 53
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 54
    sget-object p2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ISO_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p6, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "[ALGOUP|MMCAMERA] SENSOR_SENSITIVITY: "

    invoke-virtual {p3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_4
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p6, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const-string p3, "SENSOR_SENSITIVITY: "

    if-eqz p10, :cond_5

    .line 57
    sget-object p10, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p6, p10}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/Integer;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " CONTROL_POST_RAW_SENSITIVITY_BOOST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p10, :cond_5

    if-eqz p2, :cond_5

    .line 59
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p10}, Ljava/lang/Integer;->intValue()I

    move-result p10

    div-int/lit8 p10, p10, 0x64

    mul-int/2addr p2, p10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 60
    :cond_5
    new-instance p10, Ljava/lang/StringBuilder;

    invoke-direct {p10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_6

    .line 61
    sget p3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-static {p9, p3, p2}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 62
    :cond_6
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p6, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "SENSOR_EXPOSURE_TIME: "

    invoke-virtual {p3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p0, p7, p0

    const-wide/16 v0, 0x3e8

    if-lez p0, :cond_8

    long-to-double p0, p7

    const-wide p2, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, p2

    const-wide/high16 p7, 0x3fe0000000000000L    # 0.5

    cmpg-double p7, p0, p7

    if-gez p7, :cond_7

    mul-double/2addr p0, p2

    double-to-long p0, p0

    goto :goto_1

    .line 64
    :cond_7
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    mul-long/2addr p0, v0

    .line 65
    :goto_1
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance p3, Lcom/android/gallery3d/exif/Rational;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-static {p9, p2, p3}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    if-eqz p2, :cond_a

    .line 66
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide p7, 0xee6b2800L

    cmp-long p0, p0, p7

    if-gtz p0, :cond_9

    .line 67
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance p1, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    sget-object p3, Lcom/android/camera/ExifTool;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, p7, p8, v0, v1}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-static {p9, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    goto :goto_2

    .line 68
    :cond_9
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance p1, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    div-long/2addr p7, v0

    sget-object p3, Lcom/android/camera/ExifTool;->MS_TO_S:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, p7, p8, v0, v1}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-static {p9, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 69
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    sget-object p2, Lcom/android/camera/ExifTool;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 70
    invoke-static {p0, p1}, Lcom/android/camera/ExifTool;->log2(D)D

    move-result-wide p0

    .line 71
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    sget-object p3, Lcom/android/camera/ExifTool;->SHUTTER_SPEED_VALUE_PRECISION:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    invoke-static {p0, p1, p7, p8}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    invoke-static {p9, p2, p0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 72
    :cond_a
    :goto_3
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p6, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    move-object p5, p0

    .line 73
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "JPEG_GPS_LOCATION: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    const/4 p1, 0x0

    if-eqz p5, :cond_d

    .line 74
    invoke-virtual {p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-virtual {p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide p7

    invoke-virtual {p9, p2, p3, p7, p8}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    .line 75
    invoke-virtual {p5}, Landroid/location/Location;->getTime()J

    move-result-wide p2

    invoke-virtual {p9, p2, p3}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 76
    invoke-virtual {p5}, Landroid/location/Location;->getAltitude()D

    move-result-wide p2

    const-wide/16 p7, 0x0

    cmpl-double p10, p2, p7

    if-eqz p10, :cond_d

    cmpg-double p2, p2, p7

    if-gez p2, :cond_c

    move p2, p0

    goto :goto_5

    :cond_c
    move p2, p1

    .line 77
    :goto_5
    sget p3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p9, p3, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {p9, p2}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 78
    invoke-virtual {p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-virtual {p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide p7

    invoke-virtual {p9, p2, p3, p7, p8}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    .line 79
    :cond_d
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p6, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 80
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "FLASH_STATE: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_e

    .line 81
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_e

    .line 82
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-static {p9, p1, p0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    goto :goto_6

    .line 83
    :cond_e
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p9, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    :goto_6
    return-void
.end method

.method public static appendExifInfo(IILandroid/hardware/camera2/impl/CameraMetadataNative;Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 6

    .line 1
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 2
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 3
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, v0, p0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 4
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 5
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p3, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 6
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {p3, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 7
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LENS_FOCAL_LENGTH: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExifTool"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 9
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v1, p0

    sget-object p0, Lcom/android/camera/ExifTool;->FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    invoke-static {p3, p1, p0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 10
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LENS_APERTURE: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 12
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    sget-object v3, Lcom/android/camera/ExifTool;->F_NUMBER_PRECISION:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object v1

    invoke-static {p3, p1, v1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Lcom/android/camera/ExifTool;->log2(D)D

    move-result-wide p0

    mul-double/2addr p0, v1

    .line 14
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    sget-object v2, Lcom/android/camera/ExifTool;->APERTURE_VALUE_PRECISION:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    invoke-static {p3, v1, p0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 15
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 16
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ISO_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ALGOUP|MMCAMERA] SENSOR_SENSITIVITY: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_2
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENSOR_SENSITIVITY: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p0, :cond_3

    .line 20
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-static {p3, p1, p0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 21
    :cond_3
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENSOR_EXPOSURE_TIME: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5

    .line 23
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v3, 0xee6b2800L

    cmp-long p1, v1, v3

    if-gtz p1, :cond_4

    .line 24
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance v1, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/android/camera/ExifTool;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-static {p3, p1, v1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_4
    sget p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance v1, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-object v4, Lcom/android/camera/ExifTool;->MS_TO_S:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-static {p3, p1, v1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 26
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    sget-object v1, Lcom/android/camera/ExifTool;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr p0, v1

    .line 27
    invoke-static {p0, p1}, Lcom/android/camera/ExifTool;->log2(D)D

    move-result-wide p0

    .line 28
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    sget-object v2, Lcom/android/camera/ExifTool;->SHUTTER_SPEED_VALUE_PRECISION:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    invoke-static {p3, v1, p0}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    .line 29
    :cond_5
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FLASH_STATE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_6

    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_6

    .line 32
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    goto :goto_2

    .line 33
    :cond_6
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/android/camera/ExifTool;->setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static appendExifToBitmap(Landroid/graphics/Bitmap;Ljava/io/OutputStream;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object v3, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOO0:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v2, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    sget-object v2, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiProduct(Ljava/lang/String;)Z

    .line 10
    :cond_0
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifOrientationValue(I)S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    .line 13
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, p2, v2, v3, v4}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 14
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, p2, v2, v3, v4}, Lcom/android/gallery3d/exif/ExifInterface;->addSubTagSecTime(IJLjava/util/TimeZone;)Z

    .line 15
    :cond_1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 17
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 18
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v6

    invoke-virtual {v0, p2, v6}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {v4, v5}, Lcom/android/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;

    move-result-object v6

    invoke-virtual {v0, p2, v6}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_2

    const-string v2, "N"

    goto :goto_0

    :cond_2
    const-string v2, "S"

    :goto_0
    invoke-virtual {v0, p2, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_3

    const-string v2, "E"

    goto :goto_1

    :cond_3
    const-string v2, "W"

    :goto_1
    invoke-virtual {v0, p2, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p3, :cond_b

    .line 22
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-eqz p2, :cond_5

    .line 23
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v3, p2

    sget-object p2, Lcom/android/camera/ExifTool;->FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_5
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENS_APERTURE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExifTool"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    .line 26
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    sget-object v6, Lcom/android/camera/ExifTool;->F_NUMBER_PRECISION:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 27
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v6, p2

    invoke-static {v6, v7}, Lcom/android/camera/ExifTool;->log2(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    .line 28
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    sget-object v2, Lcom/android/camera/ExifTool;->APERTURE_VALUE_PRECISION:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_6
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_7

    .line 30
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v0, v2, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_7
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SENSOR_EXPOSURE_TIME: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9

    .line 33
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, 0xee6b2800L

    cmp-long v2, v4, v6

    if-gtz v2, :cond_8

    .line 34
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance v4, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Lcom/android/camera/ExifTool;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-virtual {v0, v2, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_8
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance v4, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sget-object v7, Lcom/android/camera/ExifTool;->MS_TO_S:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-virtual {v0, v2, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    sget-object p2, Lcom/android/camera/ExifTool;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 37
    invoke-static {v4, v5}, Lcom/android/camera/ExifTool;->log2(D)D

    move-result-wide v4

    .line 38
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    sget-object v2, Lcom/android/camera/ExifTool;->SHUTTER_SPEED_VALUE_PRECISION:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/ExifTool;->doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_9
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FLASH_STATE: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a

    .line 41
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_a

    .line 42
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 43
    :cond_a
    sget p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_b
    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->setExif(Ljava/util/Collection;)V

    .line 45
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static doubleToRational(DJ)Lcom/android/gallery3d/exif/Rational;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/gallery3d/exif/Rational;

    long-to-double v1, p2

    mul-double/2addr p0, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    double-to-long p0, p0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    return-object v0
.end method

.method public static log2(D)D
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, Lcom/android/camera/ExifTool;->LOG_2:D

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static setTagValue(Lcom/android/gallery3d/exif/ExifInterface;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    :cond_0
    return-void
.end method

.method public static updateExif([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;Landroid/hardware/camera2/impl/CameraMetadataNative;Z)[B
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p4

    move-object/from16 v4, p10

    const-string v5, "ExifTool"

    if-nez p11, :cond_1

    if-nez p3, :cond_1

    .line 1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p5, :cond_1

    sget-object v6, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    .line 2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    :try_start_0
    new-instance v9, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v9}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 6
    invoke-virtual {v9, v1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v10

    invoke-virtual {v10}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v10, :cond_2

    if-eqz v4, :cond_2

    move/from16 v10, p7

    move/from16 v11, p8

    .line 8
    :try_start_1
    invoke-static {v10, v11, v4, v9}, Lcom/android/camera/ExifTool;->appendExifInfo(IILandroid/hardware/camera2/impl/CameraMetadataNative;Lcom/android/gallery3d/exif/ExifInterface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v12, "appendExif(): Failed to append exif metadata"

    .line 9
    invoke-static {v5, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_1
    sget-object v12, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    move/from16 v11, p8

    :cond_3
    move-object/from16 v4, p9

    .line 11
    :goto_2
    sget v12, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(II)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v12

    if-nez v12, :cond_4

    .line 12
    sget v12, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static/range {p6 .. p6}, Lcom/android/gallery3d/exif/ExifInterface;->getExifOrientationValue(I)S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 13
    :cond_4
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 14
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "save algorithm: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v9, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addAlgorithmComment(Ljava/lang/String;)Z

    :cond_5
    const/4 v0, 0x1

    if-eqz p5, :cond_8

    .line 16
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "save xiaomi comment: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->getInfoString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", aiType = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/android/gallery3d/exif/ExifInterface;->addAiType(I)Z

    .line 18
    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->isBokehFrontCamera()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 19
    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontMirror()Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v0

    goto :goto_3

    :cond_6
    move v12, v13

    :goto_3
    invoke-virtual {v9, v12}, Lcom/android/gallery3d/exif/ExifInterface;->addFrontMirror(I)Z

    .line 20
    :cond_7
    invoke-virtual/range {p5 .. p8}, Lcom/xiaomi/camera/core/PictureInfo;->setAfRoi(III)Ljava/lang/String;

    .line 21
    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->getXpCommentBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifInterface;->addXpComment([B)Z

    .line 22
    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->getInfoString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z

    .line 23
    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->getSiqeType()B

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifInterface;->addSiqeType(B)Z

    .line 24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XIAOMI_SIQE_TYPE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/xiaomi/camera/core/PictureInfo;->getSiqeType()B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_8
    sget-object v10, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 26
    sget-object v10, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiProduct(Ljava/lang/String;)Z

    :cond_9
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_a

    .line 27
    sget v10, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v9, v10, v2, v3, v11}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 28
    sget v10, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v9, v10, v2, v3, v11}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 29
    sget v10, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v9, v10, v2, v3, v11}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 30
    sget v10, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v9, v10, v2, v3, v11}, Lcom/android/gallery3d/exif/ExifInterface;->addSubTagSecTime(IJLjava/util/TimeZone;)Z

    .line 31
    sget v10, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v9, v10, v2, v3, v11}, Lcom/android/gallery3d/exif/ExifInterface;->addSubTagSecTime(IJLjava/util/TimeZone;)Z

    .line 32
    sget v10, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v9, v10, v2, v3, v11}, Lcom/android/gallery3d/exif/ExifInterface;->addSubTagSecTime(IJLjava/util/TimeZone;)Z

    .line 33
    :cond_a
    sget v10, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 34
    sget v10, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object v11, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOO0:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    if-eqz v4, :cond_c

    .line 35
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v9, v10, v11, v14, v15}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    .line 36
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 37
    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmpl-double v4, v10, v14

    if-eqz v4, :cond_c

    cmpg-double v4, v10, v14

    if-gez v4, :cond_b

    move v13, v0

    .line 38
    :cond_b
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v9, v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 39
    :cond_c
    invoke-virtual {v9, v1, v8}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 40
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 41
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add datetime = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExif error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 44
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update exif cost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 1
    invoke-static/range {v0 .. v11}, Lcom/android/camera/ExifTool;->updateExif([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;Landroid/hardware/camera2/impl/CameraMetadataNative;Z)[B

    move-result-object v0

    return-object v0
.end method
