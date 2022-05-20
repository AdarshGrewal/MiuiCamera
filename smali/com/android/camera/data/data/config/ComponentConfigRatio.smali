.class public Lcom/android/camera/data/data/config/ComponentConfigRatio;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/ComponentConfigRatio$CameraRatio;
    }
.end annotation


# static fields
.field public static final RATIO_16X9:Ljava/lang/String; = "16x9"

.field public static final RATIO_1X1:Ljava/lang/String; = "1x1"

.field public static final RATIO_4X3:Ljava/lang/String; = "4x3"

.field public static final RATIO_FULL_16X10:Ljava/lang/String; = "16x10"

.field public static final RATIO_FULL_18X9:Ljava/lang/String; = "18x9"

.field public static final RATIO_FULL_18_7_5X9:Ljava/lang/String; = "18.75x9"

.field public static final RATIO_FULL_195X9:Ljava/lang/String; = "19.5x9"

.field public static final RATIO_FULL_19X9:Ljava/lang/String; = "19x9"

.field public static final RATIO_FULL_20X9:Ljava/lang/String; = "20x9"


# instance fields
.field public final mCurrentScreenRatio:F

.field public mForceValue:Ljava/lang/String;

.field public mSupportDefaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sSupport16x10:Z

.field public sSupport18_7_5x9:Z

.field public sSupport18x9:Z

.field public sSupport195x9:Z

.field public sSupport19x9:Z

.field public sSupport20x9:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mCurrentScreenRatio:F

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    return-void
.end method

