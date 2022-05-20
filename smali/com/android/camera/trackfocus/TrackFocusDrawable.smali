.class public Lcom/android/camera/trackfocus/TrackFocusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TrackFocusDrawable.java"


# static fields
.field public static final RATIO:F = 0.5f


# instance fields
.field public mAnimationOffset:I

.field public final mAutoRadius:I

.field public mDrawRect:Landroid/graphics/Rect;

.field public mManualPaint:Landroid/graphics/Paint;

.field public final mManualRadius:I

.field public mManualTrackMode:Z

.field public mPaint:Landroid/graphics/Paint;

.field public mRect:Landroid/graphics/Rect;

.field public final mSegmentLength:I

.field public final mShadowLength:I

.field public final mShadowRectPaint:Landroid/graphics/Paint;

.field public final mShadowStroke:I

.field public final mStandardSize:I

.field public final mStroke:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mDrawRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07077b

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowLength:I

    const v0, 0x7f07077d

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mSegmentLength:I

    const v0, 0x7f07077f

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStroke:I

    const v0, 0x7f07077e

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowStroke:I

    const v0, 0x7f07077c

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    const v0, 0x7f070779

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mAutoRadius:I

    const v0, 0x7f07077a

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mManualRadius:I

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowRectPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowRectPaint:Landroid/graphics/Paint;

    const-string v1, "#26000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mManualPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mManualPaint:Landroid/graphics/Paint;

    const-string v0, "#ffce16"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mManualPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawNotClosedRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFLandroid/graphics/Paint;F)V
    .locals 34

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v7, p6

    .line 1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v1

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v1

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v0

    const/16 v12, 0x8

    new-array v0, v12, [F

    const/4 v13, 0x0

    aput v11, v0, v13

    add-float v14, v8, p4

    const/4 v15, 0x1

    aput v14, v0, v15

    const/16 v16, 0x2

    aput v11, v0, v16

    add-float v1, v8, p5

    sub-float v17, v1, p7

    const/16 v18, 0x3

    aput v17, v0, v18

    add-float v1, v11, p5

    sub-float v19, v1, p7

    const/16 v20, 0x4

    aput v19, v0, v20

    const/16 v21, 0x5

    aput v8, v0, v21

    add-float v22, v11, p3

    const/16 v23, 0x6

    aput v22, v0, v23

    const/16 v24, 0x7

    aput v8, v0, v24

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v25, p5, v2

    add-float v5, v11, v25

    add-float v4, v8, v25

    invoke-direct {v1, v11, v8, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v27, v4

    move/from16 v4, v26

    move/from16 v28, v5

    move-object/from16 v5, p6

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-array v0, v12, [F

    aput v10, v0, v13

    sub-float v26, v9, p4

    aput v26, v0, v15

    aput v10, v0, v16

    sub-float v1, v9, p5

    add-float v29, v1, p7

    aput v29, v0, v18

    sub-float v1, v10, p5

    add-float v30, v1, p7

    aput v30, v0, v20

    aput v9, v0, v21

    sub-float v31, v10, p3

    aput v31, v0, v23

    aput v9, v0, v24

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    sub-float v5, v10, v25

    sub-float v4, v9, v25

    invoke-direct {v1, v5, v4, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v32, v4

    move/from16 v4, v25

    move/from16 v33, v5

    move-object/from16 v5, p6

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-array v0, v12, [F

    aput v11, v0, v13

    aput v26, v0, v15

    aput v11, v0, v16

    aput v29, v0, v18

    aput v19, v0, v20

    aput v9, v0, v21

    aput v22, v0, v23

    aput v9, v0, v24

    .line 11
    new-instance v1, Landroid/graphics/RectF;

    move/from16 v2, v28

    move/from16 v3, v32

    invoke-direct {v1, v11, v3, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    move-object/from16 v0, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-array v0, v12, [F

    aput v10, v0, v13

    aput v14, v0, v15

    aput v10, v0, v16

    aput v17, v0, v18

    aput v30, v0, v20

    aput v8, v0, v21

    aput v31, v0, v23

    aput v8, v0, v24

    .line 14
    new-instance v1, Landroid/graphics/RectF;

    move/from16 v2, v27

    move/from16 v3, v33

    invoke-direct {v1, v3, v8, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 15
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mManualTrackMode:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mManualPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mManualRadius:I

    int-to-float v2, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->drawSubjectRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mAutoRadius:I

    int-to-float v2, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->drawSubjectRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;F)V

    :goto_0
    return-void
.end method

.method public drawSubjectRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;F)V
    .locals 13

    move-object v8, p0

    .line 1
    iget v0, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStroke:I

    int-to-float v0, v0

    .line 2
    iget v1, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowStroke:I

    int-to-float v1, v1

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    if-lt v2, v3, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v2, v5

    mul-float/2addr v2, v4

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v6, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    .line 7
    iget v4, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mSegmentLength:I

    int-to-float v6, v4

    add-float/2addr v2, v5

    mul-float/2addr v6, v2

    int-to-float v2, v4

    add-float/2addr v3, v5

    mul-float/2addr v2, v3

    .line 8
    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowLength:I

    int-to-float v5, v3

    add-float/2addr v5, v6

    int-to-float v7, v4

    sub-float/2addr v5, v7

    int-to-float v3, v3

    add-float/2addr v3, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move/from16 v12, p4

    move v9, v0

    move v4, v2

    move v11, v3

    move v10, v5

    move v3, v6

    goto/16 :goto_4

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    if-ge v0, v1, :cond_2

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    :goto_1
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    if-le v2, v3, :cond_3

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v2, v5

    mul-float/2addr v2, v4

    .line 14
    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mSegmentLength:I

    int-to-float v3, v3

    add-float/2addr v2, v5

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 16
    iget v3, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mSegmentLength:I

    int-to-float v3, v3

    :goto_2
    mul-float/2addr v3, v2

    .line 17
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v6, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    if-le v2, v6, :cond_4

    .line 18
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v6, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float/2addr v2, v5

    mul-float/2addr v2, v4

    .line 19
    iget v4, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mSegmentLength:I

    int-to-float v4, v4

    add-float/2addr v2, v5

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v4, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStandardSize:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 21
    iget v4, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mSegmentLength:I

    int-to-float v4, v4

    :goto_3
    mul-float/2addr v4, v2

    .line 22
    iget v2, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowLength:I

    int-to-float v6, v2

    add-float/2addr v6, v3

    iget v7, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mSegmentLength:I

    int-to-float v9, v7

    sub-float/2addr v6, v9

    int-to-float v2, v2

    add-float/2addr v2, v4

    int-to-float v7, v7

    sub-float/2addr v2, v7

    .line 23
    iget v7, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mStroke:I

    int-to-double v9, v7

    mul-double/2addr v9, v0

    double-to-float v7, v9

    .line 24
    iget v9, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowStroke:I

    int-to-double v9, v9

    mul-double/2addr v9, v0

    double-to-float v9, v9

    move/from16 v10, p4

    float-to-double v10, v10

    mul-double/2addr v10, v0

    double-to-float v0, v10

    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v7, 0x40800000    # 4.0f

    .line 26
    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 27
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v12, v0

    move v9, v1

    move v11, v2

    move v10, v6

    move v1, v7

    .line 28
    :goto_4
    iget-object v0, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mDrawRect:Landroid/graphics/Rect;

    move-object v2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    iget-object v0, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mAnimationOffset:I

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 30
    iget-object v0, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iget-object v2, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mDrawRect:Landroid/graphics/Rect;

    iget-object v6, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mShadowRectPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->drawNotClosedRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFLandroid/graphics/Paint;F)V

    move-object/from16 v6, p3

    .line 32
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    iget-object v2, v8, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mDrawRect:Landroid/graphics/Rect;

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->drawNotClosedRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFLandroid/graphics/Paint;F)V

    return-void
.end method

.method public getAnimationOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mAnimationOffset:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setAnimationOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mAnimationOffset:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setManualTrackMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mManualTrackMode:Z

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusDrawable;->mRect:Landroid/graphics/Rect;

    return-void
.end method
