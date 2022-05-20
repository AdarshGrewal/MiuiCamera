.class public Lcom/android/camera/module/loader/FunctionParseSuperNight;
.super Ljava/lang/Object;
.source "FunctionParseSuperNight.java"

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
.field public static final CAPTURE_EXP_TIME_UPDATE_MILLS:I = 0x3e8

.field public static final SUPER_NIGHT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "FunctionParseSuperNight"


# instance fields
.field public mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

.field public mIsCaptureExpTimeDefined:Z

.field public mIsMiviSatSuperNightSupported:Z

.field public mIsSuperNight:Z

.field public mIsSupportSuperNightExif:Z

.field public mPointOfCaptureExpTimeUpdated:J

.field public mSkip:Z

.field public mSuperNightCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$SuperNightCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateNightTipNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setSuperNightOn(Z)V

    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mSuperNightCallback:Ljava/lang/ref/WeakReference;

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mSkip:Z

    .line 6
    iput-boolean p3, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSupportSuperNightExif:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isMiviSatSuperNightSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsMiviSatSuperNightSupported:Z

    .line 8
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isCaptureExpTimeDefined()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsCaptureExpTimeDefined:Z

    .line 9
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsMiviSatSuperNightSupported:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mUpdateNightTipNeeded:Z

    :cond_1
    return-void
.end method

.method private updateASDScene(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy$SuperNightCallback;Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 6

    .line 1
    iget v0, p3, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    .line 2
    iget p3, p3, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSupportSuperNightExif:Z

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightInfo(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object v0

    if-eqz v0, :cond_1

    and-int/lit16 v1, p3, -0x100

    int-to-float v1, v1

    .line 4
    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->result:F

    :cond_1
    and-int/lit16 v1, p3, -0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const-string/jumbo v1, "se"

    .line 5
    invoke-static {v1, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Algo reporting super night se enable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 7
    invoke-interface {p2, v0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    .line 8
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 9
    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    .line 10
    invoke-interface {p2, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    shr-int/lit8 p3, p3, 0x8

    .line 11
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/camera/module/loader/FunctionParseSuperNight;->updateCaptureExpTime(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZI)V

    :goto_3
    return-void
.end method

.method private updateCaptureExpTime(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZI)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mUpdateNightTipNeeded:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000oOo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v2, 0xa3

    .line 3
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    .line 6
    invoke-interface {p2, v1, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-nez p3, :cond_3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mPointOfCaptureExpTimeUpdated:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move p3, v0

    .line 8
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsCaptureExpTimeDefined:Z

    if-eqz v2, :cond_4

    .line 9
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CAPTURE_EXP_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    .line 10
    :cond_4
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_SE_CAPTURE_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes([B)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p1

    if-nez p3, :cond_6

    .line 12
    iget-boolean v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    const/16 v3, 0x3e8

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v2

    if-ge v2, v3, :cond_6

    :cond_5
    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v2

    if-le v2, v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, p3

    :goto_1
    if-eqz v0, :cond_8

    .line 15
    iput-object p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1, p4}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->setNightTriggerMode(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v1

    .line 18
    :cond_7
    iget-boolean p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    invoke-interface {p2, p1, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mPointOfCaptureExpTimeUpdated:J

    :cond_8
    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mSuperNightCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mSkip:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isSupportSuperNight()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    if-eqz v1, :cond_4

    .line 5
    array-length v3, v1

    if-gtz v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(NoneSemantics)-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, v0, v4}, Lcom/android/camera/module/loader/FunctionParseSuperNight;->updateASDScene(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy$SuperNightCallback;Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    .line 9
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    .line 10
    iget-boolean v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSupportSuperNightExif:Z

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureResultParser;->getSuperNightInfo(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    .line 11
    invoke-interface {v0, v2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    .line 12
    iget-boolean v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsMiviSatSuperNightSupported:Z

    if-eqz v1, :cond_5

    .line 13
    invoke-interface {v0, v2, v2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") asd scene result null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return-object p1

    .line 15
    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    .line 16
    iget-boolean v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSupportSuperNightExif:Z

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureResultParser;->getSuperNightInfo(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    .line 17
    invoke-interface {v0, v2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    .line 18
    iget-boolean v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsMiviSatSuperNightSupported:Z

    if-eqz v1, :cond_7

    .line 19
    invoke-interface {v0, v2, v2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    :cond_7
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionParseSuperNight;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    return-object p1
.end method
