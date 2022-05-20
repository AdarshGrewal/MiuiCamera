.class public Lcom/android/camera/data/data/runing/ComponentRunningLighting;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningLighting.java"


# instance fields
.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mTotalDataItems:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    .line 3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0802b8

    const-string v2, "1"

    const v3, 0x7f120464

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0802bc

    const-string v2, "2"

    const v3, 0x7f120468

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0802b7

    const-string v2, "3"

    const v3, 0x7f120463

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0802ba

    const-string v2, "4"

    const v3, 0x7f120466

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0802bb

    const-string v2, "5"

    const v3, 0x7f120467

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0802b4

    const-string v2, "6"

    const v3, 0x7f120460

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0802b6

    const-string v2, "7"

    const v3, 0x7f120462

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0802b5

    const-string v2, "8"

    const v3, 0x7f120461

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080191

    const-string v2, "9"

    const v3, 0x7f12045e

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080194

    const-string v2, "10"

    const v3, 0x7f120469

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080193

    const-string v2, "11"

    const v3, 0x7f12045f

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080195

    const v2, 0x7f080195

    const v3, 0x7f12046a

    const-string v4, "12"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "12"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080190

    const v2, 0x7f080190

    const v3, 0x7f12045c

    const-string v4, "13"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "13"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08018d

    const v2, 0x7f08018d

    const v3, 0x7f120454

    const-string v4, "14"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "14"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08018f

    const v2, 0x7f08018f

    const v3, 0x7f120456

    const-string v4, "15"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "15"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08018c

    const v2, 0x7f08018c

    const v3, 0x7f120453

    const-string v4, "16"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "16"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08018e

    const v2, 0x7f08018e

    const v3, 0x7f120455

    const-string v4, "17"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "17"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "0"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const/4 v0, 0x0

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

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_portrait_lighting"

    return-object p1
.end method

.method public getPortraitLightVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getPortraitLightingVersion()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public initItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "0"

    const/4 v4, -0x1

    if-ge v1, v2, :cond_2

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f120465

    const v5, 0x7f0802b9

    invoke-direct {v1, v5, v5, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080192

    invoke-direct {v1, v2, v2, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getPortraitLightingArray()[I

    move-result-object v1

    if-eqz v1, :cond_6

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 10
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-nez v6, :cond_4

    .line 12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v6

    if-ne v6, v4, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "8"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0Oooo()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    iget-object v6, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    .line 16
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 17
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public isLightingVersion1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLightingVersion2()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwitchOn(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public reInit(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
