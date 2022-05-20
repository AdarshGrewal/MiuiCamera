.class public Lcom/android/camera/data/data/runing/ComponentRunningShine;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningShine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;,
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    }
.end annotation


# static fields
.field public static final ENTRY_NONE:I = -0x1

.field public static final ENTRY_POPUP_BEAUTY:I = 0x5

.field public static final ENTRY_POPUP_SHINE:I = 0x4

.field public static final ENTRY_TOP_BEAUTY:I = 0x2

.field public static final ENTRY_TOP_FILTER:I = 0x3

.field public static final ENTRY_TOP_SHINE:I = 0x1

.field public static final FILTER_NATIVE_NONE_ID:I = 0x0

.field public static final SHINE_BEAUTY_LEVEL_SMOOTH:Ljava/lang/String; = "2"

.field public static final SHINE_BEAUTY_LEVEL_SWITCH:Ljava/lang/String; = "1"

.field public static final SHINE_FIGURE:Ljava/lang/String; = "6"

.field public static final SHINE_FILTER:Ljava/lang/String; = "7"

.field public static final SHINE_FRONT_MAKEUPS:Ljava/lang/String; = "12"

.field public static final SHINE_FRONT_SUPER_NIGHT_BEAUTY:Ljava/lang/String; = "11"

.field public static final SHINE_KALEIDOSCOPE:Ljava/lang/String; = "10"

.field public static final SHINE_MI_LIVE_BEAUTY:Ljava/lang/String; = "9"

.field public static final SHINE_MODEL_ADVANCE:Ljava/lang/String; = "3"

.field public static final SHINE_MODEL_REMODELING:Ljava/lang/String; = "4"

.field public static final SHINE_MODEL_TRUESIGHT:Ljava/lang/String; = "5"

.field public static final SHINE_VIDEO_BOKEH_LEVEL:Ljava/lang/String; = "8"

.field public static final TAG:Ljava/lang/String; = "ComponentRunningShine"


# instance fields
.field public isFrontCamera:Z

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mBeautyVersion:I

.field public mCurrentStatus:Z

.field public mCurrentType:Ljava/lang/String;

.field public mDefaultType:Ljava/lang/String;

.field public mIsClosed:Z

.field public mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mShineEntry:I

.field public mSupportBeautyBody:Z

.field public mSupportBeautyLevel:Z

.field public mSupportBeautyMakeUp:Z

.field public mSupportBeautyMiLive:Z

.field public mSupportBeautyModel:Z

.field public mSupportFrontMakeups:Z

.field public mSupportFrontNightBeauty:Z

.field public mSupportHalColorRententionBack:Z

.field public mSupportHalColorRententionFront:Z

.field public mSupportHalVideoBokehColorRetentionBack:Z

.field public mSupportHalVideoBokehColorRetentionFront:Z

.field public mSupportHalVideoFilter:Z

.field public mSupportSmoothLevel:Z

.field public mSupportTsBeauty:Z

.field public mTargetShow:Z

.field public mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    .line 3
    new-instance p1, Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-void
.end method

