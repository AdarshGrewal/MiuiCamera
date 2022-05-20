.class public Lcom/android/camera/AudioMapMove;
.super Landroid/view/View;
.source "AudioMapMove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIM_TIME_ONE:I = 0x96

.field public static final DEFAULT_ANIM_TIME_SECOND:I = 0x50

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public antiAlias:Z

.field public lastY:F

.field public linearGradientLine:Landroid/graphics/LinearGradient;

.field public linearGradientRect:Landroid/graphics/LinearGradient;

.field public mAnimTimeAudioMap:J

.field public mAnimTimeLine:J

.field public mAnimatorAudioMap:Landroid/animation/ValueAnimator;

.field public mAnimatorLine:Landroid/animation/ValueAnimator;

.field public mAudioMapHeight:F

.field public mDialPaint:Landroid/graphics/Paint;

.field public mEndFirst:F

.field public mEndSecond:F

.field public mFValue:F

.field public mFirstCurrentVolume:F

.field public mFirstLineValue:F

.field public mFirstMaxVolumeValue:F

.field public mFirstRectBottom:F

.field public mFirstRectTop:F

.field public mGradientsColor:I

.field public mGreenColor:I

.field public mLinePaint:Landroid/graphics/Paint;

.field public mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

.field public mOrangeColor:I

.field public mPercentLine:F

.field public mPercentRect:F

.field public mRectLeft:F

.field public mRectWidth:F

.field public mSValue:F

.field public mSecondCurrentVolume:F

.field public mSecondLineValue:F

.field public mSecondMaxVolumeValue:F

.field public mSecondRectBottom:F

.field public mSecondRectTop:F

.field public mStartFirst:F

.field public mStartSecond:F

.field public mYellowColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/AudioMapMove;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/AudioMapMove;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->linearGradientRect:Landroid/graphics/LinearGradient;

    .line 3
    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->linearGradientLine:Landroid/graphics/LinearGradient;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/AudioMapMove;->mStartFirst:F

    .line 5
    iput v0, p0, Lcom/android/camera/AudioMapMove;->mStartSecond:F

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/AudioMapMove;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mPercentRect:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/AudioMapMove;->mPercentRect:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mFValue:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstLineValue:F

    return p1
.end method

