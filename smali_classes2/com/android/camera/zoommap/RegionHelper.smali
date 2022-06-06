.class public Lcom/android/camera/zoommap/RegionHelper;
.super Ljava/lang/Object;
.source "RegionHelper.java"


# static fields
.field public static final MARGIN:I

.field public static final TAG:Ljava/lang/String; = "RegionHelper"

.field public static final TARGET_X_TAG:Ljava/lang/String; = "TARGET_X_TAG"

.field public static final TARGET_X_VALUE:Ljava/lang/String; = "TARGET_X"

.field public static final TARGET_Y_TAG:Ljava/lang/String; = "TARGET_Y_TAG"

.field public static final TARGET_Y_VALUE:Ljava/lang/String; = "TARGET_Y"


# instance fields
.field public mIsCinematicAspectRatio:Z

.field public mIsHovering:Z

.field public mMapView:Landroid/view/View;

.field public mPreviewRect:Landroid/graphics/Rect;

.field public mTranslationX:I

.field public mTranslationXMax:I

.field public mTranslationXMid:I

.field public mTranslationXMin:I

.field public mTranslationY:I

.field public mTranslationYMax:I

.field public mTranslationYMid:I

.field public mTranslationYMin:I

.field public mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

.field public mWindowSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x4168cccd    # 14.55f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/util/Size;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsHovering:Z

    new-instance v1, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v1}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    iput-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    iput-boolean p3, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsCinematicAspectRatio:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p3

    const/4 v1, 0x4

    if-eqz p3, :cond_0

    move p1, v1

    :cond_0
    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    sget p3, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    neg-int p1, p1

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    iget-boolean p3, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsCinematicAspectRatio:Z

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    :cond_2
    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMax:I

    iget p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMid:I

    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sget p3, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    sget p2, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMid:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mTranslationYMin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mTranslationYMax "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegionHelper"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/zoommap/RegionHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/zoommap/RegionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/zoommap/RegionHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/zoommap/RegionHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/zoommap/RegionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    return p1
.end method


# virtual methods
.method public getPipWindowDefaultLocation()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget v1, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsCinematicAspectRatio:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    add-int/2addr v1, v2

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public initAnimConfig()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {v0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    return-void
.end method

.method public initTranslation()V
    .locals 2

    const-string v0, "RegionHelper"

    const-string v1, "initTranslation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    iput v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    iget-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public isHovering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsHovering:Z

    return v0
.end method

.method public moveToEdge()Z
    .locals 13

    iget-object v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/zoommap/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v2

    iget-boolean v4, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsCinematicAspectRatio:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    iget v6, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    sub-int/2addr v6, v4

    sget v7, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    const/4 v8, 0x3

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    const/high16 v7, -0x3b060000    # -2000.0f

    const/high16 v9, 0x44fa0000    # 2000.0f

    const/4 v10, 0x2

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    sub-int/2addr v5, v4

    sget v4, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    mul-int/2addr v4, v10

    sub-int/2addr v5, v4

    iget-object v4, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v5, v4

    :goto_1
    move v4, v3

    goto :goto_3

    :cond_1
    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    sget v6, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    add-int/2addr v6, v4

    iget-object v11, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    div-int/2addr v11, v8

    add-int/2addr v6, v11

    if-le v5, v6, :cond_2

    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMax:I

    iget-object v6, p0, Lcom/android/camera/zoommap/RegionHelper;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    mul-int/2addr v6, v10

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    goto :goto_1

    :cond_2
    cmpl-float v4, v0, v9

    if-lez v4, :cond_3

    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMax:I

    :goto_2
    move v4, v1

    goto :goto_3

    :cond_3
    cmpg-float v4, v0, v7

    if-gez v4, :cond_4

    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMid:I

    if-ge v4, v5, :cond_5

    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMin:I

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationXMax:I

    goto :goto_2

    :goto_3
    cmpl-float v6, v2, v9

    if-lez v6, :cond_6

    iget v6, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    goto :goto_4

    :cond_6
    cmpg-float v6, v2, v7

    if-gez v6, :cond_7

    iget v6, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    goto :goto_4

    :cond_7
    iget v6, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    iget v7, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMid:I

    if-ge v6, v7, :cond_8

    iget v6, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    goto :goto_4

    :cond_8
    iget v6, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveToEdge mSpeedX: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mSpeedY: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", destX: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", destY: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RegionHelper"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    const-string v0, "RIGHT_TOP"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomMapMoveWindow(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-nez v5, :cond_a

    if-lez v6, :cond_a

    const-string v0, "RIGHT_BOTTOM"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomMapMoveWindow(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-gez v5, :cond_b

    if-nez v6, :cond_b

    const-string v0, "LEFT_TOP"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomMapMoveWindow(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-gez v5, :cond_c

    if-lez v6, :cond_c

    const-string v0, "LEFT_BOTTOM"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomMapMoveWindow(Ljava/lang/String;)V

    :cond_c
    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v7, "TARGET_X"

    aput-object v7, v2, v1

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v7, v10, [Ljava/lang/Object;

    const-string v9, "TARGET_X_TAG"

    aput-object v9, v7, v1

    iget v11, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v3

    invoke-interface {v2, v7}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v9, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    const/4 v11, -0x2

    invoke-virtual {v5, v11, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v9, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v12, Lcom/android/camera/zoommap/RegionHelper$1;

    invoke-direct {v12, p0, v0}, Lcom/android/camera/zoommap/RegionHelper$1;-><init>(Lcom/android/camera/zoommap/RegionHelper;Ljava/lang/Boolean;)V

    aput-object v12, v9, v1

    invoke-virtual {v5, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-interface {v2, v7}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "TARGET_Y"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    const-string v5, "TARGET_Y_TAG"

    aput-object v5, v2, v1

    iget v7, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v10, [F

    fill-array-data v6, :array_1

    invoke-virtual {v5, v11, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v3, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/camera/zoommap/RegionHelper$2;

    invoke-direct {v6, p0}, Lcom/android/camera/zoommap/RegionHelper$2;-><init>(Lcom/android/camera/zoommap/RegionHelper;)V

    aput-object v6, v3, v1

    invoke-virtual {v5, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v2, v10

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return v4

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public setHovering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mIsHovering:Z

    return-void
.end method

.method public updateTranslation(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTranslation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionHelper"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    iget p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMin:I

    sget v0, Lcom/android/camera/zoommap/RegionHelper;->MARGIN:I

    sub-int/2addr p1, v0

    iget v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationYMax:I

    add-int/2addr v1, v0

    invoke-static {p2, p1, v1}, Lcom/android/camera/Util;->getValidValue(III)I

    move-result p1

    iput p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mMapView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 p2, 0x2

    new-array v0, p2, [F

    iget v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Lmiuix/animation/utils/VelocityMonitor;->update([F)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "TARGET_X"

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "TARGET_X_TAG"

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "TARGET_Y"

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TARGET_Y_TAG"

    aput-object v0, p2, v2

    iget v0, p0, Lcom/android/camera/zoommap/RegionHelper;->mTranslationY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method
