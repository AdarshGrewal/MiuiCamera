.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$EffectRectAttribute;,
        Lcom/android/camera/effect/EffectController$EffectChangedListener;,
        Lcom/android/camera/effect/EffectController$EffectChangeType;
    }
.end annotation


# static fields
.field public static final BLUR_ALPHA_FRAME_NUM:I = 0x8

.field public static final COLOR_RETENTION_FILTER_ID:I = 0xc8

.field public static final EFFECT_ALL_CHANGE_TYPES:[I

.field public static final EFFECT_CHANGE_BEAUTY:I = 0x3

.field public static final EFFECT_CHANGE_CINEMATIC:I = 0x9

.field public static final EFFECT_CHANGE_EXPOSURE_FEEDBACK:I = 0x7

.field public static final EFFECT_CHANGE_FILTER:I = 0x1

.field public static final EFFECT_CHANGE_FOCUS_PEAK:I = 0x4

.field public static final EFFECT_CHANGE_GRADIENTER:I = 0x6

.field public static final EFFECT_CHANGE_KALEIDOSCOPE:I = 0x8

.field public static final EFFECT_CHANGE_STICKER:I = 0x2

.field public static final EFFECT_CHANGE_TILT:I = 0x5

.field public static final MAX_BLUR_ALPHA:I = 0xd4

.field public static final TAG:Ljava/lang/String; = "EffectController"

.field public static sInstance:Lcom/android/camera/effect/EffectController;


# instance fields
.field public mAiColorCorrectionVersion:I

.field public mBeautyEnable:Z

.field public mBeautyFrameReady:Z

.field public mBlur:Z

.field public mBlurStep:I

.field public mChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/effect/EffectController$EffectChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentSticker:Ljava/lang/String;

.field public mDeviceRotation:F

.field public mDrawCinematic:Z

.field public mDrawExposure:Z

.field public mDrawGradienter:Z

.field public mDrawKaleidoscope:Ljava/lang/String;

.field public mDrawPeaking:Z

.field public mDrawTilt:Z

.field public mEffectId:I

.field public mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mFilterInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsDrawMainFrame:Z

.field public mIsIndiaColorLookupTableAvailable:Z

.field public mLiveFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;",
            ">;"
        }
    .end annotation
.end field

.field public mLock:Ljava/lang/Object;

.field public mNeedDestroyMakeup:Z

.field public mOrientation:I

.field public mOverrideAiEffectIndex:I

.field public mOverrideEffectIndex:I

.field public mTiltShiftMaskAlpha:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/EffectController;->EFFECT_ALL_CHANGE_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 3
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    .line 4
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    .line 7
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    const-string v0, "0"

    .line 11
    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mDrawKaleidoscope:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$1;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    .line 15
    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initialize()V

    return-void
.end method

.method private convertToFilterCategory(I)Lcom/miui/filtersdk/filter/helper/FilterCategory;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->UNKNOWN:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->MI_LIVE:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->AI:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object p1

    .line 5
    :cond_3
    sget-object p1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object p1

    .line 6
    :cond_4
    sget-object p1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object p1

    .line 7
    :cond_5
    sget-object p1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    return-object p1
.end method