.method public static synthetic access$102(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFValue:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mFirstMaxVolumeValue:F

    return p0
.end method

.method public static synthetic access$1202(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondLineValue:F

    return p1
.end method

.method public static synthetic access$1300(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mSecondMaxVolumeValue:F

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mStartFirst:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mEndFirst:F

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mSValue:F

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSValue:F

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mStartSecond:F

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mEndSecond:F

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    return p0
.end method

.method public static synthetic access$702(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    return p1
.end method

.method public static synthetic access$900(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMapMove;->mPercentLine:F

    return p0
.end method

.method public static synthetic access$902(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/AudioMapMove;->mPercentLine:F

    return p1
.end method

.method private drawRectHorizontal(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mRectWidth:F

    const/4 v10, 0x4

    new-array v6, v10, [I

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mGreenColor:I

    const/4 v11, 0x0

    aput v1, v6, v11

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mGradientsColor:I

    const/4 v12, 0x1

    aput v1, v6, v12

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mYellowColor:I

    const/4 v13, 0x2

    aput v1, v6, v13

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mOrangeColor:I

    const/4 v14, 0x3

    aput v1, v6, v14

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v1, v9

    move v2, v5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/android/camera/AudioMapMove;->linearGradientRect:Landroid/graphics/LinearGradient;

    .line 3
    iget-object v1, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4
    iget v1, v0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    :cond_0
    iput v1, v0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    .line 5
    iget v1, v0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    iput v1, v0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    .line 6
    iget v3, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v5, v0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mFirstRectBottom:F

    iget-object v7, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget v1, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mSecondRectTop:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mSecondRectBottom:F

    iget-object v5, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mRectWidth:F

    new-array v5, v10, [I

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mGreenColor:I

    aput v6, v5, v11

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mGradientsColor:I

    aput v6, v5, v12

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mYellowColor:I

    aput v6, v5, v13

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mOrangeColor:I

    aput v6, v5, v14

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/android/camera/AudioMapMove;->linearGradientLine:Landroid/graphics/LinearGradient;

    .line 9
    iget-object v2, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 10
    iget v6, v0, Lcom/android/camera/AudioMapMove;->mFirstLineValue:F

    iget v10, v0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    cmpg-float v1, v6, v10

    if-gtz v1, :cond_2

    .line 11
    iput v10, v0, Lcom/android/camera/AudioMapMove;->mFirstMaxVolumeValue:F

    .line 12
    iget v9, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v11, v0, Lcom/android/camera/AudioMapMove;->mFirstRectBottom:F

    iget-object v12, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 13
    :cond_2
    iget v5, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v7, v0, Lcom/android/camera/AudioMapMove;->mFirstRectBottom:F

    iget-object v8, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 14
    :goto_0
    iget v12, v0, Lcom/android/camera/AudioMapMove;->mSecondLineValue:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    cmpg-float v1, v12, v4

    if-gtz v1, :cond_3

    .line 15
    iput v4, v0, Lcom/android/camera/AudioMapMove;->mSecondMaxVolumeValue:F

    .line 16
    iget v3, v0, Lcom/android/camera/AudioMapMove;->mSecondRectTop:F

    iget v5, v0, Lcom/android/camera/AudioMapMove;->mSecondRectBottom:F

    iget-object v6, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 17
    :cond_3
    iget v11, v0, Lcom/android/camera/AudioMapMove;->mSecondRectTop:F

    iget v13, v0, Lcom/android/camera/AudioMapMove;->mSecondRectBottom:F

    iget-object v14, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v12

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 18
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/AudioMapMove;->initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->initPaint()V

    return-void
.end method

.method private initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/R$styleable;->AudioMap:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    const/4 p2, 0x3

    const/16 v0, 0x96

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeAudioMap:J

    const/16 v0, 0x50

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeLine:J

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mAudioMapHeight:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRectWidth:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060025

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mGreenColor:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060024

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mGradientsColor:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060027

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mYellowColor:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060026

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mOrangeColor:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700dc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstRectBottom:F

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondRectTop:F

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondRectBottom:F

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFValue:F

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSValue:F

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    .line 5
    iget-boolean v1, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private startAnimatorAudioMapHorizontal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    .line 5
    iget-wide v1, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeAudioMap:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/AudioMapMove$1;

    invoke-direct {v1, p0}, Lcom/android/camera/AudioMapMove$1;-><init>(Lcom/android/camera/AudioMapMove;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimatorLineHorizontal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    .line 5
    iget-wide v1, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeLine:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/AudioMapMove$2;

    invoke-direct {v1, p0}, Lcom/android/camera/AudioMapMove$2;-><init>(Lcom/android/camera/AudioMapMove;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/AudioMapMove;->drawRectHorizontal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/android/camera/AudioMapMove;->lastY:F

    sub-float/2addr v1, v0

    .line 4
    iput v0, p0, Lcom/android/camera/AudioMapMove;->lastY:F

    .line 5
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

    invoke-interface {v0, v1}, Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;->setVolumeControlValue(F)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

    invoke-interface {v0}, Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;->setUpAudioMapPressAnimator()V

    .line 7
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 8
    :cond_2
    iput v0, p0, Lcom/android/camera/AudioMapMove;->lastY:F

    .line 9
    iget-object p1, p0, Lcom/android/camera/AudioMapMove;->mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

    invoke-interface {p1}, Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;->setPressAudioMapPressAnimator()V

    return v2
.end method

.method public setOnAudioMapPressAnimatorListener(Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/AudioMapMove;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnAudioMapPressAnimatorListener()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/AudioMapMove;->mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

    return-void
.end method

.method public setValueHorizontal(FF)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget v1, p0, Lcom/android/camera/AudioMapMove;->mAudioMapHeight:F

    const/high16 v2, 0x42000000    # 32.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v2, 0x0

    aput p1, v0, v2

    mul-float/2addr p2, v1

    float-to-int p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 2
    iget p1, p0, Lcom/android/camera/AudioMapMove;->mFValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mStartFirst:F

    .line 3
    iget p1, p0, Lcom/android/camera/AudioMapMove;->mSValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mStartSecond:F

    .line 4
    iget p1, p0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    aget v1, v0, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/AudioMapMove;->mEndFirst:F

    .line 5
    aget v1, v0, p2

    int-to-float v1, v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mEndSecond:F

    .line 6
    iget p1, p0, Lcom/android/camera/AudioMapMove;->mFirstLineValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstMaxVolumeValue:F

    .line 7
    aget p1, v0, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    .line 8
    iget p1, p0, Lcom/android/camera/AudioMapMove;->mSecondLineValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondMaxVolumeValue:F

    .line 9
    aget p1, v0, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    .line 10
    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->startAnimatorAudioMapHorizontal()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->startAnimatorLineHorizontal()V

    return-void
.end method
