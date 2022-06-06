.class public Lcom/android/camera/ui/ReferenceLineDrawer;
.super Landroid/view/View;
.source "ReferenceLineDrawer.java"


# static fields
.field public static final BORDER:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static reference_line_width:F

.field public static reference_line_width_end:F

.field public static reference_line_width_start:F


# instance fields
.field public isGradienterEnabled:Z

.field public mAuxiliaryLineColor:I

.field public mAuxiliaryLinePaint:Landroid/graphics/Paint;

.field public mBottomVisible:Z

.field public mColumnCount:I

.field public mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public mDeviceRotation:F

.field public mFrameColor:I

.field public mFramePaint:Landroid/graphics/Paint;

.field public mFrameSpiralColor:I

.field public mGoldenSpiralPaint:Landroid/graphics/Paint;

.field public mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

.field public mLineColor:I

.field public mLinePaint:Landroid/graphics/Paint;

.field public mRowCount:I

.field public mTopVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ReferenceLineDrawer;->TAG:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const v0, 0x70ffffff

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const v0, 0x4dffffff    # 5.3687088E8f

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 v0, 0x26000000

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const v0, -0x66000001

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sput p1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p2, 0x70ffffff

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const p2, 0x4dffffff    # 5.3687088E8f

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 p2, 0x26000000

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const p2, -0x66000001

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0706a9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sput p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0706ab

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sput p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706aa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sput p1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p2, 0x70ffffff

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const p2, 0x4dffffff    # 5.3687088E8f

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    const/high16 p2, 0x26000000

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const p2, -0x66000001

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706a9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sput p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706ab

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sput p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706aa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sput p1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method private GoldenSection(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    const v6, 0x3f41cac1    # 0.757f

    mul-float/2addr v6, v2

    const v7, 0x3df8d4fe    # 0.1215f

    mul-float/2addr v2, v7

    move/from16 v27, v6

    move v6, v2

    move/from16 v2, v27

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x4

    if-ne v1, v7, :cond_1

    sub-float/2addr v4, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v4, v1

    move v4, v2

    :cond_1
    move v1, v3

    :goto_1
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v8, 0x2

    const v9, 0x3f1e353f    # 0.618f

    const v10, 0x3ec39581    # 0.382f

    const/high16 v11, 0x3f800000    # 1.0f

    if-ge v1, v7, :cond_6

    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v12, :cond_2

    if-ne v1, v3, :cond_2

    mul-float v7, v2, v10

    add-float v8, v7, v6

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v14, v8, v12

    add-float v15, v5, v11

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v12, v7

    add-float v16, v12, v6

    mul-float/2addr v10, v4

    add-float v17, v10, v5

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v8, v10

    mul-float/2addr v9, v4

    add-float/2addr v9, v11

    add-float v14, v9, v5

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    add-float v15, v7, v6

    sub-float v7, v4, v11

    add-float v16, v7, v5

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_2
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v12, :cond_3

    if-ne v1, v8, :cond_3

    mul-float v7, v2, v9

    add-float v8, v7, v6

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v14, v8, v12

    add-float v15, v5, v11

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v12, v7

    add-float v16, v12, v6

    mul-float/2addr v10, v4

    add-float v17, v10, v5

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v8, v10

    mul-float/2addr v9, v4

    add-float/2addr v9, v11

    add-float v14, v9, v5

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    add-float v15, v7, v6

    sub-float v7, v4, v11

    add-float v16, v7, v5

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    if-ne v1, v3, :cond_4

    mul-float/2addr v10, v2

    add-float v7, v10, v6

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v7, v8

    add-float v14, v5, v11

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v10, v7

    add-float v15, v10, v6

    sub-float v7, v4, v11

    add-float v16, v7, v5

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    if-ne v1, v8, :cond_5

    mul-float/2addr v9, v2

    add-float v7, v9, v6

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v7, v8

    add-float v14, v5, v11

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v9, v7

    add-float v15, v9, v6

    sub-float v7, v4, v11

    add-float v16, v7, v5

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    iget-boolean v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v1, v3

    const/4 v7, 0x0

    move v12, v7

    :goto_3
    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v12, v13, :cond_e

    if-eqz v12, :cond_7

    if-ne v12, v13, :cond_9

    :cond_7
    if-nez v12, :cond_8

    iget-boolean v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v13, :cond_9

    :cond_8
    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v12, v13, :cond_d

    iget-boolean v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v13, :cond_d

    :cond_9
    iget-boolean v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v14, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v13, v14, :cond_a

    if-ne v12, v3, :cond_a

    int-to-float v13, v1

    add-float v15, v13, v6

    mul-float v20, v4, v10

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v14, v20, v14

    sub-float/2addr v14, v11

    add-float v16, v14, v5

    mul-float v14, v2, v10

    add-float v17, v14, v6

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v20, v14

    sub-float/2addr v14, v11

    add-float v18, v14, v5

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v14

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v14, v2, v9

    add-float/2addr v14, v13

    add-float v22, v14, v6

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v14, v20, v14

    sub-float/2addr v14, v11

    add-float v23, v14, v5

    sub-float v13, v2, v13

    add-float v24, v13, v6

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v20, v20, v13

    sub-float v20, v20, v11

    add-float v25, v20, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v21, p1

    move-object/from16 v26, v13

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_a
    iget-boolean v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v14, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v13, v14, :cond_b

    if-ne v12, v8, :cond_b

    int-to-float v13, v1

    add-float v15, v13, v6

    mul-float v20, v4, v9

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v14, v20, v14

    add-float v16, v14, v5

    mul-float v14, v2, v10

    add-float v17, v14, v6

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v20, v14

    add-float v18, v14, v5

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v14

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v14, v2, v9

    add-float/2addr v14, v13

    add-float v22, v14, v6

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v14, v20, v14

    add-float v23, v14, v5

    sub-float v13, v2, v13

    add-float v24, v13, v6

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v20, v20, v13

    add-float v25, v20, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v21, p1

    move-object/from16 v26, v13

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_b
    if-ne v12, v3, :cond_c

    int-to-float v13, v1

    add-float v15, v13, v6

    mul-float v14, v4, v10

    sget v16, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v16, v14, v16

    sub-float v16, v16, v11

    add-float v16, v16, v5

    sub-float v13, v2, v13

    add-float v17, v13, v6

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v14, v13

    sub-float/2addr v14, v11

    add-float v18, v14, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_c
    if-ne v12, v8, :cond_d

    int-to-float v13, v1

    add-float v15, v13, v6

    mul-float v14, v4, v9

    sget v16, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v16, v14, v16

    add-float v16, v16, v5

    sub-float v13, v2, v13

    add-float v17, v13, v6

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v14, v13

    add-float v18, v14, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_d
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_e
    move v12, v3

    :goto_5
    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v12, v13, :cond_13

    iget-boolean v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v13, :cond_f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v14, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v13, v14, :cond_f

    if-ne v12, v3, :cond_f

    mul-float v13, v2, v10

    add-float v20, v13, v6

    add-float v16, v5, v11

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v14, v13

    add-float v17, v14, v6

    mul-float v14, v4, v10

    add-float v18, v14, v5

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v15

    move/from16 v15, v20

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v14, v4, v9

    add-float/2addr v14, v11

    add-float v16, v14, v5

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v14

    add-float v17, v13, v6

    sub-float v13, v4, v11

    add-float v18, v13, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_f
    iget-boolean v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v13, :cond_10

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v14, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v13, v14, :cond_10

    if-ne v12, v8, :cond_10

    mul-float v13, v2, v9

    add-float v20, v13, v6

    add-float v16, v5, v11

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v14, v13

    add-float v17, v14, v6

    mul-float v14, v4, v10

    add-float v18, v14, v5

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v15

    move/from16 v15, v20

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v14, v4, v9

    add-float/2addr v14, v11

    add-float v16, v14, v5

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v14

    add-float v17, v13, v6

    sub-float v13, v4, v11

    add-float v18, v13, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_10
    if-ne v12, v3, :cond_11

    mul-float v13, v2, v10

    add-float v15, v13, v6

    add-float v16, v5, v11

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v14

    add-float v17, v13, v6

    sub-float v13, v4, v11

    add-float v18, v13, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_11
    if-ne v12, v8, :cond_12

    mul-float v13, v2, v9

    add-float v15, v13, v6

    add-float v16, v5, v11

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v14

    add-float v17, v13, v6

    sub-float v13, v4, v11

    add-float v18, v13, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_12
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    :cond_13
    :goto_7
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v7, v12, :cond_1b

    if-eqz v7, :cond_14

    if-ne v7, v12, :cond_16

    :cond_14
    if-nez v7, :cond_15

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v12, :cond_16

    :cond_15
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v7, v12, :cond_1a

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v12, :cond_1a

    :cond_16
    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_17

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_17

    if-ne v7, v3, :cond_17

    int-to-float v12, v1

    add-float v14, v12, v6

    mul-float v19, v4, v10

    sub-float v13, v19, v11

    add-float v22, v13, v5

    mul-float v13, v2, v10

    add-float v16, v13, v6

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v13, v19, v13

    sub-float/2addr v13, v11

    add-float v17, v13, v5

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v15

    move/from16 v15, v22

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v2, v9

    add-float/2addr v13, v6

    add-float v21, v13, v12

    sub-float v12, v2, v12

    add-float v23, v12, v6

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v19, v19, v12

    sub-float v19, v19, v11

    add-float v24, v19, v5

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, p1

    move-object/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_17
    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_18

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_18

    if-ne v7, v8, :cond_18

    int-to-float v12, v1

    add-float v14, v12, v6

    mul-float v19, v4, v9

    add-float v22, v19, v5

    mul-float v13, v2, v10

    add-float v16, v13, v6

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v13, v19, v13

    add-float v17, v13, v5

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v15

    move/from16 v15, v22

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v2, v9

    add-float/2addr v13, v12

    add-float v21, v13, v6

    sub-float v12, v2, v12

    add-float v23, v12, v6

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v19, v19, v12

    add-float v24, v19, v5

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, p1

    move-object/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_18
    if-ne v7, v3, :cond_19

    int-to-float v12, v1

    add-float v14, v12, v6

    mul-float v13, v4, v10

    sub-float v15, v13, v11

    add-float/2addr v15, v5

    sub-float v12, v2, v12

    add-float v16, v12, v6

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v12

    sub-float/2addr v13, v11

    add-float v17, v13, v5

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_19
    if-ne v7, v8, :cond_1a

    int-to-float v12, v1

    add-float v14, v12, v6

    mul-float v13, v4, v9

    add-float v15, v13, v5

    sub-float v12, v2, v12

    add-float v16, v12, v6

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v12

    add-float v17, v13, v5

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1a
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_1b
    return-void
.end method

.method public static IsGoldenSection()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_type_key"

    const-string v2, "jiugongge"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "golden_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static IsGoldenSpiral()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_type_key"

    const-string v2, "jiugongge"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "left_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "right_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private Jiugongge(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v1, v1

    int-to-float v3, v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_0

    const v6, 0x3f41cac1    # 0.757f

    mul-float/2addr v6, v1

    const v7, 0x3df95810    # 0.12175f

    mul-float/2addr v1, v7

    move/from16 v25, v6

    move v6, v1

    move/from16 v1, v25

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    move v3, v1

    :cond_1
    move v4, v2

    :goto_1
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v4, v7, :cond_4

    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v11, :cond_2

    if-ne v4, v8, :cond_2

    int-to-float v8, v4

    mul-float/2addr v8, v1

    int-to-float v10, v7

    div-float v10, v8, v10

    add-float/2addr v10, v6

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v10, v11

    add-float v14, v5, v9

    int-to-float v7, v7

    div-float v7, v8, v7

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v10

    add-float v15, v7, v6

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v7, v7

    div-float v7, v3, v7

    add-float v16, v7, v5

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v7

    div-float v10, v8, v10

    add-float/2addr v10, v6

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v10, v11

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v11, v10

    div-float v11, v3, v11

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v9

    add-float v14, v11, v5

    int-to-float v7, v7

    div-float/2addr v8, v7

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v8, v7

    add-float v15, v8, v6

    sub-float v7, v3, v9

    add-float v16, v7, v5

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_2
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v8, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v8, :cond_3

    if-ne v4, v2, :cond_3

    int-to-float v7, v4

    mul-float/2addr v7, v1

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v8

    div-float v10, v7, v10

    add-float/2addr v10, v6

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v10, v11

    add-float v14, v5, v9

    int-to-float v8, v8

    div-float v8, v7, v8

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v8, v10

    add-float v15, v8, v6

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v8, v8

    div-float v8, v3, v8

    add-float v16, v8, v5

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v8

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v8

    div-float v10, v7, v10

    add-float/2addr v10, v6

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v10, v11

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v11, v10

    div-float v11, v3, v11

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v9

    add-float v14, v11, v5

    int-to-float v8, v8

    div-float/2addr v7, v8

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    add-float v15, v7, v6

    sub-float v7, v3, v9

    add-float v16, v7, v5

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    int-to-float v7, v4

    mul-float/2addr v7, v1

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v8

    div-float v10, v7, v10

    add-float/2addr v10, v6

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v10, v11

    add-float v14, v5, v9

    int-to-float v8, v8

    div-float/2addr v7, v8

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    add-float v15, v7, v6

    sub-float v7, v3, v9

    add-float v16, v7, v5

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    iget-boolean v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v4, v2

    const/4 v7, 0x0

    move v10, v7

    :goto_3
    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v10, v11, :cond_b

    if-eqz v10, :cond_5

    if-ne v10, v11, :cond_7

    :cond_5
    if-nez v10, :cond_6

    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v11, :cond_7

    :cond_6
    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v10, v11, :cond_a

    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v11, :cond_a

    :cond_7
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_8

    if-ne v10, v2, :cond_8

    int-to-float v11, v4

    add-float v13, v11, v6

    int-to-float v12, v10

    mul-float v18, v12, v3

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v14, v12

    div-float v14, v18, v14

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v14, v15

    add-float/2addr v14, v5

    iget v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v15, v15

    div-float v15, v1, v15

    add-float/2addr v15, v6

    int-to-float v12, v12

    div-float v12, v18, v12

    sget v16, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v12, v12, v16

    add-float v16, v12, v5

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v12

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v12

    div-float v13, v1, v13

    sub-int/2addr v12, v2

    int-to-float v12, v12

    mul-float/2addr v13, v12

    add-float/2addr v13, v11

    add-float v20, v13, v6

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v13, v12

    div-float v13, v18, v13

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v13, v14

    add-float v21, v13, v5

    sub-float v11, v1, v11

    add-float v22, v11, v6

    int-to-float v11, v12

    div-float v18, v18, v11

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v18, v18, v11

    add-float v23, v18, v5

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_8
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_9

    if-ne v10, v8, :cond_9

    int-to-float v11, v4

    add-float v13, v11, v6

    int-to-float v12, v10

    mul-float v18, v12, v3

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v14, v12

    div-float v14, v18, v14

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v14, v15

    add-float/2addr v14, v5

    iget v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v15, v15

    div-float v15, v1, v15

    add-float/2addr v15, v6

    int-to-float v12, v12

    div-float v12, v18, v12

    sget v16, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v12, v12, v16

    add-float v16, v12, v5

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v12

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v12

    div-float v13, v1, v13

    sub-int/2addr v12, v2

    int-to-float v12, v12

    mul-float/2addr v13, v12

    add-float/2addr v13, v11

    add-float v20, v13, v6

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v13, v12

    div-float v13, v18, v13

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v13, v14

    add-float v21, v13, v5

    sub-float v11, v1, v11

    add-float v22, v11, v6

    int-to-float v11, v12

    div-float v18, v18, v11

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v18, v18, v11

    add-float v23, v18, v5

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_9
    int-to-float v11, v4

    add-float v13, v11, v6

    int-to-float v12, v10

    mul-float/2addr v12, v3

    iget v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v15, v14

    div-float v15, v12, v15

    sget v16, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v15, v16

    add-float/2addr v15, v5

    sub-float v11, v1, v11

    add-float/2addr v11, v6

    int-to-float v14, v14

    div-float/2addr v12, v14

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v12, v14

    add-float v16, v12, v5

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v14

    move v14, v15

    move v15, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_b
    move v10, v2

    :goto_5
    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v10, v11, :cond_e

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_c

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_c

    if-ne v10, v2, :cond_c

    int-to-float v12, v10

    mul-float/2addr v12, v1

    int-to-float v13, v11

    div-float v13, v12, v13

    add-float v15, v13, v6

    add-float v16, v5, v9

    int-to-float v11, v11

    div-float v11, v12, v11

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v11, v13

    add-float v17, v11, v6

    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v11, v11

    div-float v11, v3, v11

    add-float v18, v11, v5

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v11

    div-float v13, v12, v13

    add-float v15, v13, v6

    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v14, v13

    div-float v14, v3, v14

    sub-int/2addr v13, v2

    int-to-float v13, v13

    mul-float/2addr v14, v13

    add-float/2addr v14, v9

    add-float v16, v14, v5

    int-to-float v11, v11

    div-float/2addr v12, v11

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v11

    add-float v17, v12, v6

    sub-float v11, v3, v9

    add-float v18, v11, v5

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_c
    iget-boolean v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v11, :cond_d

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v11, v12, :cond_d

    if-ne v10, v8, :cond_d

    int-to-float v11, v10

    mul-float/2addr v11, v1

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v12

    div-float v13, v11, v13

    add-float v15, v13, v6

    add-float v16, v5, v9

    int-to-float v12, v12

    div-float v12, v11, v12

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v13

    add-float v17, v12, v6

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v12, v12

    div-float v12, v3, v12

    add-float v18, v12, v5

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v12

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v12

    div-float v13, v11, v13

    add-float v15, v13, v6

    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v14, v13

    div-float v14, v3, v14

    sub-int/2addr v13, v2

    int-to-float v13, v13

    mul-float/2addr v14, v13

    add-float/2addr v14, v9

    add-float v16, v14, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v11, v12

    add-float v17, v11, v6

    sub-float v11, v3, v9

    add-float v18, v11, v5

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_d
    int-to-float v11, v10

    mul-float/2addr v11, v1

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v12

    div-float v13, v11, v13

    add-float v15, v13, v6

    add-float v16, v5, v9

    int-to-float v12, v12

    div-float/2addr v11, v12

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v11, v12

    add-float v17, v11, v6

    sub-float v11, v3, v9

    add-float v18, v11, v5

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    :cond_e
    :goto_7
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v7, v9, :cond_15

    if-eqz v7, :cond_f

    if-ne v7, v9, :cond_11

    :cond_f
    if-nez v7, :cond_10

    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v9, :cond_11

    :cond_10
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v7, v9, :cond_14

    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v9, :cond_14

    :cond_11
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_12

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_12

    if-ne v7, v2, :cond_12

    int-to-float v9, v4

    add-float v11, v9, v6

    int-to-float v10, v7

    mul-float v16, v10, v3

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v12, v10

    div-float v12, v16, v12

    add-float/2addr v12, v5

    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v13

    div-float v13, v1, v13

    add-float/2addr v13, v6

    int-to-float v10, v10

    div-float v10, v16, v10

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v10, v14

    add-float v14, v10, v5

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v1, v11

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v9

    add-float v18, v11, v6

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v11, v10

    div-float v11, v16, v11

    add-float v19, v11, v5

    sub-float v9, v1, v9

    add-float v20, v9, v6

    int-to-float v9, v10

    div-float v16, v16, v9

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v16, v9

    add-float v21, v16, v5

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v22, v9

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_12
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_13

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_13

    if-ne v7, v8, :cond_13

    int-to-float v9, v4

    add-float v11, v9, v6

    int-to-float v10, v7

    mul-float v16, v10, v3

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v12, v10

    div-float v12, v16, v12

    add-float/2addr v12, v5

    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v13

    div-float v13, v1, v13

    add-float/2addr v13, v6

    int-to-float v10, v10

    div-float v10, v16, v10

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v10, v14

    add-float v14, v10, v5

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v1, v11

    sub-int/2addr v10, v2

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v9

    add-float v18, v11, v6

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v11, v10

    div-float v11, v16, v11

    add-float v19, v11, v5

    sub-float v9, v1, v9

    add-float v20, v9, v6

    int-to-float v9, v10

    div-float v16, v16, v9

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v16, v9

    add-float v21, v16, v5

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v22, v9

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_13
    int-to-float v9, v4

    add-float v11, v9, v6

    int-to-float v10, v7

    mul-float/2addr v10, v3

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    int-to-float v13, v12

    div-float v13, v10, v13

    add-float/2addr v13, v5

    sub-float v9, v1, v9

    add-float/2addr v9, v6

    int-to-float v12, v12

    div-float/2addr v10, v12

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v10, v12

    add-float v14, v10, v5

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v12, v13

    move v13, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_14
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_15
    return-void
.end method

.method private LeftGoldenSpiral(Landroid/graphics/Canvas;)V
    .locals 60

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v4

    int-to-float v1, v1

    int-to-float v3, v3

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const v7, 0x3f3eb852    # 0.745f

    mul-float/2addr v7, v1

    const v8, 0x3e03126f    # 0.128f

    mul-float/2addr v8, v1

    move v9, v8

    move v8, v6

    goto :goto_0

    :cond_0
    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v1

    move v9, v6

    move v8, v7

    move v7, v1

    :goto_0
    const/4 v10, 0x3

    const v14, 0x3f271759    # 0.6527f

    const v15, 0x3d6425af    # 0.0557f

    const v16, 0x3f4c63f1    # 0.7984f

    const v17, 0x3e954c98    # 0.2916f

    const v18, 0x3f1e425b    # 0.6182f

    const v19, 0x3ef1a9fc    # 0.472f

    const v20, 0x3f92b021    # 1.146f

    const v21, 0x3e71a9fc    # 0.236f

    const v22, 0x3dff2e49    # 0.1246f

    const v23, 0x3e718fc5    # 0.2359f

    const v24, 0x3f68e8a7    # 0.9098f

    const v25, 0x3f072b02    # 0.528f

    const v26, 0x3f9e353f    # 1.236f

    const v27, 0x3f1e353f    # 0.618f

    const v28, 0x3fcf1aa0    # 1.618f

    const/high16 v29, 0x40000000    # 2.0f

    if-ne v4, v10, :cond_2

    div-float v2, v3, v7

    float-to-double v4, v2

    const-wide v8, 0x3ff9e353f7ced917L    # 1.618

    cmpg-double v2, v4, v8

    if-gez v2, :cond_1

    const v2, 0x3ec3126f    # 0.381f

    mul-float/2addr v7, v2

    div-float v2, v3, v28

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    mul-float v1, v1, v28

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    div-float v1, v1, v29

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_1
    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v7

    move v2, v7

    move v7, v1

    move v1, v6

    :goto_1
    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v3, v29

    add-float/2addr v3, v6

    add-float v31, v3, v1

    sub-float v3, v6, v7

    mul-float v4, v2, v29

    add-float v5, v4, v1

    sub-float/2addr v4, v7

    const/high16 v35, 0x42b40000    # 90.0f

    const/high16 v36, 0x42b40000    # 90.0f

    const/16 v37, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v32, v3

    move/from16 v33, v5

    move/from16 v34, v4

    move-object/from16 v38, v8

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v8, v29

    add-float/2addr v9, v6

    add-float v31, v9, v1

    mul-float v27, v27, v2

    sub-float v9, v2, v27

    sub-float/2addr v9, v7

    mul-float v26, v26, v2

    div-float v8, v8, v29

    sub-float v8, v26, v8

    add-float v33, v8, v1

    add-float v27, v2, v27

    sub-float v8, v27, v7

    const/high16 v35, 0x43340000    # 180.0f

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v9

    move/from16 v34, v8

    move-object/from16 v38, v10

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v2

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v10, v21, v10

    add-float v33, v10, v1

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v10, v29

    sub-float v10, v2, v10

    add-float v35, v10, v1

    mul-float v20, v20, v2

    sub-float v10, v20, v7

    const/high16 v37, 0x43870000    # 270.0f

    const/high16 v38, 0x42b40000    # 90.0f

    const/16 v39, 0x0

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v34, v9

    move/from16 v36, v10

    move-object/from16 v40, v6

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v25, v25, v2

    add-float v6, v25, v1

    mul-float v19, v19, v2

    sub-float v19, v2, v19

    sub-float v19, v19, v7

    sget v20, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v20, v20, v29

    sub-float v20, v2, v20

    add-float v34, v20, v1

    sub-float v20, v2, v7

    const/16 v36, 0x0

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v6

    move/from16 v33, v19

    move/from16 v35, v20

    move-object/from16 v39, v11

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v2

    add-float v11, v18, v1

    mul-float v17, v17, v2

    sub-float v17, v2, v17

    sub-float v17, v17, v7

    mul-float v24, v24, v2

    add-float v24, v24, v1

    const/high16 v40, 0x42b40000    # 90.0f

    const/high16 v41, 0x42b40000    # 90.0f

    const/16 v42, 0x0

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v35, p1

    move/from16 v36, v11

    move/from16 v37, v17

    move/from16 v38, v24

    move/from16 v39, v20

    move-object/from16 v43, v12

    invoke-virtual/range {v35 .. v43}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v23, v23, v2

    sub-float v12, v2, v23

    sub-float/2addr v12, v7

    mul-float v16, v16, v2

    add-float v16, v16, v1

    mul-float/2addr v15, v2

    sub-float v15, v2, v15

    sub-float/2addr v15, v7

    const/high16 v36, 0x43340000    # 180.0f

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v16

    move/from16 v35, v15

    move-object/from16 v39, v13

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v14, v2

    add-float v13, v14, v1

    const v14, 0x3f439581    # 0.764f

    mul-float/2addr v14, v2

    add-float v23, v14, v1

    mul-float v22, v22, v2

    sub-float v22, v2, v22

    sub-float v22, v22, v7

    const/high16 v36, 0x43870000    # 270.0f

    move/from16 v25, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v13

    move/from16 v34, v23

    move/from16 v35, v22

    move-object/from16 v39, v15

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v15, 0x3f31f8a1    # 0.6952f

    mul-float/2addr v15, v2

    add-float/2addr v15, v1

    const v27, 0x3f490ff9    # 0.7854f

    mul-float v27, v27, v2

    sub-float v27, v27, v7

    const v28, 0x3f5aacda    # 0.8542f

    mul-float v28, v28, v2

    sub-float v28, v28, v7

    const/16 v36, 0x0

    move/from16 v44, v13

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v15

    move/from16 v33, v27

    move/from16 v35, v28

    move-object/from16 v39, v13

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v13, 0x3f3559b4    # 0.7084f

    mul-float/2addr v13, v2

    add-float/2addr v13, v1

    const v31, 0x3f4fcb92    # 0.8117f

    mul-float v31, v31, v2

    sub-float v7, v31, v7

    const v31, 0x3f403afb    # 0.7509f

    mul-float v45, v2, v31

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v31, v45, v31

    add-float v34, v31, v1

    const/high16 v36, 0x42b40000    # 90.0f

    move/from16 v46, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v13

    move/from16 v33, v7

    move-object/from16 v39, v15

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v31, v15, v29

    const/16 v30, 0x0

    add-float v31, v31, v30

    add-float v33, v31, v1

    div-float v31, v15, v29

    sub-float v34, v20, v31

    add-float v31, v14, v15

    add-float v35, v31, v1

    div-float v15, v15, v29

    sub-float v15, v20, v15

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v36, v15, v31

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move-object/from16 v37, v15

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v31, v15, v29

    sub-float v31, v18, v31

    sget v32, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v31, v31, v32

    add-float v33, v31, v1

    div-float v15, v15, v29

    sub-float v15, v18, v15

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v15, v15, v31

    sub-float v15, v15, v32

    add-float v35, v15, v1

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v34, v9

    move/from16 v36, v20

    move-object/from16 v37, v15

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v31, v18, v15

    add-float v33, v31, v1

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v32, v31, v29

    sub-float v32, v12, v32

    sub-float v34, v32, v15

    div-float v32, v31, v29

    sub-float v32, v2, v32

    sub-float v32, v32, v15

    add-float v35, v32, v1

    div-float v31, v31, v29

    sub-float v31, v12, v31

    sget v32, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v31, v31, v32

    sub-float v36, v31, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move-object/from16 v37, v15

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v31, v15, v29

    sub-float v31, v14, v31

    add-float v36, v31, v1

    div-float v15, v15, v29

    sub-float v15, v14, v15

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v15, v15, v31

    add-float v38, v15, v1

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v35, p1

    move/from16 v37, v12

    move/from16 v39, v20

    move-object/from16 v40, v15

    invoke-virtual/range {v35 .. v40}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v31, v15, v29

    sub-float v33, v28, v31

    div-float v15, v15, v29

    sub-float v15, v28, v15

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v35, v15, v31

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v11

    move/from16 v34, v23

    move-object/from16 v36, v15

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v15, v15, v29

    const/16 v30, 0x0

    add-float v15, v15, v30

    add-float v33, v15, v1

    const/high16 v37, 0x42b40000    # 90.0f

    const/high16 v38, 0x42b40000    # 90.0f

    const/16 v39, 0x0

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v34, v3

    move/from16 v35, v5

    move/from16 v36, v4

    move-object/from16 v40, v15

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v29

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v33, v4, v1

    div-float v3, v3, v29

    sub-float v26, v26, v3

    add-float v35, v26, v1

    const/high16 v37, 0x43340000    # 180.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v34, v9

    move/from16 v36, v8

    move-object/from16 v40, v3

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v21, v21, v3

    add-float v33, v21, v1

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v3, v29

    sub-float v3, v2, v3

    add-float v35, v3, v1

    const/high16 v37, 0x43870000    # 270.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v36, v10

    move-object/from16 v40, v3

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v3, v29

    sub-float v3, v2, v3

    add-float v34, v3, v1

    const/16 v36, 0x0

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v6

    move/from16 v33, v19

    move/from16 v35, v20

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v40, 0x42b40000    # 90.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v35, p1

    move/from16 v36, v11

    move/from16 v37, v17

    move/from16 v38, v24

    move/from16 v39, v20

    move-object/from16 v43, v3

    invoke-virtual/range {v35 .. v43}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x43340000    # 180.0f

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v16

    move/from16 v35, v25

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x43870000    # 270.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v44

    move/from16 v34, v23

    move/from16 v35, v22

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v36, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v46

    move/from16 v33, v27

    move/from16 v35, v28

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    add-float v34, v45, v1

    const/high16 v36, 0x42b40000    # 90.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v13

    move/from16 v33, v7

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v29

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v22, v4, v1

    div-float v4, v3, v29

    sub-float v23, v20, v4

    add-float v4, v14, v3

    add-float v24, v4, v1

    div-float v3, v3, v29

    add-float v25, v20, v3

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, p1

    move-object/from16 v26, v3

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v29

    sub-float v4, v18, v4

    add-float v33, v4, v1

    div-float v3, v3, v29

    add-float v3, v18, v3

    add-float v35, v3, v1

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v34, v9

    move/from16 v36, v20

    move-object/from16 v37, v3

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v18, v18, v3

    add-float v5, v18, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v6, v4, v29

    sub-float v6, v12, v6

    div-float v7, v4, v29

    sub-float/2addr v2, v7

    sub-float/2addr v2, v3

    add-float v7, v2, v1

    div-float v4, v4, v29

    add-float v8, v12, v4

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v29

    sub-float v3, v14, v3

    add-float v36, v3, v1

    div-float v2, v2, v29

    add-float/2addr v2, v14

    add-float v38, v2, v1

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v35, p1

    move/from16 v37, v12

    move/from16 v39, v20

    move-object/from16 v40, v2

    invoke-virtual/range {v35 .. v40}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v29

    sub-float v33, v28, v3

    div-float v3, v2, v29

    sub-float/2addr v14, v3

    add-float v34, v14, v1

    div-float v2, v2, v29

    add-float v35, v28, v2

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move/from16 v32, v11

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_2
    if-eq v4, v2, :cond_7

    if-ne v4, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz v4, :cond_4

    const/4 v1, 0x4

    if-ne v4, v1, :cond_8

    :cond_4
    if-nez v4, :cond_5

    const v1, 0x3db43958    # 0.088f

    mul-float v8, v7, v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    if-ne v4, v1, :cond_6

    const v1, 0x3e439581    # 0.191f

    mul-float v8, v7, v1

    sub-float/2addr v3, v7

    div-float v1, v3, v29

    move v2, v1

    move v3, v7

    move v1, v8

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v8

    const/4 v2, 0x0

    :goto_3
    mul-float v13, v3, v29

    div-float v14, v13, v28

    sub-float v4, v3, v14

    add-float v15, v4, v2

    add-float v16, v14, v1

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v4, v29

    sub-float v4, v3, v4

    add-float v8, v4, v2

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v1

    move v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v4, v29

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v6, v4, v2

    sub-float/2addr v13, v14

    add-float/2addr v13, v1

    div-float v4, v3, v28

    sub-float v14, v3, v4

    mul-float v17, v14, v29

    add-float v8, v17, v2

    const/high16 v9, 0x43340000    # 180.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v1

    move v7, v13

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v26, v26, v3

    div-float v4, v26, v28

    mul-float v27, v27, v3

    sub-float v5, v4, v27

    add-float v18, v5, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v5, v5, v29

    const/4 v6, 0x0

    add-float/2addr v5, v6

    add-float v33, v5, v2

    add-float v19, v27, v1

    sub-float v26, v26, v4

    add-float v35, v26, v2

    const/high16 v36, 0x43870000    # 270.0f

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v18

    move/from16 v34, v19

    move-object/from16 v39, v4

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v4, 0x3f435a86    # 0.7631f

    mul-float/2addr v4, v3

    div-float v4, v4, v28

    const v5, 0x3e149518    # 0.1451f

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    add-float v20, v4, v1

    const v4, 0x3e71c433    # 0.2361f

    mul-float/2addr v4, v3

    div-float v5, v4, v28

    sub-float/2addr v4, v5

    add-float v21, v4, v2

    add-float v43, v14, v2

    const/16 v39, 0x0

    const/high16 v40, 0x42b40000    # 90.0f

    const/16 v41, 0x0

    iget-object v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v34, p1

    move/from16 v35, v20

    move/from16 v36, v21

    move/from16 v37, v19

    move/from16 v38, v43

    move-object/from16 v42, v4

    invoke-virtual/range {v34 .. v42}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    div-float v27, v27, v28

    add-float v27, v27, v1

    mul-float v25, v25, v3

    div-float v4, v25, v28

    sub-float v25, v25, v4

    add-float v25, v25, v2

    const v4, 0x3ef1c433    # 0.4722f

    mul-float/2addr v4, v3

    const v5, 0x3e154c98    # 0.1458f

    mul-float v31, v3, v5

    div-float v5, v31, v28

    add-float/2addr v4, v5

    add-float v44, v4, v1

    const/high16 v9, 0x42b40000    # 90.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v5, v27

    move/from16 v6, v25

    move/from16 v7, v44

    move/from16 v8, v43

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v4, 0x3f1e3bcd    # 0.6181f

    mul-float/2addr v4, v3

    div-float v5, v4, v28

    sub-float v45, v4, v5

    add-float v46, v45, v2

    const v4, 0x3ea710cb    # 0.3263f

    mul-float/2addr v4, v3

    div-float v4, v4, v28

    const v5, 0x3e9559b4    # 0.2917f

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    add-float v47, v4, v1

    mul-float v24, v24, v3

    div-float v4, v24, v28

    sub-float v24, v24, v4

    add-float v24, v24, v2

    const/high16 v9, 0x43340000    # 180.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v5, v27

    move/from16 v6, v46

    move/from16 v7, v47

    move/from16 v8, v24

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v4, 0x3f0fec57    # 0.5622f

    mul-float/2addr v4, v3

    div-float v4, v4, v28

    const v5, 0x3d648e8a    # 0.0558f

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    add-float v48, v4, v1

    const v4, 0x3ec3a29c    # 0.3821f

    mul-float/2addr v4, v3

    div-float v4, v4, v28

    mul-float v23, v23, v3

    add-float v4, v4, v23

    add-float v23, v4, v1

    const v4, 0x3f4c56d6    # 0.7982f

    mul-float/2addr v4, v3

    div-float v5, v4, v28

    sub-float/2addr v4, v5

    add-float v49, v4, v2

    const/high16 v9, 0x43870000    # 270.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v5, v48

    move/from16 v7, v23

    move/from16 v8, v49

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v4, 0x3efc9eed    # 0.4934f

    mul-float/2addr v4, v3

    div-float v4, v4, v28

    mul-float v22, v22, v3

    add-float v4, v4, v22

    add-float v22, v4, v1

    const v4, 0x3f270a3d    # 0.6525f

    mul-float/2addr v4, v3

    div-float v5, v4, v28

    sub-float/2addr v4, v5

    add-float v50, v4, v2

    const v4, 0x3f438866    # 0.7638f

    mul-float/2addr v4, v3

    div-float v5, v4, v28

    sub-float v51, v4, v5

    add-float v52, v51, v2

    const/16 v37, 0x0

    const/high16 v38, 0x42b40000    # 90.0f

    const/16 v39, 0x0

    iget-object v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v33, v22

    move/from16 v34, v50

    move/from16 v35, v23

    move/from16 v36, v52

    move-object/from16 v40, v4

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v4, 0x3ef1b717    # 0.4721f

    mul-float/2addr v4, v3

    div-float v4, v4, v28

    add-float v4, v4, v31

    add-float v53, v4, v1

    const v4, 0x3f31eb85    # 0.695f

    mul-float/2addr v4, v3

    div-float v5, v4, v28

    sub-float/2addr v4, v5

    add-float v54, v4, v2

    const v4, 0x3ece7d56    # 0.4033f

    mul-float/2addr v4, v3

    div-float v4, v4, v28

    const v5, 0x3e5bc01a    # 0.2146f

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    add-float v28, v4, v1

    const/high16 v9, 0x42b40000    # 90.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v5, v53

    move/from16 v6, v54

    move/from16 v7, v28

    move/from16 v8, v52

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v5, v4, v29

    sub-float v5, v14, v5

    add-float v6, v5, v2

    add-float v7, v23, v4

    div-float v4, v4, v29

    sub-float v4, v14, v4

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v4, v5

    add-float v8, v4, v2

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v5, v4, v29

    sub-float v5, v27, v5

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v8, v5, v6

    div-float v5, v4, v29

    const/4 v7, 0x0

    add-float/2addr v5, v7

    add-float v9, v5, v2

    div-float v4, v4, v29

    sub-float v4, v27, v4

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v4, v5

    sub-float v10, v4, v6

    sub-float v4, v14, v6

    add-float v11, v4, v2

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v6, v27, v4

    div-float v5, v4, v29

    sub-float v5, v45, v5

    add-float v7, v5, v2

    div-float v4, v4, v29

    sub-float v4, v45, v4

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v4, v5

    add-float v9, v4, v2

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move/from16 v8, v19

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v5, v4, v29

    sub-float v5, v23, v5

    add-float v6, v45, v4

    add-float/2addr v6, v2

    div-float v4, v4, v29

    sub-float v4, v23, v4

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v4

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v8, v43

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v6, v27, v4

    div-float v5, v4, v29

    sub-float v5, v51, v5

    add-float v7, v5, v2

    div-float v4, v4, v29

    sub-float v4, v51, v4

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v4, v5

    add-float v9, v4, v2

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move/from16 v8, v23

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v4, v29

    sub-float/2addr v3, v4

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float/2addr v3, v4

    add-float v8, v3, v2

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v1

    move v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v3, v29

    const/4 v4, 0x0

    add-float/2addr v3, v4

    add-float v6, v3, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v17, v17, v3

    add-float v8, v17, v2

    const/high16 v9, 0x43340000    # 180.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v13

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v3, v29

    const/4 v4, 0x0

    add-float/2addr v3, v4

    add-float v33, v3, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v26, v26, v3

    add-float v35, v26, v2

    const/high16 v36, 0x43870000    # 270.0f

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v18

    move/from16 v34, v19

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v39, 0x0

    const/high16 v40, 0x42b40000    # 90.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v34, p1

    move/from16 v35, v20

    move/from16 v36, v21

    move/from16 v37, v19

    move/from16 v38, v43

    move-object/from16 v42, v3

    invoke-virtual/range {v34 .. v42}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v9, 0x42b40000    # 90.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move/from16 v5, v27

    move/from16 v6, v25

    move/from16 v7, v44

    move/from16 v8, v43

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v9, 0x43340000    # 180.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v6, v46

    move/from16 v7, v47

    move/from16 v8, v24

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v9, 0x43870000    # 270.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v5, v48

    move/from16 v7, v23

    move/from16 v8, v49

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v37, 0x0

    const/high16 v38, 0x42b40000    # 90.0f

    const/16 v39, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v33, v22

    move/from16 v34, v50

    move/from16 v35, v23

    move/from16 v36, v52

    move-object/from16 v40, v3

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v9, 0x42b40000    # 90.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v5, v53

    move/from16 v6, v54

    move/from16 v7, v28

    move/from16 v8, v52

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v4, v3, v29

    sub-float v4, v14, v4

    add-float v6, v4, v2

    add-float v7, v23, v3

    div-float v3, v3, v29

    add-float/2addr v3, v14

    add-float v8, v3, v2

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    sub-float v5, v27, v3

    div-float v3, v1, v29

    const/4 v4, 0x0

    add-float/2addr v3, v4

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float/2addr v3, v4

    add-float v6, v3, v2

    div-float v3, v1, v29

    add-float v7, v27, v3

    div-float v1, v1, v29

    sub-float/2addr v14, v1

    add-float/2addr v14, v4

    add-float v8, v14, v2

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    add-float v5, v27, v3

    div-float v3, v1, v29

    sub-float v3, v45, v3

    add-float v6, v3, v2

    div-float v3, v1, v29

    sub-float v7, v19, v3

    div-float v1, v1, v29

    add-float v1, v45, v1

    add-float v8, v1, v2

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    sub-float v5, v23, v3

    div-float v3, v1, v29

    add-float v45, v45, v3

    add-float v6, v45, v2

    div-float v1, v1, v29

    add-float v7, v23, v1

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move/from16 v8, v43

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    add-float v5, v27, v3

    div-float v3, v1, v29

    sub-float v3, v51, v3

    add-float v6, v3, v2

    div-float v3, v1, v29

    sub-float v7, v23, v3

    div-float v1, v1, v29

    add-float v51, v51, v1

    add-float v8, v51, v2

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_7
    :goto_4
    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v29

    const/4 v2, 0x0

    add-float/2addr v1, v2

    add-float v32, v1, v9

    sub-float v48, v2, v8

    mul-float v1, v7, v29

    add-float v49, v1, v9

    sub-float v50, v1, v8

    const/high16 v36, 0x42b40000    # 90.0f

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v33, v48

    move/from16 v34, v49

    move/from16 v35, v50

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v29

    const/4 v3, 0x0

    add-float/2addr v2, v3

    add-float v32, v2, v9

    mul-float v27, v27, v7

    sub-float v2, v7, v27

    sub-float/2addr v2, v8

    mul-float v26, v26, v7

    add-float v26, v26, v9

    div-float v1, v1, v29

    sub-float v34, v26, v1

    add-float v27, v7, v27

    sub-float v1, v27, v8

    const/high16 v36, 0x43340000    # 180.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v33, v2

    move/from16 v35, v1

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v7

    add-float v21, v21, v9

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v52, v21, v3

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v3, v29

    sub-float v3, v7, v3

    add-float v54, v3, v9

    mul-float v20, v20, v7

    sub-float v3, v20, v8

    const/high16 v56, 0x43870000    # 270.0f

    const/high16 v57, 0x42b40000    # 90.0f

    const/16 v58, 0x0

    iget-object v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v51, p1

    move/from16 v53, v2

    move/from16 v55, v3

    move-object/from16 v59, v4

    invoke-virtual/range {v51 .. v59}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v25, v25, v7

    add-float v4, v25, v9

    mul-float v19, v19, v7

    sub-float v5, v7, v19

    sub-float/2addr v5, v8

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v6, v6, v29

    sub-float v6, v7, v6

    add-float v34, v6, v9

    sub-float v6, v7, v8

    const/16 v36, 0x0

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v35, v6

    move-object/from16 v39, v10

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v7

    add-float v10, v18, v9

    mul-float v17, v17, v7

    sub-float v11, v7, v17

    sub-float/2addr v11, v8

    mul-float v24, v24, v7

    add-float v12, v24, v9

    const/high16 v56, 0x42b40000    # 90.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v52, v10

    move/from16 v53, v11

    move/from16 v54, v12

    move/from16 v55, v6

    move-object/from16 v59, v13

    invoke-virtual/range {v51 .. v59}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v23, v23, v7

    sub-float v13, v7, v23

    sub-float/2addr v13, v8

    mul-float v16, v16, v7

    add-float v16, v16, v9

    mul-float/2addr v15, v7

    sub-float v15, v7, v15

    sub-float/2addr v15, v8

    const/high16 v36, 0x43340000    # 180.0f

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v10

    move/from16 v33, v13

    move/from16 v34, v16

    move/from16 v35, v15

    move-object/from16 v39, v14

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v14, 0x3f271759    # 0.6527f

    mul-float/2addr v14, v7

    add-float/2addr v14, v9

    const v17, 0x3f439581    # 0.764f

    mul-float v17, v17, v7

    add-float v17, v17, v9

    mul-float v22, v22, v7

    sub-float v18, v7, v22

    sub-float v18, v18, v8

    const/high16 v36, 0x43870000    # 270.0f

    move/from16 v19, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v14

    move/from16 v34, v17

    move/from16 v35, v18

    move-object/from16 v39, v15

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v15, 0x3f31f8a1    # 0.6952f

    mul-float/2addr v15, v7

    add-float/2addr v15, v9

    const v20, 0x3f490ff9    # 0.7854f

    mul-float v20, v20, v7

    sub-float v20, v20, v8

    const v22, 0x3f5aacda    # 0.8542f

    mul-float v22, v22, v7

    sub-float v22, v22, v8

    const/16 v36, 0x0

    move/from16 v23, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v15

    move/from16 v33, v20

    move/from16 v35, v22

    move-object/from16 v39, v14

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v14, 0x3f3559b4    # 0.7084f

    mul-float/2addr v14, v7

    add-float/2addr v14, v9

    const v24, 0x3f4fcb92    # 0.8117f

    mul-float v24, v24, v7

    sub-float v8, v24, v8

    const v24, 0x3f403afb    # 0.7509f

    mul-float v24, v24, v7

    add-float v24, v24, v9

    const/high16 v36, 0x42b40000    # 90.0f

    move/from16 v25, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v14

    move/from16 v33, v8

    move/from16 v34, v24

    move-object/from16 v39, v15

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v15, 0x0

    add-float v27, v9, v15

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v28, v15, v29

    add-float v32, v27, v28

    div-float v27, v15, v29

    sub-float v27, v6, v27

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v33, v27, v28

    add-float v34, v17, v15

    div-float v15, v15, v29

    sub-float v15, v6, v15

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v15, v15, v27

    sub-float v35, v15, v28

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v36, v15

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v27, v15, v29

    sub-float v27, v10, v27

    sget v28, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v34, v27, v28

    div-float v15, v15, v29

    sub-float v15, v10, v15

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v15, v15, v27

    sub-float v36, v15, v28

    sub-float v37, v6, v28

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v33, p1

    move/from16 v35, v2

    move-object/from16 v38, v15

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v32, v10, v15

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v28, v27, v29

    sub-float v28, v13, v28

    sub-float v33, v28, v15

    add-float v28, v7, v9

    div-float v31, v27, v29

    sub-float v31, v28, v31

    sub-float v34, v31, v15

    div-float v27, v27, v29

    sub-float v27, v13, v27

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v27, v27, v31

    sub-float v35, v27, v15

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move-object/from16 v36, v15

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v27, v15, v29

    sub-float v52, v17, v27

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v53, v13, v27

    div-float v15, v15, v29

    sub-float v15, v17, v15

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v54, v15, v27

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v56, v15

    invoke-virtual/range {v51 .. v56}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v27, v15, v29

    sub-float v33, v22, v27

    div-float v15, v15, v29

    sub-float v15, v22, v15

    sget v27, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v35, v15, v27

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move/from16 v32, v10

    move/from16 v34, v17

    move-object/from16 v36, v15

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v15, v15, v29

    const/16 v27, 0x0

    add-float v15, v15, v27

    add-float v47, v15, v9

    const/high16 v51, 0x42b40000    # 90.0f

    const/high16 v52, 0x42b40000    # 90.0f

    const/16 v53, 0x0

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v46, p1

    move-object/from16 v54, v15

    invoke-virtual/range {v46 .. v54}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v27, v15, v29

    const/16 v30, 0x0

    add-float v27, v27, v30

    add-float v52, v27, v9

    div-float v15, v15, v29

    sub-float v54, v26, v15

    const/high16 v56, 0x43340000    # 180.0f

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v51, p1

    move/from16 v53, v2

    move/from16 v55, v1

    move-object/from16 v59, v15

    invoke-virtual/range {v51 .. v59}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v52, v21, v1

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v29

    sub-float v1, v7, v1

    add-float v54, v1, v9

    const/high16 v56, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v55, v3

    move-object/from16 v59, v1

    invoke-virtual/range {v51 .. v59}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v29

    sub-float/2addr v7, v1

    add-float v34, v7, v9

    const/16 v36, 0x0

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v35, v6

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v56, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v52, v10

    move/from16 v53, v11

    move/from16 v54, v12

    move/from16 v55, v6

    move-object/from16 v59, v1

    invoke-virtual/range {v51 .. v59}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v10

    move/from16 v33, v13

    move/from16 v34, v16

    move/from16 v35, v19

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v23

    move/from16 v34, v17

    move/from16 v35, v18

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v36, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v25

    move/from16 v33, v20

    move/from16 v35, v22

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v14

    move/from16 v33, v8

    move/from16 v34, v24

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    const/4 v4, 0x0

    add-float/2addr v3, v4

    add-float v31, v3, v9

    div-float v3, v1, v29

    sub-float v32, v6, v3

    add-float v33, v17, v1

    div-float v1, v1, v29

    add-float v34, v6, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move-object/from16 v35, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    sub-float v31, v10, v3

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v32, v2, v3

    div-float v1, v1, v29

    add-float v33, v10, v1

    sub-float v34, v6, v3

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v35, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v31, v10, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v29

    sub-float v32, v13, v3

    div-float v3, v2, v29

    sub-float v28, v28, v3

    sub-float v33, v28, v1

    div-float v2, v2, v29

    add-float v34, v13, v2

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v35, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v29

    sub-float v52, v17, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v53, v13, v2

    div-float v1, v1, v29

    add-float v54, v17, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v56, v1

    invoke-virtual/range {v51 .. v56}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v29

    sub-float v33, v22, v2

    div-float v2, v1, v29

    sub-float v34, v17, v2

    div-float v1, v1, v29

    add-float v35, v22, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v10

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private RightGoldenSpiral(Landroid/graphics/Canvas;)V
    .locals 53

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v2, v2

    int-to-float v4, v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v1, v5, :cond_0

    const v7, 0x3f3eb852    # 0.745f

    mul-float/2addr v7, v2

    const v8, 0x3e03126f    # 0.128f

    mul-float/2addr v8, v2

    move v9, v8

    move v8, v6

    goto :goto_0

    :cond_0
    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v2

    move v9, v6

    move v8, v7

    move v7, v2

    :goto_0
    const/4 v10, 0x3

    const v14, 0x3eb1de6a    # 0.3474f

    const v15, 0x3e71a9fc    # 0.236f

    const v16, 0x3d6425af    # 0.0557f

    const v17, 0x3e718fc5    # 0.2359f

    const v18, 0x3e4e703b    # 0.2016f

    const v19, 0x3ec37b4a    # 0.3818f

    const v20, 0x3e954c98    # 0.2916f

    const v21, 0x3db8bac7    # 0.0902f

    const v22, 0x3ef1a9fc    # 0.472f

    const v23, 0x3f92b021    # 1.146f

    const v24, 0x3f439581    # 0.764f

    const v25, -0x418e5604    # -0.236f

    const v26, 0x3f5aacda    # 0.8542f

    const v27, 0x3f1e353f    # 0.618f

    const v28, 0x3fcf1aa0    # 1.618f

    const/high16 v29, 0x40000000    # 2.0f

    if-ne v1, v10, :cond_2

    div-float v1, v4, v7

    float-to-double v8, v1

    const-wide v30, 0x3ff9e353f7ced917L    # 1.618

    cmpg-double v1, v8, v30

    if-gez v1, :cond_1

    const v1, 0x3ec3126f    # 0.381f

    mul-float/2addr v7, v1

    div-float v1, v4, v28

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    mul-float v2, v2, v28

    div-float/2addr v2, v4

    sub-float/2addr v2, v3

    div-float v2, v2, v29

    mul-float/2addr v2, v1

    move/from16 v52, v7

    move v7, v1

    move/from16 v1, v52

    goto :goto_1

    :cond_1
    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v7

    move v2, v6

    :goto_1
    sub-float v3, v6, v7

    add-float/2addr v3, v2

    sub-float v4, v6, v1

    sget v5, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v5, v5, v29

    sub-float v5, v7, v5

    add-float v33, v5, v2

    mul-float v5, v7, v29

    sub-float/2addr v5, v1

    const/16 v35, 0x0

    const/high16 v36, 0x42b40000    # 90.0f

    const/16 v37, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v5

    move-object/from16 v38, v8

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v25, v25, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v8, v29

    add-float v25, v25, v9

    add-float v31, v25, v2

    mul-float v27, v27, v7

    sub-float v9, v7, v27

    sub-float/2addr v9, v1

    div-float v8, v8, v29

    sub-float v8, v7, v8

    add-float v33, v8, v2

    add-float v27, v7, v27

    sub-float v8, v27, v1

    const/high16 v35, 0x43870000    # 270.0f

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v9

    move/from16 v34, v8

    move-object/from16 v38, v10

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v10, v29

    add-float/2addr v10, v6

    add-float v33, v10, v2

    mul-float v24, v24, v7

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v10, v24, v10

    add-float v35, v10, v2

    mul-float v23, v23, v7

    sub-float v10, v23, v1

    const/high16 v37, 0x43340000    # 180.0f

    const/high16 v38, 0x42b40000    # 90.0f

    const/16 v39, 0x0

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v34, v9

    move/from16 v36, v10

    move-object/from16 v40, v11

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v11, v11, v29

    add-float/2addr v11, v6

    add-float v32, v11, v2

    mul-float v22, v22, v7

    sub-float v11, v7, v22

    sub-float/2addr v11, v1

    add-float v22, v22, v2

    sub-float v23, v7, v1

    const/high16 v36, 0x42b40000    # 90.0f

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v33, v11

    move/from16 v34, v22

    move/from16 v35, v23

    move-object/from16 v39, v6

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v7

    add-float v6, v21, v2

    mul-float v20, v20, v7

    sub-float v21, v7, v20

    sub-float v21, v21, v1

    mul-float v19, v19, v7

    add-float v25, v19, v2

    const/16 v38, 0x0

    const/high16 v39, 0x42b40000    # 90.0f

    const/16 v40, 0x0

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v33, p1

    move/from16 v34, v6

    move/from16 v35, v21

    move/from16 v36, v25

    move/from16 v37, v23

    move-object/from16 v41, v12

    invoke-virtual/range {v33 .. v41}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v7

    add-float v12, v18, v2

    mul-float v17, v17, v7

    sub-float v17, v7, v17

    sub-float v17, v17, v1

    mul-float v16, v16, v7

    sub-float v16, v7, v16

    sub-float v16, v16, v1

    const/high16 v36, 0x43870000    # 270.0f

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v12

    move/from16 v33, v17

    move/from16 v34, v25

    move/from16 v35, v16

    move-object/from16 v39, v13

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v15, v7

    add-float v13, v15, v2

    mul-float/2addr v14, v7

    add-float/2addr v14, v2

    const v18, 0x3f6020c5    # 0.8755f

    mul-float v18, v18, v7

    sub-float v18, v18, v1

    const/high16 v36, 0x43340000    # 180.0f

    move/from16 v27, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v13

    move/from16 v34, v14

    move/from16 v35, v18

    move-object/from16 v39, v12

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v12, 0x3f490ff9    # 0.7854f

    mul-float/2addr v12, v7

    sub-float/2addr v12, v1

    const v28, 0x3e9c0ebf    # 0.3048f

    mul-float v28, v28, v7

    add-float v28, v28, v2

    mul-float v26, v26, v7

    sub-float v26, v26, v1

    const/high16 v36, 0x42b40000    # 90.0f

    move/from16 v42, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v33, v12

    move/from16 v34, v28

    move/from16 v35, v26

    move-object/from16 v39, v14

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v14, 0x3e7f1412    # 0.2491f

    mul-float/2addr v14, v7

    add-float/2addr v14, v2

    const v30, 0x3f4fcb92    # 0.8117f

    mul-float v30, v30, v7

    sub-float v1, v30, v1

    add-float v20, v20, v2

    const/16 v35, 0x0

    const/16 v37, 0x0

    move/from16 v43, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v31, v14

    move/from16 v32, v1

    move/from16 v33, v20

    move/from16 v34, v26

    move-object/from16 v38, v12

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v12, v29

    sub-float v30, v23, v30

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v33, v30, v31

    div-float v30, v12, v29

    sub-float v30, v7, v30

    add-float v34, v30, v2

    div-float v12, v12, v29

    add-float v12, v23, v12

    add-float v35, v12, v31

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v13

    move-object/from16 v36, v12

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v12, v29

    sub-float v30, v19, v30

    add-float v33, v30, v2

    div-float v12, v12, v29

    sub-float v12, v19, v12

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v12, v12, v30

    add-float v35, v12, v2

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v34, v9

    move/from16 v36, v23

    move-object/from16 v37, v12

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    const/16 v30, 0x0

    add-float v31, v12, v30

    add-float v32, v31, v2

    div-float v30, v12, v29

    sub-float v30, v17, v30

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v33, v30, v31

    div-float v12, v12, v29

    sub-float v12, v17, v12

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v12, v12, v30

    sub-float v35, v12, v31

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v34, v25

    move-object/from16 v36, v12

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v12, v29

    sub-float v30, v15, v30

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v30, v30, v31

    add-float v34, v30, v2

    div-float v12, v12, v29

    sub-float v12, v15, v12

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v12, v12, v30

    sub-float v12, v12, v31

    add-float v36, v12, v2

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v33, p1

    move/from16 v35, v17

    move/from16 v37, v23

    move-object/from16 v38, v12

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v12, v29

    sub-float v33, v26, v30

    div-float v12, v12, v29

    sub-float v12, v26, v12

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v35, v12, v30

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v13

    move/from16 v34, v25

    move-object/from16 v36, v12

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v12, v12, v29

    sub-float v12, v7, v12

    add-float v33, v12, v2

    const/16 v35, 0x0

    const/high16 v36, 0x42b40000    # 90.0f

    const/16 v37, 0x0

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v5

    move-object/from16 v38, v12

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    sub-float v4, v3, v15

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v5, v3, v29

    add-float/2addr v4, v5

    add-float v33, v4, v2

    div-float v3, v3, v29

    sub-float v3, v7, v3

    add-float v35, v3, v2

    const/high16 v37, 0x43870000    # 270.0f

    const/high16 v38, 0x42b40000    # 90.0f

    const/16 v39, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v34, v9

    move/from16 v36, v8

    move-object/from16 v40, v3

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v3, v29

    const/4 v4, 0x0

    add-float/2addr v3, v4

    add-float v33, v3, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v24, v24, v3

    add-float v35, v24, v2

    const/high16 v37, 0x43340000    # 180.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v36, v10

    move-object/from16 v40, v3

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v3, v29

    const/4 v4, 0x0

    add-float/2addr v3, v4

    add-float v34, v3, v2

    const/high16 v39, 0x42b40000    # 90.0f

    const/16 v40, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v33, p1

    move/from16 v35, v11

    move/from16 v36, v22

    move/from16 v37, v23

    move-object/from16 v41, v3

    invoke-virtual/range {v33 .. v41}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v38, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v34, v6

    move/from16 v35, v21

    move/from16 v36, v25

    move-object/from16 v41, v3

    invoke-virtual/range {v33 .. v41}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x43870000    # 270.0f

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v27

    move/from16 v33, v17

    move/from16 v34, v25

    move/from16 v35, v16

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x43340000    # 180.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v13

    move/from16 v34, v42

    move/from16 v35, v18

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x42b40000    # 90.0f

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v33, v43

    move/from16 v34, v28

    move/from16 v35, v26

    move-object/from16 v39, v3

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v35, 0x0

    const/16 v37, 0x0

    iget-object v3, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v31, v14

    move/from16 v32, v1

    move/from16 v33, v20

    move/from16 v34, v26

    move-object/from16 v38, v3

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    sub-float v33, v23, v3

    div-float v3, v1, v29

    sub-float/2addr v7, v3

    add-float v34, v7, v2

    div-float v1, v1, v29

    add-float v35, v23, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v13

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    sub-float v3, v19, v3

    add-float v33, v3, v2

    div-float v1, v1, v29

    add-float v19, v19, v1

    add-float v35, v19, v2

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v34, v9

    move/from16 v36, v23

    move-object/from16 v37, v1

    invoke-virtual/range {v32 .. v37}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    const/4 v4, 0x0

    add-float/2addr v3, v4

    add-float v32, v3, v2

    div-float v3, v1, v29

    sub-float v33, v17, v3

    div-float v1, v1, v29

    add-float v35, v17, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move/from16 v34, v25

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    sub-float v3, v15, v3

    add-float v34, v3, v2

    div-float v3, v1, v29

    add-float v35, v17, v3

    div-float v1, v1, v29

    add-float/2addr v1, v15

    add-float v36, v1, v2

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v33, p1

    move/from16 v37, v23

    move-object/from16 v38, v1

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    add-float/2addr v15, v3

    add-float v32, v15, v2

    div-float v2, v1, v29

    sub-float v33, v26, v2

    div-float v1, v1, v29

    add-float v35, v26, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move/from16 v34, v25

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_2
    if-eq v1, v3, :cond_7

    if-ne v1, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz v1, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    :cond_4
    if-nez v1, :cond_5

    const v1, 0x3db43958    # 0.088f

    mul-float v8, v7, v1

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const v1, 0x3e439581    # 0.191f

    mul-float v8, v7, v1

    sub-float/2addr v4, v7

    div-float v1, v4, v29

    move v4, v7

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x0

    :goto_3
    neg-float v2, v4

    div-float v2, v2, v28

    add-float/2addr v2, v8

    mul-float v3, v4, v29

    div-float v5, v3, v28

    sub-float v6, v4, v5

    add-float/2addr v6, v1

    div-float v7, v4, v28

    add-float v18, v7, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v29

    sub-float v9, v4, v9

    add-float v13, v9, v1

    const/4 v14, 0x0

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v2

    move v11, v6

    move-object/from16 v17, v12

    move/from16 v12, v18

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    sub-float/2addr v9, v3

    add-float v3, v9, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v29

    const/4 v10, 0x0

    add-float/2addr v9, v10

    add-float v11, v9, v1

    sub-float v7, v4, v7

    mul-float v9, v7, v29

    add-float v19, v9, v1

    const/high16 v14, 0x43870000    # 270.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v3

    move-object/from16 v17, v13

    move/from16 v13, v19

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x40278d50    # 2.618f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    mul-float v10, v4, v28

    sub-float/2addr v9, v10

    add-float v20, v9, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v29

    const/4 v10, 0x0

    add-float/2addr v9, v10

    add-float v32, v9, v1

    const v9, 0x3fb0e560    # 1.382f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    const v10, 0x3ec39581    # 0.382f

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-float v21, v9, v8

    mul-float v27, v27, v4

    div-float v9, v27, v28

    sub-float v27, v27, v9

    mul-float v27, v27, v29

    add-float v34, v27, v1

    const/high16 v35, 0x43340000    # 180.0f

    const/high16 v36, 0x42b40000    # 90.0f

    const/16 v37, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v31, v20

    move/from16 v33, v21

    move-object/from16 v38, v9

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3e71c433    # 0.2361f

    mul-float/2addr v9, v4

    div-float v10, v9, v28

    sub-float/2addr v9, v10

    add-float v22, v9, v1

    const v9, 0x3fed566d    # 1.8542f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    mul-float v26, v26, v4

    sub-float v9, v9, v26

    add-float v23, v9, v8

    add-float v24, v7, v1

    const/high16 v35, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v22

    move/from16 v33, v23

    move/from16 v34, v24

    move-object/from16 v38, v9

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x401e36e3    # 2.4721f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    const v10, 0x3fbc6dc6    # 1.4721f

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-float v25, v9, v8

    const v9, 0x3f072b02    # 0.528f

    mul-float/2addr v9, v4

    div-float v10, v9, v28

    sub-float/2addr v9, v10

    add-float v26, v9, v1

    sub-float/2addr v5, v4

    add-float/2addr v5, v8

    const/4 v14, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v25

    move/from16 v11, v26

    move v12, v5

    move-object/from16 v17, v13

    move/from16 v13, v24

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x4012ab36

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    const v10, 0x3fa5566d    # 1.2917f

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-float v39, v9, v8

    const v9, 0x3f1e3bcd    # 0.6181f

    mul-float/2addr v9, v4

    div-float v10, v9, v28

    sub-float v40, v9, v10

    add-float v41, v40, v1

    const v9, 0x3f68e8a7    # 0.9098f

    mul-float/2addr v9, v4

    div-float v10, v9, v28

    sub-float/2addr v9, v10

    add-float v42, v9, v1

    const/high16 v14, 0x43870000    # 270.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v39

    move/from16 v11, v41

    move-object/from16 v17, v13

    move/from16 v13, v42

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x400f1aa0    # 2.236f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    const v10, 0x3f9e353f    # 1.236f

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-float v43, v9, v8

    const v9, 0x400393de    # 2.0559f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    const v10, 0x3f8727bb    # 1.0559f

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-float v44, v9, v8

    const v9, 0x3f4c56d6    # 0.7982f

    mul-float/2addr v9, v4

    div-float v10, v9, v28

    sub-float/2addr v9, v10

    add-float v45, v9, v1

    const/high16 v14, 0x43340000    # 180.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v43

    move/from16 v12, v44

    move-object/from16 v17, v13

    move/from16 v13, v45

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3f270a3d    # 0.6525f

    mul-float/2addr v9, v4

    div-float v10, v9, v28

    sub-float/2addr v9, v10

    add-float v46, v9, v1

    const v9, 0x4007fb16    # 2.1247f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    const v10, 0x3f8ff62b    # 1.1247f

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-float v47, v9, v8

    const v9, 0x3f438866    # 0.7638f

    mul-float/2addr v9, v4

    div-float v10, v9, v28

    sub-float v48, v9, v10

    add-float v49, v48, v1

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v31, v43

    move/from16 v32, v46

    move/from16 v33, v47

    move/from16 v34, v49

    move-object/from16 v38, v9

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x400dbda5    # 2.2147f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    const v10, 0x3f9b7b4a    # 1.2147f

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-float v50, v9, v8

    const v9, 0x3f31eb85    # 0.695f

    mul-float/2addr v9, v4

    div-float v10, v9, v28

    sub-float/2addr v9, v10

    add-float v51, v9, v1

    const v9, 0x4009566d    # 2.1459f

    mul-float/2addr v9, v4

    div-float v9, v9, v28

    const v10, 0x3f92acda    # 1.1459f

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v14, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v50

    move/from16 v11, v51

    move v12, v8

    move-object/from16 v17, v13

    move/from16 v13, v49

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v9, v29

    sub-float v10, v7, v10

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v10, v11

    add-float v12, v10, v1

    div-float v9, v9, v29

    sub-float v9, v7, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v9, v10

    sub-float/2addr v9, v11

    add-float v13, v9, v1

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v43

    move v11, v12

    move/from16 v12, v18

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v9, v29

    sub-float v10, v5, v10

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v10, v11

    const/4 v10, 0x0

    add-float v12, v9, v10

    add-float v14, v12, v1

    div-float v9, v9, v29

    sub-float v9, v5, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v9, v10

    sub-float v15, v9, v11

    sub-float v9, v7, v11

    add-float v16, v9, v1

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v9, v29

    add-float v12, v20, v10

    div-float v10, v9, v29

    sub-float v10, v40, v10

    add-float v13, v10, v1

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v14, v5, v10

    div-float v9, v9, v29

    sub-float v9, v40, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v9, v10

    add-float v15, v9, v1

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v9, v29

    sub-float v10, v43, v10

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v10, v11

    add-float v12, v40, v9

    add-float/2addr v12, v1

    div-float v9, v9, v29

    sub-float v9, v43, v9

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v9, v13

    sub-float v13, v9, v11

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v12

    move v12, v13

    move/from16 v13, v24

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v10, v43, v9

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v12, v11, v29

    sub-float v12, v48, v12

    sub-float/2addr v12, v9

    add-float/2addr v12, v1

    div-float v11, v11, v29

    sub-float v11, v48, v11

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v11, v13

    sub-float/2addr v11, v9

    add-float v13, v11, v1

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v12

    move v12, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v9, v9, v29

    sub-float/2addr v4, v9

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float/2addr v4, v9

    add-float v13, v4, v1

    const/4 v14, 0x0

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    iget-object v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v2

    move v11, v6

    move/from16 v12, v18

    move-object/from16 v17, v4

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v29

    const/4 v4, 0x0

    add-float/2addr v2, v4

    add-float v11, v2, v1

    const/high16 v14, 0x43870000    # 270.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move v10, v3

    move/from16 v13, v19

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v2, v29

    const/4 v3, 0x0

    add-float/2addr v2, v3

    add-float v32, v2, v1

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v27, v27, v2

    add-float v34, v27, v1

    const/high16 v35, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v31, v20

    move/from16 v33, v21

    move-object/from16 v38, v2

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v35, 0x42b40000    # 90.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v22

    move/from16 v33, v23

    move/from16 v34, v24

    move-object/from16 v38, v2

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v10, v25

    move/from16 v11, v26

    move v12, v5

    move/from16 v13, v24

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v14, 0x43870000    # 270.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v10, v39

    move/from16 v11, v41

    move/from16 v13, v42

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v14, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v10, v43

    move/from16 v12, v44

    move/from16 v13, v45

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v31, v43

    move/from16 v32, v46

    move/from16 v33, v47

    move/from16 v34, v49

    move-object/from16 v38, v2

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v10, v50

    move/from16 v11, v51

    move v12, v8

    move/from16 v13, v49

    move-object/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v29

    sub-float v3, v7, v3

    add-float v12, v3, v1

    div-float v3, v2, v29

    sub-float v13, v18, v3

    div-float v2, v2, v29

    add-float/2addr v2, v7

    add-float v14, v2, v1

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v11, v43

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v29

    sub-float v9, v5, v3

    const/4 v3, 0x0

    add-float v6, v2, v3

    add-float v10, v6, v1

    div-float v3, v2, v29

    add-float v11, v5, v3

    div-float v2, v2, v29

    sub-float/2addr v7, v2

    add-float v12, v7, v1

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v29

    add-float v7, v20, v3

    div-float v3, v2, v29

    sub-float v3, v40, v3

    add-float v8, v3, v1

    div-float v3, v2, v29

    sub-float v9, v5, v3

    div-float v2, v2, v29

    add-float v2, v40, v2

    add-float v10, v2, v1

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v29

    sub-float v10, v43, v3

    div-float v3, v2, v29

    add-float v40, v40, v3

    add-float v11, v40, v1

    div-float v2, v2, v29

    add-float v12, v43, v2

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v13, v24

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v2, v29

    add-float v10, v43, v3

    div-float v3, v2, v29

    sub-float v3, v48, v3

    add-float v11, v3, v1

    div-float v2, v2, v29

    add-float v48, v48, v2

    add-float v13, v48, v1

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move v12, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x0

    sub-float v6, v1, v7

    add-float v2, v6, v9

    sub-float v3, v1, v8

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v29

    sub-float v1, v7, v1

    add-float v34, v1, v9

    mul-float v1, v7, v29

    sub-float/2addr v1, v8

    const/16 v36, 0x0

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v35, v1

    move-object/from16 v39, v4

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v25, v25, v7

    add-float v25, v25, v9

    sget v4, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v5, v4, v29

    add-float v32, v25, v5

    mul-float v27, v27, v7

    sub-float v5, v7, v27

    sub-float/2addr v5, v8

    div-float v4, v4, v29

    sub-float v4, v7, v4

    add-float v34, v4, v9

    add-float v27, v7, v27

    sub-float v4, v27, v8

    const/high16 v36, 0x43870000    # 270.0f

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v33, v5

    move/from16 v35, v4

    move-object/from16 v39, v6

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v6, v6, v29

    const/4 v10, 0x0

    add-float/2addr v6, v10

    add-float v44, v6, v9

    mul-float v24, v24, v7

    add-float v24, v24, v9

    sget v6, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v46, v24, v6

    mul-float v23, v23, v7

    sub-float v6, v23, v8

    const/high16 v48, 0x43340000    # 180.0f

    const/high16 v49, 0x42b40000    # 90.0f

    const/16 v50, 0x0

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v43, p1

    move/from16 v45, v5

    move/from16 v47, v6

    move-object/from16 v51, v10

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v10, v10, v29

    const/4 v11, 0x0

    add-float/2addr v10, v11

    add-float v32, v10, v9

    mul-float v22, v22, v7

    sub-float v10, v7, v22

    sub-float/2addr v10, v8

    add-float v11, v22, v9

    sub-float v12, v7, v8

    const/high16 v36, 0x42b40000    # 90.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move-object/from16 v39, v13

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v7

    add-float v13, v21, v9

    mul-float v20, v20, v7

    sub-float v21, v7, v20

    sub-float v21, v21, v8

    mul-float v19, v19, v7

    add-float v19, v19, v9

    const/16 v48, 0x0

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v44, v13

    move/from16 v45, v21

    move/from16 v46, v19

    move/from16 v47, v12

    move-object/from16 v51, v14

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v7

    add-float v14, v18, v9

    mul-float v17, v17, v7

    sub-float v17, v7, v17

    sub-float v17, v17, v8

    mul-float v16, v16, v7

    sub-float v16, v7, v16

    sub-float v16, v16, v8

    const/high16 v36, 0x43870000    # 270.0f

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v14

    move/from16 v33, v17

    move/from16 v34, v19

    move/from16 v35, v16

    move-object/from16 v39, v15

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v15, 0x3e71a9fc    # 0.236f

    mul-float/2addr v15, v7

    add-float v18, v15, v9

    const v22, 0x3eb1de6a    # 0.3474f

    mul-float v22, v22, v7

    add-float v22, v22, v9

    const v23, 0x3f6020c5    # 0.8755f

    mul-float v23, v23, v7

    sub-float v23, v23, v8

    const/high16 v36, 0x43340000    # 180.0f

    move/from16 v25, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v32, v18

    move/from16 v34, v22

    move/from16 v35, v23

    move-object/from16 v39, v14

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v14, 0x3f490ff9    # 0.7854f

    mul-float/2addr v14, v7

    sub-float/2addr v14, v8

    const v27, 0x3e9c0ebf    # 0.3048f

    mul-float v27, v27, v7

    add-float v27, v27, v9

    mul-float v26, v26, v7

    sub-float v26, v26, v8

    const/high16 v36, 0x42b40000    # 90.0f

    move/from16 v28, v13

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v33, v14

    move/from16 v34, v27

    move/from16 v35, v26

    move-object/from16 v39, v13

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v13, 0x3e7f1412    # 0.2491f

    mul-float/2addr v13, v7

    add-float/2addr v13, v9

    const v30, 0x3f4fcb92    # 0.8117f

    mul-float v30, v30, v7

    sub-float v8, v30, v8

    add-float v20, v20, v9

    const/16 v35, 0x0

    const/16 v37, 0x0

    move/from16 v40, v14

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v31, v13

    move/from16 v32, v8

    move/from16 v33, v20

    move/from16 v34, v26

    move-object/from16 v38, v14

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v14, v29

    sub-float v30, v12, v30

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v33, v30, v31

    add-float v41, v7, v9

    div-float v30, v14, v29

    sub-float v34, v41, v30

    div-float v14, v14, v29

    sub-float v14, v12, v14

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v14, v30

    sub-float v35, v14, v31

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v18

    move-object/from16 v36, v14

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v14, v29

    sub-float v34, v19, v30

    div-float v14, v14, v29

    sub-float v14, v19, v14

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v36, v14, v30

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v33, p1

    move/from16 v35, v5

    move/from16 v37, v12

    move-object/from16 v38, v14

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    add-float v42, v9, v14

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v32, v42, v14

    div-float v30, v14, v29

    sub-float v30, v17, v30

    sget v31, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v33, v30, v31

    div-float v14, v14, v29

    sub-float v14, v17, v14

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v14, v30

    sub-float v35, v14, v31

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v34, v19

    move-object/from16 v36, v14

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v14, v29

    sub-float v34, v18, v30

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v35, v17, v30

    div-float v14, v14, v29

    sub-float v14, v18, v14

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v36, v14, v30

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v33, p1

    move-object/from16 v38, v14

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v32, v18, v14

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v30, v14, v29

    sub-float v33, v26, v30

    div-float v14, v14, v29

    sub-float v14, v26, v14

    sget v30, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v35, v14, v30

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move/from16 v34, v19

    move-object/from16 v36, v14

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v14, v14, v29

    sub-float v14, v7, v14

    add-float v34, v14, v9

    const/16 v36, 0x0

    const/high16 v37, 0x42b40000    # 90.0f

    const/16 v38, 0x0

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v35, v1

    move-object/from16 v39, v14

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    sub-float v2, v1, v15

    add-float/2addr v2, v9

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v3, v1, v29

    add-float v44, v2, v3

    div-float v1, v1, v29

    sub-float/2addr v7, v1

    add-float v46, v7, v9

    const/high16 v48, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v45, v5

    move/from16 v47, v4

    move-object/from16 v51, v1

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v29

    const/4 v2, 0x0

    add-float/2addr v1, v2

    add-float v44, v1, v9

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v46, v24, v1

    const/high16 v48, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v47, v6

    move-object/from16 v51, v1

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v1, v1, v29

    const/4 v2, 0x0

    add-float/2addr v1, v2

    add-float v44, v1, v9

    const/high16 v48, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v45, v10

    move/from16 v46, v11

    move/from16 v47, v12

    move-object/from16 v51, v1

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v48, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v44, v28

    move/from16 v45, v21

    move/from16 v46, v19

    move-object/from16 v51, v1

    invoke-virtual/range {v43 .. v51}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v25

    move/from16 v33, v17

    move/from16 v34, v19

    move/from16 v35, v16

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v32, v18

    move/from16 v34, v22

    move/from16 v35, v23

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v36, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move/from16 v33, v40

    move/from16 v34, v27

    move/from16 v35, v26

    move-object/from16 v39, v1

    invoke-virtual/range {v31 .. v39}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v35, 0x0

    const/16 v37, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v31, v13

    move/from16 v32, v8

    move/from16 v33, v20

    move/from16 v34, v26

    move-object/from16 v38, v1

    invoke-virtual/range {v30 .. v38}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v29

    sub-float v33, v12, v2

    div-float v2, v1, v29

    sub-float v34, v41, v2

    div-float v1, v1, v29

    add-float v35, v12, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v31, p1

    move/from16 v32, v18

    move-object/from16 v36, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v29

    sub-float v7, v19, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    add-float v8, v5, v2

    div-float v1, v1, v29

    add-float v9, v19, v1

    sub-float v10, v12, v2

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v29

    add-float v4, v42, v2

    div-float v2, v1, v29

    sub-float v2, v17, v2

    sget v3, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v5, v2, v3

    sub-float v6, v19, v3

    div-float v1, v1, v29

    add-float v1, v17, v1

    sub-float v7, v1, v3

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v29

    sub-float v34, v18, v2

    div-float v1, v1, v29

    add-float v36, v18, v1

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    move-object/from16 v33, p1

    move/from16 v35, v17

    move/from16 v37, v12

    move-object/from16 v38, v1

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    div-float v2, v1, v29

    add-float v4, v18, v2

    div-float v2, v1, v29

    sub-float v5, v26, v2

    sget v2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v6, v19, v2

    div-float v1, v1, v29

    add-float v7, v26, v1

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private updateView(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43070000    # 135.0f

    if-lez v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    const/high16 v2, 0x43610000    # 225.0f

    if-ltz v1, :cond_1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    const v1, 0x439d8000    # 315.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iget v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-eq v0, v1, :cond_3

    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "jiugongge"

    const-string/jumbo v2, "pref_camera_referenceline_type_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "left_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "right_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "golden_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v6

    :cond_4
    :goto_1
    if-eqz v2, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->RightGoldenSpiral(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->LeftGoldenSpiral(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->GoldenSection(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->Jiugongge(Landroid/graphics/Canvas;)V

    :goto_2
    iget-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x344bfe51 -> :sswitch_3
        -0x1d02a42b -> :sswitch_2
        -0x124245fc -> :sswitch_1
        0x411c60af -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public initialize(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mAuxiliaryLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameSpiralColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaint:Landroid/graphics/Paint;

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldenSpiralPaintFrame:Landroid/graphics/Paint;

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sget v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->updateView(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_0
    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGradienterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    return-void
.end method
