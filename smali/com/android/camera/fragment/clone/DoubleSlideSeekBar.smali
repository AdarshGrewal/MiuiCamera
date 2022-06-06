.class public Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;
.super Landroid/view/View;
.source "DoubleSlideSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DoubleSlideSeekBar"


# instance fields
.field public bitmapWidth:I

.field public final imageHeight:I

.field public isLowerMoving:Z

.field public isUpperMoving:Z

.field public lineEnd:I

.field public lineLength:I

.field public linePaint:Landroid/graphics/Paint;

.field public lineStart:I

.field public lineY:I

.field public final mClipBox:Lcom/android/camera/fragment/clone/ClipBox;

.field public final mColor:I

.field public final mLineWidth:I

.field public mMaxRatio:F

.field public mMinRatio:F

.field public mPlayPos:I

.field public onRangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

.field public slideBigX:I

.field public slideLowX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineLength:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineStart:I

    iput v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineEnd:I

    new-instance v0, Lcom/android/camera/fragment/clone/ClipBox;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/clone/ClipBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mClipBox:Lcom/android/camera/fragment/clone/ClipBox;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/camera/R$styleable;->DoubleSlideSeekBar:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->imageHeight:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mClipBox:Lcom/android/camera/fragment/clone/ClipBox;

    invoke-virtual {p1}, Lcom/android/camera/fragment/clone/ClipBox;->getLineWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mLineWidth:I

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->init()V

    return-void
.end method

.method private getMyMeasureHeight(I)I
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->imageHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getMyMeasureWidth(I)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->bitmapWidth:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->bitmapWidth:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->bitmapWidth:I

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineEnd:I

    iput v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineStart:I

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mMinRatio:F

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mMaxRatio:F

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->updateSlidePos(FF)V

    return p1
.end method

.method private getSlidePosition(III)I
    .locals 0

    if-ge p2, p1, :cond_0

    if-gt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mClipBox:Lcom/android/camera/fragment/clone/ClipBox;

    invoke-virtual {v0}, Lcom/android/camera/fragment/clone/ClipBox;->getClipAxisWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->bitmapWidth:I

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineStart:I

    iput v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideLowX:I

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineEnd:I

    iput v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideBigX:I

    return-void
.end method

.method private onSeekBarActionDown(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->onRangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;->onActionDown(Z)V

    :cond_0
    return-void
.end method

.method private onSeekBarActionUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->onRangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;->onActionUp()V

    :cond_0
    return-void
.end method

.method private onSlideMove(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->isLowerMoving:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineStart:I

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideBigX:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->getSlidePosition(III)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideLowX:I

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->updateRange()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->isUpperMoving:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideLowX:I

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineEnd:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->getSlidePosition(III)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideBigX:I

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->updateRange()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private updateDrawables(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mClipBox:Lcom/android/camera/fragment/clone/ClipBox;

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideLowX:I

    iget v2, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideBigX:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/clone/ClipBox;->setClipBoxLeftAndRight(II)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateRange()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->onRangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideLowX:I

    iget v2, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    iget v4, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineLength:I

    int-to-float v5, v4

    div-float/2addr v1, v5

    iget v5, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideBigX:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v2, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;->onRangeChange(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineY:I

    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mLineWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mPlayPos:I

    if-lez v0, :cond_1

    int-to-float v2, v0

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mLineWidth:I

    int-to-float v3, v1

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineY:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mClipBox:Lcom/android/camera/fragment/clone/ClipBox;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/clone/ClipBox;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->getMyMeasureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->getMyMeasureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mClipBox:Lcom/android/camera/fragment/clone/ClipBox;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Lcom/android/camera/fragment/clone/ClipBox;->setVisibleArea(IIII)V

    invoke-direct {p0, p4}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->updateDrawables(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    float-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->onSlideMove(I)V

    goto/16 :goto_3

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->isUpperMoving:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->isLowerMoving:Z

    if-eqz p1, :cond_8

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->isUpperMoving:Z

    iput-boolean v2, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->isLowerMoving:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->onSeekBarActionUp()V

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineY:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    move p1, v2

    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideLowX:I

    int-to-float v4, v1

    cmpg-float v4, v0, v4

    if-gez v4, :cond_5

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->bitmapWidth:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    iget v4, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideBigX:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_6

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->bitmapWidth:I

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    iput-boolean v3, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->isLowerMoving:Z

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->onSeekBarActionDown(Z)V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    iput-boolean v3, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->isUpperMoving:Z

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->onSeekBarActionDown(Z)V

    :cond_8
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->updateDrawables(Z)V

    return v3
.end method

.method public setOnRangeListener(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->onRangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

    return-void
.end method

.method public setPlayPos(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineLength:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineStart:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mPlayPos:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mPlayPos:I

    :goto_0
    new-instance p1, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oo/OooO0oO;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oo/OooO0oO;-><init>(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSlidePos(FF)V
    .locals 2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFreezeValue mix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " > max "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " !!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DoubleSlideSeekBar"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mMinRatio:F

    cmpg-float p1, p2, v0

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    iput v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mMaxRatio:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p1

    if-lez v0, :cond_3

    move p2, p1

    :cond_3
    iput p2, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mMaxRatio:F

    iget p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->mMinRatio:F

    iget v0, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineLength:I

    int-to-float v1, v0

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget v1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->lineStart:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideLowX:I

    int-to-float p1, v0

    mul-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->slideBigX:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->updateDrawables(Z)V

    return-void
.end method
