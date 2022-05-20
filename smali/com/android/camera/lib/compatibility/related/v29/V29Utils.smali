.class public Lcom/android/camera/lib/compatibility/related/v29/V29Utils;
.super Ljava/lang/Object;
.source "V29Utils.java"


# static fields
.field public static final DEFAULT_PAINT:Landroid/graphics/Paint;

.field public static final TAG:Ljava/lang/String; = "V29Utils"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/camera/lib/compatibility/related/v29/V29Utils;->DEFAULT_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(I)Z
    .locals 1

    const v0, 0x48454946

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createStreamConfigMap(Ljava/util/List;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v2, p0

    .line 1
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 7
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 10
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 13
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    sget-object v1, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 14
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const/16 v16, 0x1

    .line 15
    invoke-static/range {v2 .. v16}, Lcom/xiaomi/compat/camera2/CameraConstructCompat;->getStreamConfigurationMap([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    return-object v0
.end method

.method public static downsample(Landroid/graphics/Bitmap;IILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p3, p3

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 9
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    sget-object v0, Lcom/android/camera/lib/compatibility/related/v29/V29Utils;->DEFAULT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p3, p0, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static getFrameAtTime(Landroid/media/MediaMetadataRetriever;IIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "V29Utils"

    const-string v1, "getFrameAtTime"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, p5}, Landroid/media/MediaMetadataRetriever;->getFrameAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p5

    if-nez p5, :cond_0

    const-wide/16 v1, -0x1

    const/4 p5, 0x2

    .line 3
    invoke-virtual {p0, v1, v2, p5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p5

    :cond_0
    if-nez p5, :cond_1

    const-string p0, "createVideoThumbnailBitmap fail."

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-le p1, p3, :cond_2

    if-le p2, p4, :cond_2

    return-object p5

    .line 5
    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    invoke-static {p5, p1, p2, p0}, Lcom/android/camera/lib/compatibility/related/v29/V29Utils;->downsample(Landroid/graphics/Bitmap;IILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaUri(Landroid/content/Context;ZZ)Landroid/net/Uri;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    if-eqz p2, :cond_3

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/provider/MediaStore;->getExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_3

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "external_primary"

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    move-object v0, p0

    :cond_3
    return-object v0
.end method

.method public static getPhysicalCameraIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getScaledMinimumScalingSpan(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledMinimumScalingSpan()I

    move-result p0

    return p0
.end method

.method public static hasNavigationBar(Landroid/content/Context;Landroid/view/IWindowManager;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/compat/common/ContextCompat;->getDisplayId(Landroid/content/Context;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHeicSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOo0:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez p0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object p0

    if-eqz p0, :cond_4

    .line 5
    array-length v0, p0

    if-nez v0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooO/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO/OooO00o/OooO00o/OooO00o/OooO00o;

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method