.method public static createAiSceneEffectId(Lcom/miui/filtersdk/filter/helper/FilterType;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result p0

    return p0
.end method

.method private getAiSceneRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1
.end method

.method private getBeautyRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1
.end method

.method private getDegree(Lcom/miui/filtersdk/filter/helper/FilterType;)I
    .locals 0

    const/16 p1, 0x64

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/effect/EffectController;
    .locals 2

    const-class v0, Lcom/android/camera/effect/EffectController;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/camera/effect/EffectController;

    invoke-direct {v1}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLightingRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1
.end method

.method private getMakeupRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    invoke-direct {v0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/ArcsoftBeautyProcessor;

    invoke-direct {v1}, Lcom/android/camera/effect/ArcsoftBeautyProcessor;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10e

    goto :goto_0

    :cond_0
    const/16 v2, 0x5a

    :goto_0
    invoke-virtual {v1, v2}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->setRotation(I)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->setBeautyProcessor(Lcom/miui/filtersdk/beauty/BeautyProcessor;)V

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->initBeautyProcessor(II)V

    .line 6
    new-instance v1, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    sget v2, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;Z)V

    .line 8
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p2
.end method

.method private getMiLiveRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1
.end method

.method private getNormalRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1
.end method

.method private getPrivateRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 15

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p5

    .line 1
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_a

    if-nez p3, :cond_0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-eq v8, v0, :cond_0

    if-gez v8, :cond_a

    :cond_0
    if-nez p3, :cond_3

    .line 2
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-eq v8, v0, :cond_3

    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_5

    .line 5
    :cond_2
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_9

    .line 6
    new-instance v0, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_5

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/renders/XBlurEffectRender;

    if-eqz v0, :cond_4

    move v12, v11

    goto :goto_1

    :cond_4
    move v12, v10

    .line 9
    :goto_1
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/renders/YBlurEffectRender;

    if-eqz v0, :cond_5

    move v13, v11

    goto :goto_2

    :cond_5
    move v13, v10

    .line 11
    :goto_2
    new-instance v14, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-eqz v12, :cond_6

    .line 12
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_3
    move-object v3, v0

    if-eqz v13, :cond_7

    .line 13
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_4
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 14
    invoke-virtual {v7, v14}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    if-nez v12, :cond_8

    if-eqz v13, :cond_9

    .line 15
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_9
    :goto_5
    move v0, v11

    goto :goto_6

    :cond_a
    move v0, v10

    .line 16
    :goto_6
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-virtual {v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_d

    if-nez p3, :cond_b

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    if-eq v8, v1, :cond_b

    if-gez v8, :cond_d

    if-nez v0, :cond_d

    :cond_b
    if-eqz p4, :cond_c

    .line 17
    new-instance v0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {v0, v6, v1}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_7

    :cond_c
    new-instance v0, Lcom/android/camera/effect/renders/GradienterEffectRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {v0, v6, v1}, Lcom/android/camera/effect/renders/GradienterEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :goto_7
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    move v0, v11

    .line 18
    :cond_d
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    invoke-virtual {v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_f

    if-nez p3, :cond_e

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    if-eq v8, v1, :cond_e

    if-gez v8, :cond_f

    if-nez v0, :cond_f

    .line 19
    :cond_e
    new-instance v0, Lcom/android/camera/effect/renders/CinematicRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    invoke-direct {v0, v6, v1}, Lcom/android/camera/effect/renders/CinematicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    move v0, v11

    .line 20
    :cond_f
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-virtual {v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    const/4 v12, 0x3

    if-nez v1, :cond_19

    .line 21
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000o0()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p3, :cond_10

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    if-eq v8, v1, :cond_10

    if-gez v8, :cond_19

    if-nez v0, :cond_19

    :cond_10
    if-nez p3, :cond_14

    .line 22
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    if-eq v8, v0, :cond_14

    invoke-virtual {v7, v12}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    .line 23
    :cond_11
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_12

    .line 24
    new-instance v0, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_c

    .line 25
    :cond_12
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_13

    .line 26
    new-instance v0, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_c

    .line 27
    :cond_13
    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_18

    .line 28
    new-instance v0, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_c

    .line 29
    :cond_14
    :goto_8
    new-instance v13, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    new-instance v3, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 30
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_9

    :cond_15
    new-instance v0, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 31
    :goto_9
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    goto :goto_a

    :cond_16
    new-instance v1, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v1, v6}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_a
    invoke-direct {v3, v6, v0, v1, v10}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 32
    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_b

    :cond_17
    new-instance v0, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_b
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 33
    invoke-virtual {v7, v13}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_18
    :goto_c
    move v0, v11

    .line 35
    :cond_19
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooOO()Z

    move-result v1

    if-nez v1, :cond_22

    .line 36
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-virtual {v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_22

    if-nez p3, :cond_1a

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    if-eq v8, v1, :cond_1a

    if-gez v8, :cond_22

    if-nez v0, :cond_22

    :cond_1a
    if-nez p3, :cond_1e

    .line 37
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    if-eq v8, v0, :cond_1e

    invoke-virtual {v7, v12}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_d

    .line 38
    :cond_1b
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 39
    new-instance v0, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_11

    .line 40
    :cond_1c
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 41
    new-instance v0, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_11

    .line 42
    :cond_1d
    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_23

    .line 43
    new-instance v0, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_11

    .line 44
    :cond_1e
    :goto_d
    new-instance v12, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    new-instance v3, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 45
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_e

    :cond_1f
    new-instance v0, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 46
    :goto_e
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    goto :goto_f

    :cond_20
    new-instance v1, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v1, v6}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_f
    invoke-direct {v3, v6, v0, v1, v10}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 47
    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_10

    :cond_21
    new-instance v0, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_10
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 48
    invoke-virtual {v7, v12}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    goto :goto_11

    :cond_22
    move v11, v0

    .line 50
    :cond_23
    :goto_11
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_25

    .line 51
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000o()Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p4, :cond_25

    if-nez p3, :cond_24

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    if-eq v8, v0, :cond_24

    if-gez v8, :cond_25

    if-nez v11, :cond_25

    .line 52
    :cond_24
    new-instance v0, Lcom/android/camera/effect/renders/FocusPeakingRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-direct {v0, v6, v1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 53
    :cond_25
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_27

    if-nez p3, :cond_26

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    if-ne v8, v0, :cond_27

    .line 54
    :cond_26
    new-instance v0, Lcom/android/camera/effect/renders/KaleidoscopeRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getCurrentKaleidoscope()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/camera/effect/renders/KaleidoscopeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 55
    :cond_27
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ZEBRA:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_29

    if-nez p4, :cond_29

    if-nez p3, :cond_28

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ZEBRA:I

    if-eq v8, v0, :cond_28

    if-gez v8, :cond_29

    if-nez v11, :cond_29

    .line 56
    :cond_28
    new-instance v0, Lcom/android/camera/effect/renders/ZebraRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ZEBRA:I

    invoke-direct {v0, v6, v1}, Lcom/android/camera/effect/renders/ZebraRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_29
    if-nez p3, :cond_2a

    .line 57
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV2RGB:I

    if-eq v8, v0, :cond_2a

    if-gez v8, :cond_2b

    if-nez v11, :cond_2b

    :cond_2a
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV2RGB:I

    .line 58
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 59
    new-instance v0, Lcom/android/camera/effect/renders/YuvToRgbRender;

    invoke-direct {v0, v6, v8}, Lcom/android/camera/effect/renders/YuvToRgbRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 60
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_2b
    if-nez p3, :cond_2c

    .line 61
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV4442RGB:I

    if-eq v8, v0, :cond_2c

    if-gez v8, :cond_2d

    if-nez v11, :cond_2d

    :cond_2c
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV4442RGB:I

    .line 62
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 63
    new-instance v0, Lcom/android/camera/effect/renders/Yuv444ToRgbRender;

    invoke-direct {v0, v6, v8}, Lcom/android/camera/effect/renders/Yuv444ToRgbRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 64
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_2d
    if-nez p3, :cond_2e

    .line 65
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MIMOJI:I

    if-eq v8, v0, :cond_2e

    if-gez v8, :cond_2f

    if-nez v11, :cond_2f

    :cond_2e
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_MIMOJI:I

    .line 66
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 67
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    invoke-direct {v0, v6, v8}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 68
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_2f
    if-nez p3, :cond_30

    .line 69
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TRANSFORM:I

    if-eq v8, v0, :cond_30

    if-gez v8, :cond_31

    if-nez v11, :cond_31

    :cond_30
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TRANSFORM:I

    .line 70
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_31

    .line 71
    new-instance v0, Lcom/android/camera/effect/renders/TransformRender;

    invoke-direct {v0, v6, v8}, Lcom/android/camera/effect/renders/TransformRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 72
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_31
    if-nez p3, :cond_32

    .line 73
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    if-eq v8, v0, :cond_32

    if-gez v8, :cond_33

    if-nez v11, :cond_33

    :cond_32
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    .line 74
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_33

    .line 75
    new-instance v0, Lcom/android/camera/effect/renders/RgbToYuvRender;

    invoke-direct {v0, v6, v8}, Lcom/android/camera/effect/renders/RgbToYuvRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 76
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_33
    return-object v7
.end method

.method private getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/android/camera/effect/EffectController;->convertToFilterCategory(I)Lcom/miui/filtersdk/filter/helper/FilterCategory;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->UNKNOWN:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    if-ne v0, v1, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v0

    .line 6
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 8

    if-gez p4, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v1, 0x0

    if-ne p4, v0, :cond_2

    .line 2
    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 3
    new-instance v1, Lcom/android/camera/effect/renders/NoneEffectRender;

    sget p3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-direct {v1, p1, p3}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p2

    .line 4
    :cond_2
    sget v0, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    if-ne p4, v0, :cond_4

    .line 5
    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    .line 6
    new-instance v1, Lcom/android/camera/effect/renders/NoneEffectRender;

    sget p3, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    invoke-direct {v1, p1, p3}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :cond_3
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p2

    .line 7
    :cond_4
    sget-object v0, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRenderById: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p2, p4}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_a

    .line 9
    invoke-static {p4}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v0

    .line 10
    sget-object v2, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRenderById: index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-le v0, v2, :cond_a

    .line 11
    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 12
    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v2

    aget-object v2, v2, v0

    .line 13
    invoke-virtual {v2}, Lcom/miui/filtersdk/filter/helper/FilterType;->getFilterCategory()Lcom/miui/filtersdk/filter/helper/FilterCategory;

    move-result-object v3

    sget-object v4, Lcom/miui/filtersdk/filter/helper/FilterCategory;->AI:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    if-ne v3, v4, :cond_7

    iget v3, p0, Lcom/android/camera/effect/EffectController;->mAiColorCorrectionVersion:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_7

    .line 14
    invoke-virtual {v2, v3}, Lcom/miui/filtersdk/filter/helper/FilterType;->isAiCCLookupTableSupported(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 15
    sget-object v0, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRenderById: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not support light color correction, reset to NONE"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p2, p4}, Lcom/android/camera/effect/renders/RenderGroup;->removeRender(I)V

    .line 17
    sget p4, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    invoke-virtual {p2, p4}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result p4

    if-eqz p4, :cond_6

    if-eqz p3, :cond_5

    .line 18
    new-instance v1, Lcom/android/camera/effect/renders/NoneEffectRender;

    sget p3, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    invoke-direct {v1, p1, p3}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :cond_5
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_6
    return-object p2

    .line 19
    :cond_7
    iget-boolean p3, p0, Lcom/android/camera/effect/EffectController;->mIsIndiaColorLookupTableAvailable:Z

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mAiColorCorrectionVersion:I

    invoke-static {v2, p3, v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFilter(Lcom/miui/filtersdk/filter/helper/FilterType;ZI)Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 20
    invoke-direct {p0, v2}, Lcom/android/camera/effect/EffectController;->getDegree(Lcom/miui/filtersdk/filter/helper/FilterType;)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->setDegree(I)V

    .line 21
    :cond_8
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->L_2_NEON:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_9

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->L_2_DREAMLAND:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_9

    .line 22
    new-instance v1, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v5, Lcom/android/camera/effect/renders/WrapperRender;

    invoke-direct {v5, p1, p4, p3}, Lcom/android/camera/effect/renders/WrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    new-instance v6, Lcom/android/camera/effect/renders/LightEffectRender;

    .line 23
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p3

    invoke-direct {v6, p1, v0, p3}, Lcom/android/camera/effect/renders/LightEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;IZ)V

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    move v4, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    goto :goto_0

    .line 24
    :cond_9
    new-instance v1, Lcom/android/camera/effect/renders/WrapperRender;

    invoke-direct {v1, p1, p4, p3}, Lcom/android/camera/effect/renders/WrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 25
    :goto_0
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_a
    return-object p2
.end method

.method private getStickerRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    return-object p1
.end method

.method private initAiSceneFilterInfo()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->AI:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/android/camera/effect/FilterInfo;

    sget v3, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    array-length v2, v1

    const/4 v3, 0x1

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 5
    sget-object v6, Lcom/miui/filtersdk/filter/helper/FilterType;->A_COMMON:Lcom/miui/filtersdk/filter/helper/FilterType;

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v6, Lcom/android/camera/effect/FilterInfo;

    invoke-static {v5}, Lcom/android/camera/effect/EffectController;->createAiSceneEffectId(Lcom/miui/filtersdk/filter/helper/FilterType;)I

    move-result v5

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v6, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initAppVideoFilterInfo()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f08091b

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->VIDEO:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 5
    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v8, v1, v4

    .line 6
    sget-object v9, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_1
    move v12, v5

    move v13, v6

    goto/16 :goto_2

    :pswitch_0
    const/16 v7, 0x50

    const v5, 0x7f1209d1

    const v6, 0x7f080920

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x48

    const v5, 0x7f1202d5

    const v6, 0x7f080916

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x47

    const v5, 0x7f1202ef

    const v6, 0x7f080919

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x46

    const v5, 0x7f1209ce

    const v6, 0x7f08091e

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x3c

    const v5, 0x7f1209c4

    const v6, 0x7f080917

    goto :goto_1

    :pswitch_5
    const/16 v7, 0x32

    const v5, 0x7f1209cb

    const v6, 0x7f08091c

    goto :goto_1

    :pswitch_6
    const/16 v7, 0x28

    const v5, 0x7f1209d5

    const v6, 0x7f080922

    goto :goto_1

    :pswitch_7
    const/16 v7, 0x1e

    const v5, 0x7f1209cc

    const v6, 0x7f08091d

    goto :goto_1

    :pswitch_8
    const/16 v7, 0x14

    const v5, 0x7f1209c7

    const v6, 0x7f08091a

    goto :goto_1

    :pswitch_9
    const/16 v7, 0xa

    const v5, 0x7f1209d3

    const v6, 0x7f080921

    goto :goto_1

    :pswitch_a
    const/16 v7, 0x8

    const v5, 0x7f1202ec

    const v6, 0x7f08091f

    goto :goto_1

    :pswitch_b
    const/4 v7, 0x7

    const v5, 0x7f1202d3

    const v6, 0x7f080915

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 7
    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/16 v10, 0x8

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v9, v5

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v5

    goto :goto_3

    :cond_0
    move v5, v12

    move v6, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method private initBeautyAndMakeupFilterInfo()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f080149

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->MAKEUP:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v2}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v2

    .line 6
    array-length v4, v1

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    const v9, 0x7f080148

    if-ge v5, v4, :cond_1

    aget-object v10, v1, v5

    .line 7
    sget-object v11, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    move v14, v6

    move v15, v7

    goto :goto_2

    :pswitch_0
    const/16 v8, 0xb

    const v6, 0x7f1204bb

    goto :goto_1

    :pswitch_1
    const/16 v8, 0xa

    const v6, 0x7f1204c0

    goto :goto_1

    :pswitch_2
    const/16 v8, 0x9

    const v6, 0x7f1204bd

    goto :goto_1

    :pswitch_3
    const/16 v8, 0x8

    const v6, 0x7f1204c3

    goto :goto_1

    :pswitch_4
    const/4 v8, 0x7

    const v6, 0x7f1204c4

    goto :goto_1

    :pswitch_5
    const/4 v8, 0x6

    const v6, 0x7f1204b9

    :goto_1
    move v14, v6

    move v15, v9

    :goto_2
    if-eqz v14, :cond_0

    if-eqz v15, :cond_0

    .line 8
    new-instance v6, Lcom/android/camera/effect/FilterInfo;

    const/4 v12, 0x2

    .line 9
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    move-object v11, v6

    move/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 10
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v3

    move v7, v6

    goto :goto_3

    :cond_0
    move v6, v14

    move v7, v15

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    array-length v1, v2

    move v4, v3

    :goto_4
    if-ge v4, v1, :cond_3

    aget-object v5, v2, v4

    .line 12
    sget-object v10, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    :goto_5
    move v13, v6

    move v14, v7

    goto/16 :goto_7

    :pswitch_6
    const/16 v6, 0x96

    const v7, 0x7f1202d7

    const v8, 0x7f080139

    goto/16 :goto_6

    :pswitch_7
    const/16 v6, 0x8c

    const v7, 0x7f1202d6

    const v8, 0x7f080138

    goto/16 :goto_6

    :pswitch_8
    const/16 v6, 0x82

    const v7, 0x7f1202d3

    const v8, 0x7f080136

    goto :goto_6

    :pswitch_9
    const/16 v6, 0x78

    const v7, 0x7f1202f2

    const v8, 0x7f080153

    goto :goto_6

    :pswitch_a
    const/16 v6, 0x6e

    const v7, 0x7f1202db

    const v8, 0x7f08013e

    goto :goto_6

    :pswitch_b
    const/16 v6, 0x64

    const v7, 0x7f120606

    const v8, 0x7f080145

    goto :goto_6

    :pswitch_c
    const/16 v6, 0x5a

    const v7, 0x7f1202dc

    const v8, 0x7f08013f

    goto :goto_6

    :pswitch_d
    const/16 v6, 0x50

    const v7, 0x7f12060d

    const v8, 0x7f08014d

    goto :goto_6

    :pswitch_e
    const/16 v6, 0x46

    const v7, 0x7f120605

    const v8, 0x7f080142

    goto :goto_6

    :pswitch_f
    const/16 v6, 0x3c

    const v7, 0x7f12060a

    move v8, v6

    move v13, v7

    move v14, v9

    goto :goto_7

    :pswitch_10
    const/4 v6, 0x5

    const v7, 0x7f12060e

    const v8, 0x7f08014e

    goto :goto_6

    :pswitch_11
    const/4 v6, 0x4

    const v7, 0x7f120601

    const v8, 0x7f080146

    goto :goto_6

    :pswitch_12
    const/4 v6, 0x3

    const v7, 0x7f12060c

    const v8, 0x7f08014c

    goto :goto_6

    :pswitch_13
    const/4 v6, 0x2

    const v7, 0x7f120604

    const v8, 0x7f080141

    :goto_6
    move v13, v7

    move v14, v8

    move v8, v6

    goto :goto_7

    :pswitch_14
    const v6, 0x7f12060b

    const v7, 0x7f08014b

    const/4 v8, 0x1

    goto/16 :goto_5

    :goto_7
    if-eqz v13, :cond_2

    if-eqz v14, :cond_2

    .line 13
    new-instance v6, Lcom/android/camera/effect/FilterInfo;

    const/4 v11, 0x2

    .line 14
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    move-object v10, v6

    move v15, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 15
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v3

    move v7, v6

    goto :goto_8

    :cond_2
    move v6, v13

    move v7, v14

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 16
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static initBeautyFilterInfo()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f0808ab

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 5
    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v8, v1, v4

    .line 6
    sget-object v9, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_1
    move v12, v5

    move v13, v6

    goto/16 :goto_2

    :pswitch_0
    const/16 v7, 0x96

    const v5, 0x7f120600

    const v6, 0x7f0808a4

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x8c

    const v5, 0x7f120611

    const v6, 0x7f0808a6

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x82

    const v5, 0x7f120606

    const v6, 0x7f0808a5

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x78

    const v5, 0x7f120613

    const v6, 0x7f0808a7

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x6e

    const v5, 0x7f120609

    const v6, 0x7f0808a9

    goto :goto_1

    :pswitch_5
    const/16 v7, 0x64

    const v5, 0x7f12060f

    const v6, 0x7f0808ad

    goto :goto_1

    :pswitch_6
    const/16 v7, 0x50

    const v5, 0x7f120607

    const v6, 0x7f0808a8

    goto :goto_1

    :pswitch_7
    const/16 v7, 0x32

    const v5, 0x7f120603

    const v6, 0x7f0808a2

    goto :goto_1

    :pswitch_8
    const/16 v7, 0x28

    const v5, 0x7f120612

    const v6, 0x7f0808ae

    goto :goto_1

    :pswitch_9
    const/16 v7, 0x1e

    const v5, 0x7f12060d

    const v6, 0x7f0808ac

    goto :goto_1

    :pswitch_a
    const/16 v7, 0x14

    const v5, 0x7f120605

    const v6, 0x7f0808a3

    goto :goto_1

    :pswitch_b
    const/16 v7, 0xa

    const v5, 0x7f12060a

    const v6, 0x7f0808aa

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 7
    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v10, 0x2

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v9, v5

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v5

    goto :goto_3

    :cond_0
    move v5, v12

    move v6, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method private initBeautyFilterInfoNew()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f080149

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 5
    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v8, v1, v4

    .line 6
    sget-object v9, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_1
    move v12, v5

    move v13, v6

    goto/16 :goto_2

    :pswitch_0
    const/16 v7, 0xa0

    const v5, 0x7f1202d7

    const v6, 0x7f080139

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x96

    const v5, 0x7f1202d6

    const v6, 0x7f080138

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x8c

    const v5, 0x7f1202d3

    const v6, 0x7f080136

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x82

    const v5, 0x7f1202f2

    const v6, 0x7f080153

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x78

    const v5, 0x7f1202db

    const v6, 0x7f08013e

    goto :goto_1

    :pswitch_5
    const/16 v7, 0x64

    const v5, 0x7f120606

    const v6, 0x7f080145

    goto :goto_1

    :pswitch_6
    const/16 v7, 0x5a

    const v5, 0x7f1202dc

    const v6, 0x7f08013f

    goto :goto_1

    :pswitch_7
    const/16 v7, 0x50

    const v5, 0x7f12060d

    const v6, 0x7f08014d

    goto :goto_1

    :pswitch_8
    const/16 v7, 0x46

    const v5, 0x7f120605

    const v6, 0x7f080142

    goto :goto_1

    :pswitch_9
    const/16 v7, 0x3c

    const v5, 0x7f12060a

    const v6, 0x7f080148

    goto :goto_1

    :pswitch_a
    const/16 v7, 0x32

    const v5, 0x7f12060e

    const v6, 0x7f08014e

    goto :goto_1

    :pswitch_b
    const/16 v7, 0x28

    const v5, 0x7f120601

    const v6, 0x7f080146

    goto :goto_1

    :pswitch_c
    const/16 v7, 0x1e

    const v5, 0x7f12060c

    const v6, 0x7f08014c

    goto :goto_1

    :pswitch_d
    const/16 v7, 0x14

    const v5, 0x7f120604

    const v6, 0x7f080141

    goto/16 :goto_1

    :pswitch_e
    const/16 v7, 0xa

    const v5, 0x7f12060b

    const v6, 0x7f08014b

    goto/16 :goto_1

    :goto_2
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 7
    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v10, 0x2

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v9, v5

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v5

    goto :goto_3

    :cond_0
    move v5, v12

    move v6, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method public static initIndiaBeautyFilterInfo()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f0808b7

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY_INDIA:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 5
    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v8, v1, v4

    .line 6
    sget-object v9, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_1
    move v12, v5

    move v13, v6

    goto/16 :goto_2

    :pswitch_0
    const/16 v7, 0xa0

    const v5, 0x7f120600

    const v6, 0x7f0808b0

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x96

    const v5, 0x7f120611

    const v6, 0x7f0808b3

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x8c

    const v5, 0x7f120613

    const v6, 0x7f0808b4

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x82

    const v5, 0x7f120606

    const v6, 0x7f0808b2

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x78

    const v5, 0x7f120602

    const v6, 0x7f0808b1

    goto :goto_1

    :pswitch_5
    const/16 v7, 0x64

    const v5, 0x7f12061c

    const v6, 0x7f0808bb

    goto :goto_1

    :pswitch_6
    const/16 v7, 0x50

    const v5, 0x7f12061b

    const v6, 0x7f0808ba

    goto :goto_1

    :pswitch_7
    const/16 v7, 0x32

    const v5, 0x7f120620

    const v6, 0x7f0808bf

    goto :goto_1

    :pswitch_8
    const/16 v7, 0x28

    const v5, 0x7f12061d

    const v6, 0x7f0808bc

    goto :goto_1

    :pswitch_9
    const/16 v7, 0x1e

    const v5, 0x7f120617

    const v6, 0x7f0808b5

    goto :goto_1

    :pswitch_a
    const/16 v7, 0x14

    const v5, 0x7f120619

    const v6, 0x7f0808b8

    goto :goto_1

    :pswitch_b
    const/16 v7, 0xa

    const v5, 0x7f12061e

    const v6, 0x7f0808bd

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 7
    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v10, 0x2

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v9, v5

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v5

    goto :goto_3

    :cond_0
    move v5, v12

    move v6, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method private initLightingFilterInfo()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/android/camera/effect/FilterInfo;

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    array-length v2, v1

    const-string v3, "0"

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 5
    sget-object v6, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v3, "17"

    goto :goto_1

    :pswitch_1
    const-string v3, "16"

    goto :goto_1

    :pswitch_2
    const-string v3, "15"

    goto :goto_1

    :pswitch_3
    const-string v3, "14"

    goto :goto_1

    :pswitch_4
    const-string v3, "13"

    goto :goto_1

    :pswitch_5
    const-string v3, "12"

    goto :goto_1

    :pswitch_6
    const-string v3, "11"

    goto :goto_1

    :pswitch_7
    const-string v3, "10"

    goto :goto_1

    :pswitch_8
    const-string v3, "9"

    goto :goto_1

    :pswitch_9
    const-string v3, "8"

    goto :goto_1

    :pswitch_a
    const-string v3, "7"

    goto :goto_1

    :pswitch_b
    const-string v3, "6"

    goto :goto_1

    :pswitch_c
    const-string v3, "5"

    goto :goto_1

    :pswitch_d
    const-string v3, "4"

    goto :goto_1

    :pswitch_e
    const-string v3, "3"

    goto :goto_1

    :pswitch_f
    const-string v3, "2"

    goto :goto_1

    :pswitch_10
    const-string v3, "1"

    .line 6
    :goto_1
    new-instance v6, Lcom/android/camera/effect/FilterInfo;

    const/4 v7, 0x6

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {v7, v5}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method private initMiLiveFilterInfo()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f1202fa

    const v5, 0x7f08015b

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->MI_LIVE:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 5
    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v8, v1, v4

    .line 6
    sget-object v9, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_1
    move v12, v5

    move v13, v6

    goto :goto_2

    :pswitch_0
    const/16 v7, 0x46

    const v5, 0x7f1202f6

    const v6, 0x7f080157

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x3c

    const v5, 0x7f1202fc

    const v6, 0x7f08015d

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x32

    const v5, 0x7f1202f5

    const v6, 0x7f080156

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x28

    const v5, 0x7f1202f4

    const v6, 0x7f080155

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x1e

    const v5, 0x7f1202fb

    const v6, 0x7f08015c

    goto :goto_1

    :pswitch_5
    const/16 v7, 0x14

    const v5, 0x7f1202f9

    const v6, 0x7f08015a

    goto :goto_1

    :pswitch_6
    const/16 v7, 0xa

    const v5, 0x7f1202f7

    const v6, 0x7f080158

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 7
    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/16 v10, 0x8

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v9, v5

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v5

    goto :goto_3

    :cond_0
    move v5, v12

    move v6, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initNormalFilterInfoNew()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f080149

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 5
    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v8, v1, v4

    .line 6
    sget-object v9, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    :goto_1
    move v12, v5

    move v13, v6

    goto/16 :goto_2

    :pswitch_0
    const/16 v7, 0xaa

    const v5, 0x7f1202d5

    const v6, 0x7f080137

    goto :goto_1

    :pswitch_1
    const/16 v7, 0xa0

    const v5, 0x7f1202ef

    const v6, 0x7f080150

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x28

    const v5, 0x7f1202d9

    const v6, 0x7f08013b

    goto :goto_1

    :pswitch_3
    const/16 v7, 0xbe

    const v5, 0x7f1202d7

    const v6, 0x7f080139

    goto :goto_1

    :pswitch_4
    const/16 v7, 0xb4

    const v5, 0x7f1202d6

    const v6, 0x7f080138

    goto :goto_1

    :pswitch_5
    const/16 v7, 0x14

    const v5, 0x7f1202d3

    const v6, 0x7f080136

    goto :goto_1

    :pswitch_6
    const/16 v7, 0xa

    const v5, 0x7f1202f2

    const v6, 0x7f080153

    goto :goto_1

    :pswitch_7
    const/16 v7, 0x32

    const v5, 0x7f1202db

    const v6, 0x7f08013e

    goto :goto_1

    :pswitch_8
    const/16 v7, 0x82

    const v5, 0x7f120606

    const v6, 0x7f080145

    goto :goto_1

    :pswitch_9
    const/16 v7, 0x96

    const v5, 0x7f1202dc

    const v6, 0x7f08013f

    goto :goto_1

    :pswitch_a
    const/16 v7, 0x6e

    const v5, 0x7f12060d

    const v6, 0x7f08014d

    goto :goto_1

    :pswitch_b
    const/16 v7, 0x5a

    const v5, 0x7f120605

    const v6, 0x7f080142

    goto :goto_1

    :pswitch_c
    const/16 v7, 0x64

    const v5, 0x7f12060a

    const v6, 0x7f080148

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 7
    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v10, 0x1

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v9, v5

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v5

    goto :goto_3

    :cond_0
    move v5, v12

    move v6, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPrivateFilterInfo()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    .line 7
    invoke-virtual {v1, v3}, Lcom/android/camera/effect/FilterInfo;->setNeedRect(Z)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    .line 10
    invoke-virtual {v1, v3}, Lcom/android/camera/effect/FilterInfo;->setNeedRect(Z)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ZEBRA:I

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initStickerFilterInfo()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f080913

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterCategory;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v1

    .line 5
    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v8, v1, v4

    .line 6
    sget-object v9, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_1
    move v12, v5

    move v13, v6

    goto :goto_2

    :pswitch_0
    const/16 v7, 0x32

    const v5, 0x7f1209c2

    const v6, 0x7f08090e

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x2d

    const v5, 0x7f1209c3

    const v6, 0x7f08090f

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x28

    const v5, 0x7f1209c9

    const v6, 0x7f080911

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x1e

    const v5, 0x7f1209d0

    const v6, 0x7f080914

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x14

    const v5, 0x7f1209ca

    const v6, 0x7f080912

    goto :goto_1

    :pswitch_5
    const/16 v7, 0xa

    const v5, 0x7f1209c8

    const v6, 0x7f080910

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 7
    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v10, 0x3

    .line 8
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v9, v5

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v5

    goto :goto_3

    :cond_0
    move v5, v12

    move v6, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initVideoFilterInfo()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Lcom/android/camera/effect/FilterInfo;

    const/4 v6, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f08091b

    const/4 v2, 0x7

    move-object v1, v7

    move v3, v6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v7, v1}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/4 v13, 0x5

    const v11, 0x7f1209c5

    const v12, 0x7f080918

    const/4 v9, 0x7

    move-object v8, v1

    move v10, v13

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0xc8

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/4 v8, 0x6

    const v6, 0x7f1202d3

    const v7, 0x7f080915

    const/4 v4, 0x7

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6e

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/4 v8, 0x7

    const v6, 0x7f1202ec

    const v7, 0x7f08091f

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6f

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0xa

    const v6, 0x7f1209d3

    const v7, 0x7f080921

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x66

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x14

    const v6, 0x7f1209c7

    const v7, 0x7f08091a

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x67

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x1e

    const v6, 0x7f1209cc

    const v7, 0x7f08091d

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x68

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x28

    const v6, 0x7f1209d5

    const v7, 0x7f080922

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x69

    .line 24
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x32

    const v6, 0x7f1209cb

    const v7, 0x7f08091c

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6a

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x3c

    const v6, 0x7f1209c4

    const v7, 0x7f080917

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6b

    .line 30
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x46

    const v6, 0x7f1209ce

    const v7, 0x7f08091e

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6c

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x47

    const v6, 0x7f1202ef

    const v7, 0x7f080919

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x70

    .line 36
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x48

    const v6, 0x7f1202d5

    const v7, 0x7f080916

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x71

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x50

    const v6, 0x7f1209d1

    const v7, 0x7f080920

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6d

    .line 42
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private initVideoMasterFilterInfo()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Lcom/android/camera/effect/FilterInfo;

    const/4 v6, 0x0

    const v4, 0x7f12066c

    const v5, 0x7f080928

    const/4 v2, 0x7

    move-object v1, v7

    move v3, v6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v7, v1}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/4 v13, 0x5

    const v11, 0x7f1209c5

    const v12, 0x7f080926

    const/4 v9, 0x7

    move-object v8, v1

    move v10, v13

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0xc8

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0xa

    const v6, 0x7f1202ea

    const v7, 0x7f080923

    const/4 v4, 0x7

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x79

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0xf

    const v6, 0x7f1202e0

    const v7, 0x7f080930

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x7a

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x14

    const v6, 0x7f1202ec

    const v7, 0x7f08092d

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x7b

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x1e

    const v6, 0x7f1202e2

    const v7, 0x7f080927

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x7d

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x32

    const v6, 0x7f1202e4

    const v7, 0x7f080929

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x7e

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x3c

    const v6, 0x7f1202e6

    const v7, 0x7f08092b

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x7f

    .line 24
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x46

    const v6, 0x7f1202e8

    const v7, 0x7f080925

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x80

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x4b

    const v6, 0x7f1209d3

    const v7, 0x7f08092f

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x7c

    .line 30
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x50

    const v6, 0x7f1202d3

    const v7, 0x7f080924

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6e

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x5a

    const v6, 0x7f1209cc

    const v7, 0x7f08092a

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x68

    .line 36
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x64

    const v6, 0x7f1209ce

    const v7, 0x7f08092c

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6c

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    const/16 v8, 0x6e

    const v6, 0x7f1209d1

    const v7, 0x7f08092e

    move-object v3, v1

    move v5, v8

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    const/16 v2, 0x6d

    .line 42
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/FilterInfo;->setTagUniqueFilterId(I)V

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private initialize()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->isIndiaColorLookupTableAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsIndiaColorLookupTableAvailable:Z

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initAiSceneFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initPrivateFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initNormalFilterInfoNew()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initLightingFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsIndiaColorLookupTableAvailable:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->initIndiaBeautyFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0oo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initBeautyAndMakeupFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initBeautyFilterInfoNew()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initAppVideoFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initVideoFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initAppVideoFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initVideoMasterFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static isIndiaColorLookupTableAvailable()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo0o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "filter/beauty_india"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    sget-object v0, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to list files in directory \'filter/beauty_india\'"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v1

    .line 5
    :goto_1
    sget-object v2, Lcom/miui/filtersdk/filter/helper/FilterCategory;->BEAUTY_INDIA:Lcom/miui/filtersdk/filter/helper/FilterCategory;

    invoke-static {v2}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByCategory(Lcom/miui/filtersdk/filter/helper/FilterCategory;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private varargs postNotifyEffectChanged([I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectController$EffectChangedListener;

    .line 3
    invoke-interface {v2, p1}, Lcom/android/camera/effect/EffectController$EffectChangedListener;->onEffectChanged([I)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v0, Lcom/android/camera/effect/EffectController;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    iget-object v1, v1, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    sput-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {p1}, Lcom/android/camera/EffectChangedListenerController;->addEffectChangedListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearEffectAttribute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput v1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    return-void
.end method

.method public copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$1;)V

    return-object v0
.end method

.method public enableMakeup(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    :cond_0
    new-array p1, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v1, p1, v0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public findLiveFilter(Landroid/content/Context;I)Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->getLiveFilterList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;

    .line 3
    iget v2, v1, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;->id:I

    if-ne v2, p2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getAiColorCorrectionVersion()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAiColorCorrectionVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/EffectController;->mAiColorCorrectionVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mAiColorCorrectionVersion:I

    return v0
.end method

.method public getBlurAnimationValue()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    .line 2
    iget-boolean v3, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v2, v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_1

    .line 4
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_2

    if-gt v0, v2, :cond_2

    mul-int/lit16 v0, v0, 0xd4

    .line 6
    div-int/2addr v0, v2

    return v0

    :cond_2
    return v1
.end method

.method public getCurrentKaleidoscope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mDrawKaleidoscope:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSticker()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRotation()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return v0
.end method

.method public getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object v0
.end method

.method public getEffectCount(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public getEffectForPreview(Z)I
    .locals 2

    .line 1
    monitor-enter p0

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    if-eq p1, v0, :cond_0

    .line 3
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    monitor-exit p0

    return p1

    .line 4
    :cond_0
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    if-eq p1, v0, :cond_1

    .line 5
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    monitor-exit p0

    return p1

    .line 6
    :cond_1
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEffectForSaving(Z)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    sget p1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    return p1

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mAiColorCorrectionVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v1, :cond_2

    .line 4
    invoke-static {v0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 5
    sget p1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    return p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result p1

    return p1
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000O()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p2, p5}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p5, v1, :cond_2

    .line 3
    invoke-static {p5}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    .line 4
    :cond_2
    sget-object v1, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectGroup: renderId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v1, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectGroup: category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    sget-object p1, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid renderId "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/camera/effect/EffectController;->getMiLiveRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getLightingRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    .line 9
    :pswitch_3
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getAiSceneRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectController;->getMakeupRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    .line 11
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/camera/effect/EffectController;->getStickerRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    .line 12
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/camera/effect/EffectController;->getBeautyRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    .line 13
    :pswitch_7
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getNormalRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    .line 14
    :pswitch_8
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getPrivateRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, v1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getFilterInfo(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public getInvertFlag()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return v0
.end method

.method public getLiveFilterList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLiveFilters:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f03001c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/effect/EffectController;->mLiveFilters:Ljava/util/List;

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7
    new-instance v3, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;

    invoke-direct {v3}, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;-><init>()V

    .line 8
    iput v2, v3, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;->id:I

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;->imageViewRes:Landroid/graphics/drawable/Drawable;

    .line 10
    aget-object v4, v1, v2

    iput-object v4, v3, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;->name:Ljava/lang/String;

    .line 11
    aget-object v4, p1, v2

    iput-object v4, v3, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;->directoryName:Ljava/lang/String;

    .line 12
    iget-object v4, p0, Lcom/android/camera/effect/EffectController;->mLiveFilters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/android/camera/effect/EffectController;->mLiveFilters:Ljava/util/List;

    return-object p1
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return v0
.end method

.method public getTiltShiftMaskAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return v0
.end method

.method public hasEffect()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/EffectController;->hasEffect(ZZ)Z

    move-result v0

    return v0
.end method

.method public hasEffect(ZZ)Z
    .locals 11

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000O()Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v2

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0Oo0()Z

    move-result v3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v4

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v5

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v6

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v7

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v7, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move v4, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v9

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    move v3, v9

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    if-eqz p1, :cond_4

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v4, :cond_3

    iget p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result p1

    const/4 v4, 0x6

    if-eq p1, v4, :cond_3

    move p1, v9

    goto :goto_3

    :cond_3
    move p1, v10

    .line 13
    :goto_3
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    move p1, v10

    :goto_4
    if-eqz v0, :cond_5

    if-nez p1, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    move v9, v10

    :cond_6
    :goto_5
    return v9
.end method

.method public isBackGroundBlur()Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v1

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBeautyFrameReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    return v0
.end method

.method public isBlurAnimationDone()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCinematicEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawCinematic:Z

    return v0
.end method

.method public isDrawGradienter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    return v0
.end method

.method public isDrawTilt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    return v0
.end method

.method public isEffectPageSelected()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKaleidoscopeEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mDrawKaleidoscope:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mDrawKaleidoscope:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMainFrameDisplay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    return v0
.end method

.method public isMakeupEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    return v0
.end method

.method public isNeedDrawExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawExposure:Z

    return v0
.end method

.method public isNeedDrawPeaking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    return v0
.end method

.method public isNeedRect(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/FilterInfo;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/effect/FilterInfo;->isNeedRect()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isStickerEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public needDestroyMakeup()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    return v0
.end method

.method public notifyRealtimePreviewFilterChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectController$EffectChangedListener;

    .line 3
    invoke-interface {v2, p1}, Lcom/android/camera/effect/EffectController$EffectChangedListener;->onRealtimePreviewFilterChanged(I)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 3
    monitor-exit v0

    return p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawExposure:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawCinematic:Z

    const-string v0, "0"

    .line 9
    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mDrawKaleidoscope:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/android/camera/effect/EffectController;->EFFECT_ALL_CHANGE_TYPES:[I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setAiColorCorrectionVersion(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAiColorCorrectionVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mAiColorCorrectionVersion:I

    return-void
.end method

.method public setAiSceneEffect(IZ)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBeautyFrameReady(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v1, p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setBlurEffect(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    const/16 v1, 0x8

    if-ltz v0, :cond_1

    if-ge v1, v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 4
    :cond_2
    iput v1, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    :cond_3
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    .line 6
    :cond_4
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    return-void
.end method

.method public setCinematicEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawCinematic:Z

    return-void
.end method

.method public setCurrentSticker(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDestroyMakeup(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    return-void
.end method

.method public setDeviceRotation(ZF)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return-void
.end method

.method public setDrawExposure(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawExposure:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x7

    aput v1, p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDrawGradienter(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x6

    aput v1, p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDrawPeaking(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v1, p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDrawTilt(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x5

    aput v1, p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setEffect(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    :goto_0
    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object p1, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object p1, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {p1, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p4, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    return-void
.end method

.method public setInvertFlag(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return-void
.end method

.method public setKaleidoscope(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/EffectController;->mDrawKaleidoscope:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x8

    aput v1, p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setLightingEffect(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return-void
.end method

.method public setTiltShiftMaskAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return-void
.end method
