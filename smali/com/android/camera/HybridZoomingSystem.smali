.class public Lcom/android/camera/HybridZoomingSystem;
.super Ljava/lang/Object;
.source "HybridZoomingSystem.java"


# static fields
.field public static final DEFAULT_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

.field public static final FLOAT_MOON_MODE_ZOOM_MAX:F = 20.0f

.field public static final FLOAT_ULTRA_WIDE_ZOOM_MAX:F = 6.0f

.field public static final FLOAT_ZOOM_RATIO_10X:F = 10.0f

.field public static final FLOAT_ZOOM_RATIO_2X:F = 2.0f

.field public static final FLOAT_ZOOM_RATIO_30X:F = 30.0f

.field public static final FLOAT_ZOOM_RATIO_3X:F = 3.0f

.field public static final FLOAT_ZOOM_RATIO_5X:F = 5.0f

.field public static final FLOAT_ZOOM_RATIO_6X:F = 6.0f

.field public static final FLOAT_ZOOM_RATIO_MACRO:F = 0.0f

.field public static final FLOAT_ZOOM_RATIO_NONE:F = 1.0f

.field public static FLOAT_ZOOM_RATIO_ULTR:F = 0.0f

.field public static final FLOAT_ZOOM_RATIO_ULTRA_TELE_THRESHHOLD:F = 3.7f

.field public static final FLOAT_ZOOM_RATIO_WIDE:F = 1.0f

.field public static final IS_2_OR_MORE_SAT:Z

.field public static final IS_2_SAT:Z

.field public static final IS_3_OR_MORE_SAT:Z

.field public static final IS_3_SAT:Z

.field public static final IS_4_OR_MORE_SAT:Z

.field public static final IS_4_SAT:Z

.field public static final MACRO_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

.field public static final OPTICAL_ZOOM_RATIO_COMBINATION:I

