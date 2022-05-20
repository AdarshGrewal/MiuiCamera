.class public Lcom/android/camera/ui/SmoothRoundLayout;
.super Landroid/widget/FrameLayout;
.source "SmoothRoundLayout.java"


# static fields
.field public static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

.field public static final XFERMODE_SRC_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

.field public mLayer:Landroid/graphics/Rect;

.field public mSavedLayer:Landroid/graphics/RectF;

.field public mSmooth:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/camera/ui/SmoothRoundLayout;->XFERMODE_SRC_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 2
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/camera/ui/SmoothRoundLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mLayer:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSavedLayer:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-direct {v0}, Lcom/android/camera/ui/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    .line 5
    sget-object v0, Lcom/android/camera/R$styleable;->SmoothRoundLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SmoothRoundLayout;->setCornerRadius(F)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SmoothRoundLayout;->setStrokeWidth(I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SmoothRoundLayout;->setStrokeColor(I)V

    .line 12
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSmooth:Z

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateBackground()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBounds()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getDispatchXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getStorkeXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->getStorkeXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/SmoothDrawHelper;->getRadius()F

    move-result v0

    return v0
.end method

.method public getDispatchXfermode()Landroid/graphics/PorterDuffXfermode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/SmoothRoundLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-object v0
.end method

.method public getStorkeXfermode()Landroid/graphics/PorterDuffXfermode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/SmoothDrawHelper;->getStrokeColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/SmoothDrawHelper;->getStrokeWidth()I

    move-result v0

    return v0
.end method

.method public getXfermode()Landroid/graphics/PorterDuffXfermode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/SmoothRoundLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mLayer:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object p3, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSavedLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBounds()V

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
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SmoothDrawHelper;->setRadius(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SmoothDrawHelper;->setRadii([F)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBackground()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/SmoothDrawHelper;->getStrokeColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SmoothDrawHelper;->setStrokeColor(I)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/SmoothDrawHelper;->getStrokeWidth()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/SmoothRoundLayout;->updateBackground()V

    :cond_0
    return-void
.end method

.method public updateBounds()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mHelper:Lcom/android/camera/ui/SmoothDrawHelper;

    iget-object v1, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mLayer:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/android/camera/ui/SmoothRoundLayout;->mSmooth:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;Z)V

    return-void
.end method
