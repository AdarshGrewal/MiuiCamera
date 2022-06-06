.class public Lcom/android/camera/ui/ShapeBackGroundView;
.super Landroid/widget/FrameLayout;
.source "ShapeBackGroundView.java"


# static fields
.field public static final RADIUS:I = 0x42

.field public static final SHAPE_HINT_ALPHA:I = 0x99


# instance fields
.field public mBlackMaskHeight:I

.field public mBlackMaskPaint:Landroid/graphics/Paint;

.field public mBlackOriginHeight:I

.field public mColorAnimator:Landroid/animation/ValueAnimator;

.field public mCurrentAlpha:I

.field public mCurrentHeight:I

.field public mCurrentRadius:I

.field public mCurrentWidth:I

.field public mGravity:I

.field public mPaint:Landroid/graphics/Paint;

.field public mSrcColor:I

.field public mTargetColor:I

.field public mTopFloating:Z

.field public mTopHorizontalOffset:I

.field public mTopVerticalOffset:I

.field public mTotalHeight:I

.field public mTotalWidth:I

.field public mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/camera/ui/ShapeBackGroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/camera/ui/ShapeBackGroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/ShapeBackGroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x30

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mGravity:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/ShapeBackGroundView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/ShapeBackGroundView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentHeight:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/ShapeBackGroundView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentHeight:I

    return p1
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/ShapeBackGroundView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    return p1
.end method

.method public static synthetic access$302(Lcom/android/camera/ui/ShapeBackGroundView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/ShapeBackGroundView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentAlpha:I

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/ui/ShapeBackGroundView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentAlpha:I

    return p1
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/ShapeBackGroundView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentWidth:I

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iput v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTargetColor:I

    return-void
.end method


# virtual methods
.method public animationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public getBlackOriginHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackOriginHeight:I

    return v0
.end method

.method public getCurrentHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentHeight:I

    return v0
.end method

.method public getCurrentMaskHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    return v0
.end method

.method public getCurrentRadius()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    return v0
.end method

.method public getCurrentTopVerticalOffset()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopVerticalOffset:I

    return v0
.end method

.method public getCurrentWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mGravity:I

    return v0
.end method

.method public initWidthHeight(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalWidth:I

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalHeight:I

    return-void
.end method

.method public maskVisible()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mGravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const v1, 0x800003

    if-eq v0, v1, :cond_6

    const v1, 0x800005

    if-eq v0, v1, :cond_5

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalHeight:I

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    sub-int v1, v0, v1

    int-to-float v4, v1

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalWidth:I

    int-to-float v5, v1

    int-to-float v6, v0

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopFloating:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    neg-int v0, v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopFloating:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentHeight:I

    iget v2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentHeight:I

    :goto_1
    iget v2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopVerticalOffset:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopHorizontalOffset:I

    int-to-float v4, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalWidth:I

    sub-int/2addr v0, v2

    int-to-float v6, v0

    int-to-float v7, v1

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopFloating:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    :goto_2
    const/4 v2, 0x0

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    neg-int v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalWidth:I

    int-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalWidth:I

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    const/4 v4, 0x0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalHeight:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentWidth:I

    int-to-float v11, v0

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalHeight:I

    int-to-float v12, v0

    iget-object v13, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackgroundAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBackgroundAlphaAndRadius(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    iput p3, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setBackgroundAlphaAndRadius(IIII)V
    .locals 1

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    iput p3, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentHeight:I

    iput p4, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setBlackOriginHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackOriginHeight:I

    return-void
.end method

.method public setCurrentHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentHeight:I

    return-void
.end method

.method public setCurrentRadius(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentRadius:I

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mGravity:I

    return-void
.end method

.method public setMaskSpecificHeight(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/ui/ShapeBackGroundView;->cancelAnimation()V

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mBlackMaskHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_1
    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/ShapeBackGroundView$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/ui/ShapeBackGroundView$4;-><init>(Lcom/android/camera/ui/ShapeBackGroundView;II)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_2

    new-instance p1, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    iget-object p3, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p1, p3}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;-><init>(Landroid/animation/Animator;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setMaskSpecificWidth(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/ui/ShapeBackGroundView;->cancelAnimation()V

    if-nez p3, :cond_0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_0
    iget p3, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mCurrentWidth:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/ShapeBackGroundView$5;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/camera/ui/ShapeBackGroundView$5;-><init>(Lcom/android/camera/ui/ShapeBackGroundView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_1

    new-instance p1, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    iget-object p3, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p1, p3}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;-><init>(Landroid/animation/Animator;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTopFloating(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopFloating:Z

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopHorizontalOffset:I

    return-void
.end method

.method public setTopVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTopVerticalOffset:I

    return-void
.end method

.method public startBackGroundAnimator(IIIIIIILandroid/animation/Animator$AnimatorListener;)V
    .locals 11

    move-object v8, p0

    move-object/from16 v0, p8

    invoke-virtual {p0}, Lcom/android/camera/ui/ShapeBackGroundView;->cancelAnimation()V

    move v2, p3

    move v3, p4

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v8, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    move/from16 v4, p7

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v8, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v0, :cond_1

    iget-object v1, v8, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v9, v8, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/camera/ui/ShapeBackGroundView$3;

    move-object v0, v10

    move-object v1, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, p2

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/ShapeBackGroundView$3;-><init>(Lcom/android/camera/ui/ShapeBackGroundView;IIIIII)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateThemeStyle(I)V
    .locals 5

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTargetColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mSrcColor:I

    iput v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTargetColor:I

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mSrcColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTargetColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/ShapeBackGroundView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/ShapeBackGroundView$1;-><init>(Lcom/android/camera/ui/ShapeBackGroundView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/ShapeBackGroundView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/ShapeBackGroundView$2;-><init>(Lcom/android/camera/ui/ShapeBackGroundView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTargetColor:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    :goto_1
    return-void
.end method