.field public static SAT_ZOOM_RATIO_X:[F = null

.field public static SAT_ZOOM_RATIO_Y:[F = null

.field public static final STRING_ZOOM_RATIO_NONE:Ljava/lang/String; = "1.0"

.field public static final SUPPORT_PROGRESS_ZOOM_EFFECT:Z

.field public static final TAG:Ljava/lang/String; = "HybridZoomingSystem"

.field public static final TOLERANCE_FOR_ZOOM_RATIO_CHANGED:F = 0.01f

.field public static VIDEO_SAT_ZOOM_RATIO_X:[F

.field public static VIDEO_SAT_ZOOM_RATIO_Y:[F

.field public static final ZOOM_INDEXS_DEFAULT:Ljava/lang/String;

.field public static final ZOOM_RULER_DEFAULT:Ljava/lang/String;

.field public static sDefaultMacroOpticalZoomRatio:F

.field public static sMacroSupportedOpticalZoomRatios:[F

.field public static final sZoomRatioHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->sZoomRatioHistory:Ljava/util/Map;

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.0:2.0"

    goto :goto_0

    :cond_0
    const-string v0, "1.0"

    :goto_0
    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->DEFAULT_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO00o(I)I

    move-result v0

    sput v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:I

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    sget-object v1, Lcom/android/camera/HybridZoomingSystem;->DEFAULT_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->MACRO_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0.6:1:2:5:10"

    goto :goto_2

    :cond_2
    const-string v0, "1:2:4:6:8:10"

    :goto_2
    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->ZOOM_INDEXS_DEFAULT:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "4:10:10:5"

    goto :goto_3

    :cond_3
    const-string v0, "10:10:5:5:5"

    :goto_3
    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->ZOOM_RULER_DEFAULT:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    sput v0, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F

    const v1, 0x3f19999a    # 0.6f

    .line 9
    sput v1, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    .line 10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00000Oo()[F

    move-result-object v1

    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->SAT_ZOOM_RATIO_X:[F

    .line 11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00000o0()[F

    move-result-object v1

    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->SAT_ZOOM_RATIO_Y:[F

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000OOO()[F

    move-result-object v1

    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->VIDEO_SAT_ZOOM_RATIO_X:[F

    .line 13
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000OOo()[F

    move-result-object v1

    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->VIDEO_SAT_ZOOM_RATIO_Y:[F

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0O0Oo()Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/HybridZoomingSystem;->SUPPORT_PROGRESS_ZOOM_EFFECT:Z

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    const/16 v5, 0xa3

    invoke-virtual {v4, v5}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(I)[F

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 17
    :goto_4
    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 18
    aget v7, v4, v6

    cmpg-float v7, v7, v0

    if-gez v7, :cond_4

    .line 19
    aget v0, v4, v6

    sput v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 20
    :cond_5
    :goto_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Ooo00()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 22
    new-instance v0, Ljava/util/Scanner;

    sget-object v4, Lcom/android/camera/HybridZoomingSystem;->MACRO_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v4, "\\s*[:,]\\s*"

    .line 23
    invoke-virtual {v0, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    const/4 v4, -0x1

    .line 24
    :cond_6
    :goto_6
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 25
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 26
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 27
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_6

    .line 28
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sput v6, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 29
    :cond_7
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_9

    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v5

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 33
    sget-object v6, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    add-int/lit8 v7, v1, 0x1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v6, v1

    move v1, v7

    goto :goto_7

    .line 34
    :cond_8
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HybridZoomingSystem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 35
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The supported optical zoom ratios are probably not configured correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 36
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 37
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v2

    .line 38
    :cond_a
    :goto_9
    sget v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:I

    if-ne v0, v2, :cond_b

    move v0, v3

    goto :goto_a

    :cond_b
    move v0, v5

    :goto_a
    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    .line 39
    sget v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:I

    if-lt v0, v2, :cond_c

    move v0, v3

    goto :goto_b

    :cond_c
    move v0, v5

    :goto_b
    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_2_OR_MORE_SAT:Z

    .line 40
    sget v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    move v0, v3

    goto :goto_c

    :cond_d
    move v0, v5

    :goto_c
    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_SAT:Z

    .line 41
    sget v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:I

    if-lt v0, v1, :cond_e

    move v0, v3

    goto :goto_d

    :cond_e
    move v0, v5

    :goto_d
    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    .line 42
    sget v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    move v0, v3

    goto :goto_e

    :cond_f
    move v0, v5

    :goto_e
    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_4_SAT:Z

    .line 43
    sget v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:I

    if-lt v0, v1, :cond_10

    goto :goto_f

    :cond_10
    move v3, v5

    :goto_f
    sput-boolean v3, Lcom/android/camera/HybridZoomingSystem;->IS_4_OR_MORE_SAT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(FF)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static getDefaultOpticalZoomRatioIndex(I)I
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    aget v2, p0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getMaxMainZoomRatio()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    :goto_0
    return v0
.end method

.method public static getMaxMainZoomRatio(F)F
    .locals 2

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    .line 5
    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static getMaximumMacroOpticalZoomRatio()F
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 2
    aget v0, v0, v1

    return v0
.end method

.method public static getMaximumOpticalZoomRatio(I)F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p0

    .line 2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 3
    aget p0, p0, v0

    return p0
.end method

.method public static getMinimumMacroOpticalZoomRatio()F
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getMinimumOpticalZoomRatio(I)F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public static getOpticalZoomRatioAt(II)F
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p0

    .line 2
    array-length v0, p0

    const-string v1, ")   curIndex error : "

    const-string v2, "The given index must be in range [0, "

    const-string v3, "HybridZoomingSystem"

    if-gez p1, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, v0, -0x1

    .line 5
    :cond_1
    :goto_0
    aget p0, p0, p1

    return p0
.end method

.method public static getOpticalZoomRatioIndex(IF)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p0

    .line 2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    aget v1, p0, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal zoom ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSupportedOpticalZoomRatios(I)[F
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0, p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(I)[F

    move-result-object p0

    return-object p0
.end method

.method public static getTeleMinZoomRatio()F
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getMinZoomRatio(F)F

    move-result v1

    :goto_0
    return v1
.end method

.method public static getTeleZoomRatio(I)F
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->getDefaultOpticalZoomRatioIndex(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 3
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 4
    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    :goto_0
    return p0
.end method

.method public static getUltraTeleMinZoomRatio()F
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getMinZoomRatio(F)F

    move-result v1

    :goto_0
    return v1
.end method

.method public static getZoomRatioNone(ZI)F
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0o()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p0, 0xb4

    if-ne p1, p0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0oO()F

    move-result p0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static isOpticalZoomRatio(IF)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZoomRatioNone(FZ)Z
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0o()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    cmpl-float p1, p0, v3

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0oO()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    cmpl-float p0, p0, v3

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static preload()V
    .locals 2

    const-string v0, "HybridZoomingSystem"

    const-string/jumbo v1, "preload"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sub(FF)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p0

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sub-int v4, v0, v2

    sub-int v5, v1, p1

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    .line 6
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "toCropRegion(): zoom ratio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", crop region = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HybridZoomingSystem"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activeArraySize must be non null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zoom ratio must be greater than 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toCropRegionConsiderZoomRatio(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isZoomRatioSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p0

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-int p1, p1

    sub-int v4, v1, v3

    sub-int v5, v2, p1

    add-int/2addr v1, v3

    add-int/2addr v2, p1

    .line 9
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 10
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toCropRegion(): zoom ratio = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", crop region = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HybridZoomingSystem"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activeArraySize must be non null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zoom ratio must be greater than 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toDecimal(F)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid zoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HybridZoomingSystem"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static toMTKCropRegion(FLandroid/graphics/Rect;)[I
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p0

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-int p1, p1

    const/4 v4, 0x4

    new-array v4, v4, [I

    sub-int/2addr v0, v3

    const/4 v5, 0x0

    aput v0, v4, v5

    sub-int/2addr v2, p1

    const/4 v0, 0x1

    aput v2, v4, v0

    mul-int/2addr v3, v1

    aput v3, v4, v1

    mul-int/2addr p1, v1

    const/4 v2, 0x3

    aput p1, v4, v2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "int[]{"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v4, v5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v4, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v4, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v4, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toMTKCropRegion(): zoom ratio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", crop region = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HybridZoomingSystem"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activeArraySize must be non null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zoom ratio must be greater than 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    cmpl-float v0, v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "%.1fx"

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v0

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v0, p0

    if-nez v0, :cond_1

    const-string p0, "macro"

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p0

    .line 5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toZoomRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toZoomRatio(): activeArraySize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", crop region = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HybridZoomingSystem"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activeArraySize & cropRegion must be non null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
