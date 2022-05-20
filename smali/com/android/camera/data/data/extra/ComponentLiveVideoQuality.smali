.class public Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentLiveVideoQuality.java"


# static fields
.field public static final QUALITY_1080P:Ljava/lang/String; = "6"

.field public static final QUALITY_720P:Ljava/lang/String; = "5"

.field public static final SUPPORT_1080P_ONLY:I = 0x2

.field public static final SUPPORT_720P_AND_1080P:I = 0x0

.field public static final SUPPORT_720P_ONLY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ComponentLiveVideoQuality"


# instance fields
.field public mDefaultValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/extra/DataItemLive;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const-string p1, "5"

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method private initVideoQuality(Lcom/android/camera2/CameraCapabilities;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0O()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 3
    new-instance v3, Lcom/android/camera/CameraSize;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eq v0, v2, :cond_1

    .line 5
    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct {v0, v4, v5}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    const p1, 0x7f12086d

    const v0, 0x7f120872

    const-string v2, "6"

    const v4, 0x7f08021c

    const-string v5, "5"

    const v6, 0x7f080229

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v6, v6, v0, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v0, v4, v4, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object v5, p0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 10
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p1, v6, v6, v0, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iput-object v5, p0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 12
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v0, v4, v4, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iput-object v2, p0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public disableUpdate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->mDefaultValue:Ljava/lang/String;

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f120884

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
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
    sget-object v0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->TAG:Ljava/lang/String;

    const-string v1, "List is empty!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_mi_live_quality"

    return-object p1
.end method

.method public isSupportVideoQuality(II)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-direct {p0, p2, v1}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->initVideoQuality(Lcom/android/camera2/CameraCapabilities;Ljava/util/List;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    move p2, v0

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 6
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, p3, p1}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->initVideoQuality(Lcom/android/camera2/CameraCapabilities;Ljava/util/List;)V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