.method private generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0()Z

    move-result p1

    const-string v0, "1"

    const v1, 0x7f0801ff

    const v2, 0x7f0801fe

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f12020f

    invoke-direct {p1, v2, v1, v3, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120212

    invoke-direct {p1, v2, v1, v3, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p1
.end method

.method private generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f12020f

    goto :goto_0

    :cond_0
    const v1, 0x7f120205

    :goto_0
    const v2, 0x7f0801fe

    const v3, 0x7f0801ff

    const-string v4, "6"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080367

    const v2, 0x7f080369

    const v3, 0x7f120672

    const-string v4, "7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801fe

    const v2, 0x7f0801ff

    const v3, 0x7f12020f

    const-string v4, "11"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080405

    const v2, 0x7f12044e

    const-string v3, "10"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateMakeupsItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801fe

    const v2, 0x7f0801ff

    const v3, 0x7f120214

    const-string v4, "12"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801fe

    const v2, 0x7f0801ff

    const v3, 0x7f12020f

    const-string v4, "9"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateModelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0()Z

    move-result v0

    const v1, 0x7f0801ff

    const v2, 0x7f0801fe

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f12020f

    goto :goto_0

    :cond_0
    const v3, 0x7f120211

    .line 4
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo0o()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/camera/data/data/runing/ComponentRunningShine;->SHINE_FRONT_SUPER_NIGHT_BEAUTY:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/camera/data/data/runing/ComponentRunningShine;->SHINE_MODEL_REMODELING:Ljava/lang/String;

    :goto_1
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120213

    const-string v4, "3"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801fe

    const v2, 0x7f0801ff

    const v3, 0x7f12020f

    const-string v4, "2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateTsBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801fe

    const v2, 0x7f0801ff

    const v3, 0x7f12020f

    const-string v4, "5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0801fe

    const v2, 0x7f0801ff

    const v3, 0x7f120417

    const-string v4, "8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public determineStatus(I)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v7, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget-object v7, v7, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v9, -0x1

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v11, 0x61f

    if-eq v10, v11, :cond_6

    const/16 v11, 0x620

    if-eq v10, v11, :cond_5

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v10, "9"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v9, 0x4

    goto/16 :goto_1

    :pswitch_1
    const-string v10, "8"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v9, 0x9

    goto :goto_1

    :pswitch_2
    const-string v10, "7"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v9, 0x8

    goto :goto_1

    :pswitch_3
    const-string v10, "6"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v9, 0x5

    goto :goto_1

    :pswitch_4
    const-string v10, "5"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v9, 0x3

    goto :goto_1

    :pswitch_5
    const-string v10, "4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v9, 0x2

    goto :goto_1

    :pswitch_6
    const-string v10, "3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v9, v8

    goto :goto_1

    :pswitch_7
    const-string v10, "2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v9, 0x7

    goto :goto_1

    :pswitch_8
    const-string v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v9, v1

    goto :goto_1

    :cond_5
    const-string v10, "11"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v9, 0x6

    goto :goto_1

    :cond_6
    const-string v10, "10"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v9, 0xa

    :cond_7
    :goto_1
    packed-switch v9, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_9
    if-nez v6, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v6

    goto/16 :goto_0

    :pswitch_a
    if-nez v5, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v7

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v9

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    move v5, v8

    goto/16 :goto_0

    :pswitch_b
    if-nez v4, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v7

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v7, :cond_3

    :goto_2
    move v4, v8

    goto/16 :goto_0

    .line 14
    :cond_8
    sget v9, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v7, v9, :cond_3

    if-lez v7, :cond_3

    goto :goto_2

    :pswitch_c
    if-nez v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    goto/16 :goto_0

    :pswitch_d
    if-nez v3, :cond_3

    .line 16
    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSkinColorOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move v8, v1

    :cond_a
    :goto_3
    move v3, v8

    goto/16 :goto_0

    :cond_b
    if-nez v0, :cond_c

    if-nez v3, :cond_c

    if-nez v4, :cond_c

    if-nez v5, :cond_c

    if-eqz v6, :cond_d

    :cond_c
    move v1, v8

    .line 18
    :cond_d
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    goto :goto_5

    .line 19
    :cond_e
    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 20
    :goto_5
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public getBeautyVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    return v0
.end method

.method public getCurrentStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return v0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

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

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTopConfigEntryDesRes()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const v0, 0x7f120026

    return v0

    :cond_0
    const v0, 0x7f12005b

    return v0

    :cond_1
    const v0, 0x7f120028

    return v0
.end method

.method public getTopConfigEntryRes(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 2
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x1

    const v2, 0x7f0803b4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f080369

    goto :goto_0

    :cond_1
    const p1, 0x7f080367

    :goto_0
    return p1

    :cond_2
    const p1, 0x7f0803cd

    return p1

    :cond_3
    return v2
.end method

.method public getTopConfigEntryShadowRes(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, -0x1

    return p1

    :sswitch_0
    const p1, 0x7f0803ce

    return p1

    :sswitch_1
    const p1, 0x7f0803b5

    return p1

    :sswitch_2
    const p1, 0x7f080368

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080367 -> :sswitch_2
        0x7f080369 -> :sswitch_2
        0x7f0803b4 -> :sswitch_1
        0x7f0803cd -> :sswitch_0
    .end sparse-switch
.end method

.method public getTopConfigItem()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown Shine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v0, 0xd4

    return v0
.end method

.method public getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-object v0
.end method

.method public isBeautyModeDependTsVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return v0
.end method

.method public isLegacyBeautyVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNewMakeupsDependBeautyVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmoothDependBeautyVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTargetShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTargetShow:Z

    return v0
.end method

.method public isTopBeautyEntry()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopFilterEntry()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoShineForceOn(I)Z
    .locals 2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    return p1
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 1
    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->reInitData()V

    .line 3
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getBeautyVersion()I

    move-result p2

    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v2, 0x2

    if-gez p2, :cond_2

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iput v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    goto :goto_1

    .line 6
    :cond_1
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    :cond_2
    :goto_1
    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportTsBeauty:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionFront:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionBack:Z

    const/16 v3, 0xa7

    const/4 v4, 0x3

    if-eq p1, v3, :cond_35

    const/16 v3, 0xa9

    const-string v5, "  mSupportColorRententionBack:"

    const-string v6, "mSupportColorRententionFront:"

    const-string v7, "ComponentRunningShine"

    if-eq p1, v3, :cond_33

    const/16 v3, 0xab

    const/4 v8, 0x4

    if-eq p1, v3, :cond_2e

    const/16 v3, 0xad

    if-eq p1, v3, :cond_2d

    const/16 v3, 0xb4

    if-eq p1, v3, :cond_2c

    const/16 v3, 0xaf

    if-eq p1, v3, :cond_35

    const/16 v3, 0xb0

    if-eq p1, v3, :cond_28

    const/16 p2, 0xb7

    const-string v3, "7"

    if-eq p1, p2, :cond_1d

    const/16 p2, 0xb8

    if-eq p1, p2, :cond_1c

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_14

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_c

    .line 23
    :pswitch_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    iput v8, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 25
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_5

    .line 26
    iput-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_3

    .line 28
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 29
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0OO()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 31
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 32
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 34
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0OO()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 35
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 36
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_4
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 38
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_6

    .line 39
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 40
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_6
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 42
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 44
    :cond_8
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 45
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooO0O()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 47
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 48
    :cond_9
    :pswitch_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result p4

    if-nez p4, :cond_11

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p4

    if-nez p4, :cond_a

    sget-boolean p4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooo0o:Z

    if-nez p4, :cond_a

    .line 50
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 51
    iget-object p4, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 52
    :cond_a
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 53
    :goto_4
    iget-boolean p4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p4, :cond_c

    .line 54
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 55
    iput-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 56
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 58
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 59
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 60
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 61
    :cond_c
    iput v8, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 62
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p4

    invoke-virtual {p4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Ooo0()Z

    move-result p4

    if-nez p4, :cond_10

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isBeautyModeDependTsVersion()Z

    move-result p4

    if-eqz p4, :cond_e

    if-ne p1, p2, :cond_d

    .line 65
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 66
    :cond_d
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportTsBeauty:Z

    .line 67
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateTsBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 68
    :cond_e
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateModelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O000oo()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportBeautyMakeup()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 70
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 71
    :cond_f
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportMakeups()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isNewMakeupsDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 72
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeupsItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    goto :goto_6

    .line 74
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 75
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 76
    :cond_11
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_12

    .line 77
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto :goto_6

    .line 78
    :cond_12
    iput v8, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 79
    :cond_13
    :goto_6
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 80
    :cond_14
    :pswitch_2
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_15

    .line 82
    iput v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 83
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 84
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 85
    :cond_15
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 86
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 87
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_16
    :goto_7
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportVideoFilter: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_18

    .line 90
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result p1

    if-nez p1, :cond_18

    .line 91
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 92
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_17

    .line 93
    iput-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 94
    :cond_17
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_18
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehAdjust()Z

    move-result p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportVideoBokehLevel:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_19

    if-eqz p4, :cond_19

    .line 97
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_19
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-virtual {p3, p1}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorRetention(Z)Z

    move-result p1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "isSupportVideoBokehColorRetention:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1b

    .line 100
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_1a

    .line 101
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionFront:Z

    goto :goto_8

    .line 102
    :cond_1a
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionBack:Z

    .line 103
    :cond_1b
    :goto_8
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionFront()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    .line 104
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionBack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_36

    .line 107
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_c

    .line 108
    :cond_1c
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto/16 :goto_c

    .line 109
    :cond_1d
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportBeauty()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 110
    iput v8, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 112
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 113
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 114
    :cond_1e
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 115
    :goto_9
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_21

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 117
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 118
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 119
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 120
    :cond_1f
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 121
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oo0o0()Z

    move-result p1

    if-nez p1, :cond_20

    .line 122
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 123
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 124
    :cond_20
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 125
    :cond_21
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo0o()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 126
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto :goto_a

    .line 128
    :cond_22
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_24

    .line 129
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Ooo0()Z

    move-result p1

    if-nez p1, :cond_23

    .line 130
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0OO()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 131
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 132
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 133
    :cond_23
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 134
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 135
    :cond_24
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Ooo0()Z

    move-result p1

    if-nez p1, :cond_25

    .line 136
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0OO()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 137
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 138
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 139
    :cond_25
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 140
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 141
    :cond_26
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 142
    :cond_27
    :goto_a
    iput-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    const p3, 0x7f080367

    const p4, 0x7f080369

    const v1, 0x7f120672

    invoke-direct {p2, p3, p4, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooO0O()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 145
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 146
    :cond_28
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOO()Z

    move-result p1

    if-nez p1, :cond_29

    .line 147
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_c

    .line 148
    :cond_29
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isBeautyModeDependTsVersion()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 149
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_c

    .line 150
    :cond_2a
    iput v8, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 152
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 153
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 154
    :cond_2b
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 155
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 156
    :cond_2c
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result p1

    if-nez p1, :cond_36

    .line 157
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 158
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 160
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionBack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 162
    :cond_2d
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_36

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo0o()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 163
    iput v8, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 164
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    .line 166
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 167
    :cond_2e
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO000()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 168
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOO()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 169
    :cond_2f
    iput v8, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 170
    :cond_30
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO000()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 172
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 173
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 174
    :cond_31
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 175
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_32
    :goto_b
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOO()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 177
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 178
    :cond_33
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result p1

    if-nez p1, :cond_34

    .line 179
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result p1

    if-eqz p1, :cond_36

    :cond_34
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result p1

    if-nez p1, :cond_36

    .line 180
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 181
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 183
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionBack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 185
    :cond_35
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 186
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_36
    :goto_c
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_37

    .line 188
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 189
    :cond_37
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reInitData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public setTargetShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTargetShow:Z

    return-void
.end method

.method public setVideoShineForceOn(IZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public supportBeautyBody()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    return v0
.end method

.method public supportBeautyLevel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    return v0
.end method

.method public supportBeautyMakeUp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    return v0
.end method

.method public supportBeautyMiLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    return v0
.end method

.method public supportBeautyModel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    return v0
.end method

.method public supportColorRentention()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    return v0
.end method

.method public supportFrontMakeups()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    return v0
.end method

.method public supportFrontNightBeauty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    return v0
.end method

.method public supportNonBeautyModeTsBeauty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportTrueSightBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO00o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportPopUpEntry()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public supportSmoothLevel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    return v0
.end method

.method public supportTopConfigEntry()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public supportTrueSightBeauty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportTsBeauty:Z

    return v0
.end method

.method public supportVideoBokehColorRetention()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionFront:Z

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionBack:Z

    return v0
.end method

.method public supportVideoFilter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    return v0
.end method
