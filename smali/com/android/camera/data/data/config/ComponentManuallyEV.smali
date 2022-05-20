.class public Lcom/android/camera/data/data/config/ComponentManuallyEV;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyEV.java"


# static fields
.field public static final FLOAT_ERROR:F = 0.001f

.field public static final TAG:Ljava/lang/String; = "ComponentManuallyEV"


# instance fields
.field public mDisabled:Z

.field public mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyEV;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/data/data/ComponentData;->mIsDisplayStringFromResourceId:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/data/data/ComponentData;->mIsKeepValueWhenDisabled:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRange()Landroid/util/Range;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 10
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 11
    sget-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoo:Z

    if-nez v4, :cond_1

    sget-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoOO:Z

    if-eqz v4, :cond_2

    :cond_1
    const/16 v3, -0xc

    const/16 v2, 0xc

    :cond_2
    int-to-float v3, v3

    .line 12
    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationStep()F

    move-result v4

    mul-float/2addr v3, v4

    int-to-float v2, v2

    .line 13
    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationStep()F

    move-result v4

    mul-float/2addr v2, v4

    .line 14
    new-instance v4, Landroid/icu/text/DecimalFormat;

    const-string v5, "0.0"

    invoke-direct {v4, v5}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v6, Landroid/icu/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v6, v7}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v7, 0x2e

    .line 16
    invoke-virtual {v6, v7}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 17
    invoke-virtual {v4, v6}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 18
    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationStep()F

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    :goto_0
    const v6, 0x3a83126f    # 0.001f

    add-float/2addr v6, v2

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    float-to-double v6, v3

    .line 19
    invoke-virtual {v4, v6, v7}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-0.0"

    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string v6, "0"

    :cond_4
    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v7, v3, v7

    if-lez v7, :cond_5

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object v7, v6

    .line 22
    :goto_1
    new-instance v8, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9, v7, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v3, v1

    goto :goto_0

    .line 23
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/data/data/ComponentDataItem;

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyEV;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 3
    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/android/camera/data/data/config/ComponentManuallyEV;->TAG:Ljava/lang/String;

    const-string p2, "checkValueValid: invalid value!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public disableUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyEV;->mDisabled:Z

    return v0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->getItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v1, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/data/data/config/ComponentManuallyEV;->TAG:Ljava/lang/String;

    const-string v1, "getComponentValue: NPE"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 6
    :cond_1
    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getContentDescriptionString()I
    .locals 1

    const v0, 0x7f1205d4

    return v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "0"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f12073e

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "pref_qc_camera_pro_video_exposure_value_key"

    return-object p1

    :cond_0
    const-string/jumbo p1, "pref_qc_camera_fastmotion_pro_exposure_value_key"

    return-object p1

    :cond_1
    const-string/jumbo p1, "pref_qc_camera_manual_exposure_value_key"

    return-object p1
.end method

.method public getValueDisplayString(I)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    iget-object v4, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget p1, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p1

    :cond_1
    const/16 v0, 0xa7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_6

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRange()Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoo:Z

    if-nez v2, :cond_3

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoOO:Z

    if-eqz v2, :cond_4

    :cond_3
    const/16 v1, -0xc

    const/16 v0, 0xc

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationStep()F

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p2, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/4 p2, 0x1

    .line 12
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_6

    .line 13
    aget-object v2, p1, p2

    .line 14
    iget-object v3, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_5

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_5

    .line 15
    iget-object v3, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p1
.end method

.method public resetComponentValue(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->resetComponentValue(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentManuallyEV;->mDisabled:Z

    return-void
.end method
