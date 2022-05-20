.class public Lcom/android/camera/data/data/config/ComponentManuallySharpness;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallySharpness.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private isContain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/data/data/config/ComponentManuallySharpness;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getContentDescriptionString()I
    .locals 1

    const v0, 0x7f120786

    return v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "1"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f120786

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
    .locals 0

    const-string/jumbo p1, "pref_qc_camera_sharpness_key"

    return-object p1
.end method

.method public isChanged()Z
    .locals 2

    const/16 v0, 0xa0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentManuallySharpness;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 6
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

    const-string v0, "2"

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    const/16 v1, 0xa7

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, 0x0

    .line 5
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v3, "0"

    const/4 v4, -0x1

    const-string v5, "-1"

    invoke-direct {v2, v4, v4, v5, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, p1, v1

    .line 6
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v2, "1"

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, p1, v3

    const/4 v1, 0x2

    .line 7
    :try_start_0
    sget-object v5, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SHARPNESS_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v5}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    sget-object v5, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->SHARPNESS_RANGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v5}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    if-eqz p2, :cond_2

    .line 9
    array-length v5, p2

    if-ne v5, v1, :cond_2

    .line 10
    aget p2, p2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_2
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p2, v4, v4, v2, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object p2, p1, v1

    .line 12
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p1
.end method

.method public resetComponentValue(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->resetComponentValue(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallySharpness;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
