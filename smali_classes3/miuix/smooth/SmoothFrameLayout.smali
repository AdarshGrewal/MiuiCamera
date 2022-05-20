.class public Lmiuix/smooth/SmoothFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SmoothFrameLayout.java"


# static fields
.field public static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

.field public mLayer:Landroid/graphics/Rect;

.field public mSavedLayer:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    .line 6
    new-instance p3, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {p3}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 7
    sget-object p3, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_radius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 9
    invoke-virtual {p0, p2}, Lmiuix/smooth/SmoothFrameLayout;->setCornerRadius(F)V

    .line 10
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x2

    if-nez p2, :cond_0

    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_topRightRadius:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_bottomRightRadius:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_bottomLeftRadius:I

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    :cond_0
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 15
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_topRightRadius:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 16
    sget v2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_bottomRightRadius:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 17
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_bottomLeftRadius:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput p2, v4, p3

    const/4 v5, 0x1

    aput p2, v4, v5

    aput v1, v4, v0

    const/4 p2, 0x3

    aput v1, v4, p2

    const/4 p2, 0x4

    aput v2, v4, p2

    const/4 p2, 0x5

    aput v2, v4, p2

    const/4 p2, 0x6

    aput v3, v4, p2

    const/4 p2, 0x7

    aput v3, v4, p2

    .line 18
    invoke-virtual {p0, v4}, Lmiuix/smooth/SmoothFrameLayout;->setCornerRadii([F)V

    .line 19
    :cond_1
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_miuix_strokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 20
    invoke-virtual {p0, p2}, Lmiuix/smooth/SmoothFrameLayout;->setStrokeWidth(I)V

    .line 21
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_miuix_strokeColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 22
    invoke-virtual {p0, p2}, Lmiuix/smooth/SmoothFrameLayout;->setStrokeColor(I)V

    .line 23
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout_android_layerType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 p3, 0x0

    .line 24
    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateBackground()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBounds()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updateBounds()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    sget-object v3, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, p1, v3}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    sget-object v3, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, p1, v3}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCornerRadii()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getRadii()[F

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getRadii()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :goto_0
    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getRadius()F

    move-result v0

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getStrokeColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getStrokeWidth()I

    move-result v0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBounds()V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBackground()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 1
    :cond_0
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 2
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 3
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBackground()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getStrokeColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    .line 3
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->getStrokeWidth()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 3
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout;->updateBackground()V

    :cond_0
    return-void
.end method