.method private checkFullSize(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x177d7f

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "20x9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    const v2, 0x400e38e4

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method


# virtual methods
.method public cleanDefaultValues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0xa3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "16x9"

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getItems()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    .line 8
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0OO(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->checkFullSize(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string v0, "4x3"

    :cond_1
    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f120759

    return v0
.end method

.method public getFullSupportRatioValues()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "18x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooo0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "19x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooOo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "19.5x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooOO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "18.75x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "20x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooO()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "16x10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
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
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(II)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_camera_picturesize_key"

    return-object p1
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPictureSizeRatioString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initSensorRatio(Ljava/util/Map;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lcom/android/camera/CameraSize;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0OO(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->RATIO_16X9:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(II)V

    return-void
.end method

.method public isSquareModule()Z
    .locals 3

    const/16 v0, 0xa3

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-super {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "1x1"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public reInit(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->cleanDefaultValues()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOO0o()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    .line 5
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    goto :goto_1

    .line 7
    :cond_1
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    .line 8
    :goto_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooOo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    goto :goto_2

    .line 10
    :cond_2
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    .line 11
    :goto_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    goto :goto_3

    .line 13
    :cond_3
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    .line 14
    :goto_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooo0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    goto :goto_4

    .line 16
    :cond_4
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    .line 17
    :goto_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooOO()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    goto :goto_5

    .line 19
    :cond_5
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    .line 20
    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 21
    iput-object v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    const/16 v3, 0xa3

    const-string v4, "4x3"

    if-eq v1, v3, :cond_1d

    const/16 v5, 0xab

    if-eq v1, v5, :cond_16

    const/16 v5, 0xad

    if-eq v1, v5, :cond_1d

    const/16 v5, 0xb6

    if-eq v1, v5, :cond_15

    const/16 v5, 0xcd

    if-eq v1, v5, :cond_15

    const/16 v5, 0xd5

    if-eq v1, v5, :cond_14

    const/16 v5, 0xd8

    if-eq v1, v5, :cond_14

    const/16 v5, 0xa6

    if-eq v1, v5, :cond_13

    const/16 v5, 0xa7

    if-eq v1, v5, :cond_b

    const/16 v5, 0xaf

    if-eq v1, v5, :cond_14

    const/16 v5, 0xb0

    if-eq v1, v5, :cond_15

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 22
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 23
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 24
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 25
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080223

    const v7, 0x7f080223

    const v8, 0x7f080223

    const v9, 0x7f120755

    const v10, 0x7f120094

    const-string v11, "4x3"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 26
    :cond_6
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080223

    const v14, 0x7f080223

    const v15, 0x7f080223

    const v16, 0x7f120755

    const v17, 0x7f120094

    const-string v18, "4x3"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08021f

    const v5, 0x7f08021f

    const v6, 0x7f08021f

    const v7, 0x7f120756

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_7

    .line 29
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 30
    :cond_7
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_8

    .line 31
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 32
    :cond_8
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_9

    .line 33
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 34
    :cond_9
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_a

    .line 35
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 36
    :cond_a
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_28

    .line 37
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 38
    :cond_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 39
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 40
    :cond_c
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 41
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080220

    const v5, 0x7f080220

    const v6, 0x7f080220

    const v7, 0x7f120754

    const v8, 0x7f120093

    const-string v9, "1x1"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_d
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f080223

    const v12, 0x7f080223

    const v13, 0x7f080223

    const v14, 0x7f120755

    const v15, 0x7f120094

    const-string v16, "4x3"

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08021f

    const v5, 0x7f08021f

    const v6, 0x7f08021f

    const v7, 0x7f120756

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_e

    .line 45
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 46
    :cond_e
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_f

    .line 47
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 48
    :cond_f
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_10

    .line 49
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 50
    :cond_10
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_11

    .line 51
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 52
    :cond_11
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_12

    .line 53
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 54
    :cond_12
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_28

    .line 55
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_13
    const-string v1, "16x9"

    .line 56
    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 57
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08021f

    const v5, 0x7f08021f

    const v6, 0x7f08021f

    const v7, 0x7f120756

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 58
    :cond_14
    :pswitch_1
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto/16 :goto_6

    .line 59
    :cond_15
    :pswitch_2
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 60
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f080223

    const v12, 0x7f080223

    const v13, 0x7f080223

    const v14, 0x7f120755

    const v15, 0x7f120094

    const-string v16, "4x3"

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_16
    if-nez p2, :cond_17

    .line 61
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oOoo()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 62
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 63
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080223

    const v7, 0x7f080223

    const v8, 0x7f080223

    const v9, 0x7f120755

    const v10, 0x7f120094

    const-string v11, "4x3"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 64
    :cond_17
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080223

    const v14, 0x7f080223

    const v15, 0x7f080223

    const v16, 0x7f120755

    const v17, 0x7f120094

    const-string v18, "4x3"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08021f

    const v5, 0x7f08021f

    const v6, 0x7f08021f

    const v7, 0x7f120756

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_18

    .line 67
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 68
    :cond_18
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_19

    .line 69
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 70
    :cond_19
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_1a

    .line 71
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 72
    :cond_1a
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_1b

    .line 73
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 74
    :cond_1b
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_1c

    .line 75
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 76
    :cond_1c
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_28

    .line 77
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 78
    :cond_1d
    :goto_6
    :pswitch_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 79
    :cond_1e
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_1f
    if-ne v1, v3, :cond_20

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 81
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result v5

    if-nez v5, :cond_20

    .line 82
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 83
    :cond_20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 84
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_21
    if-ne v1, v3, :cond_22

    .line 85
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080220

    const v8, 0x7f080220

    const v9, 0x7f080220

    const v10, 0x7f120754

    const v11, 0x7f120093

    const-string v12, "1x1"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_22
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v14, 0x7f080223

    const v15, 0x7f080223

    const v16, 0x7f080223

    const v17, 0x7f120755

    const v18, 0x7f120094

    const-string v19, "4x3"

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08021f

    const v5, 0x7f08021f

    const v6, 0x7f08021f

    const v7, 0x7f120756

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_23

    .line 89
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 90
    :cond_23
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_24

    .line 91
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 92
    :cond_24
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_25

    .line 93
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 94
    :cond_25
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_26

    .line 95
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 96
    :cond_26
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_27

    .line 97
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 98
    :cond_27
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_28

    .line 99
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08024f

    const v5, 0x7f08024f

    const v6, 0x7f08024f

    const v7, 0x7f120757

    const v8, 0x7f120096

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_28
    :goto_7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public supportRatioSwitch()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
