.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# static fields
.field public static final ALPHA_PERCENT_DISPLAY_FAT:F = 0.3f

.field public static final ALPHA_PERCENT_NORMAL_SCREEN:F = 0.7f

.field public static final ANIM_BOTH:I = 0x1

.field public static final ANIM_HOLD:I = 0x2

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_SLIDE:I = 0x3

.field public static final TIME_HOLD:I = 0x14

.field public static final TIME_SLIDE:I = 0x3c


# instance fields
.field public mAnimStartTime:J

.field public mAnimType:I

.field public mDrawHeight:I

.field public mDrawWidth:I

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateHold()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public animateHoldAndSlide()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public animateSlide()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    return-void
.end method

.method public clearAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)V
    .locals 6

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long/2addr v3, v5

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v5}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightPreviewAnimEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4
    invoke-virtual {v5}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v6

    .line 5
    :goto_0
    iget v7, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/16 v8, 0x3c

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    if-lez v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    int-to-long v10, v7

    cmp-long v7, v3, v10

    if-lez v7, :cond_2

    return v6

    .line 6
    :cond_2
    iget v7, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_4

    if-lez v5, :cond_3

    move v8, v5

    :cond_3
    add-int/lit8 v8, v8, 0x14

    int-to-long v7, v8

    cmp-long v7, v3, v7

    if-lez v7, :cond_4

    return v6

    .line 7
    :cond_4
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v7

    const v8, 0x3f333333    # 0.7f

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_2

    :cond_5
    const v7, 0x3e99999a    # 0.3f

    .line 8
    :goto_2
    iget v11, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v12, 0x2

    if-ne v11, v10, :cond_7

    const-wide/16 v13, 0x14

    cmp-long v11, v3, v13

    if-gez v11, :cond_6

    move v11, v12

    goto :goto_3

    :cond_6
    move v11, v9

    :cond_7
    :goto_3
    if-ne v11, v12, :cond_8

    .line 9
    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v4, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v4, v4

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v5, v5

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v7, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto/16 :goto_4

    :cond_8
    if-ne v11, v9, :cond_a

    const/high16 v9, 0x437f0000    # 255.0f

    if-lez v5, :cond_9

    long-to-float v3, v3

    mul-float/2addr v3, v8

    int-to-float v4, v5

    div-float/2addr v3, v4

    .line 10
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v8, v3

    .line 11
    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v4, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v4, v4

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v5, v5

    iget v11, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v12, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    invoke-static {v4, v5, v11, v12}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/camera/effect/GLCanvasState;->setBlendAlpha(F)V

    .line 14
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v12, v3

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v13, v3

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v15, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    mul-float/2addr v7, v9

    float-to-int v3, v7

    .line 15
    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v16

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    .line 16
    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 17
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    goto :goto_4

    .line 18
    :cond_9
    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v4, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v4, v4

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v5, v5

    iget v8, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v11, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    invoke-static {v4, v5, v8, v11}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 19
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v12, v3

    iget v3, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v13, v3

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v15, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    mul-float/2addr v7, v9

    float-to-int v3, v7

    .line 20
    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v16

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    .line 21
    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :goto_4
    return v10

    :cond_a
    return v6
.end method

.method public drawPreview(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method public startAnimation(IIII)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 2
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 3
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float p1, p1

    .line 4
    iput p1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    int-to-float p1, p2

    .line 5
    iput p1, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    return-void
.end method
