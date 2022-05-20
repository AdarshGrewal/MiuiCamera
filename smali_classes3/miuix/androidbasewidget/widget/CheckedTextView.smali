.class public Lmiuix/androidbasewidget/widget/CheckedTextView;
.super Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;
.source "CheckedTextView.java"


# static fields
.field public static final CHECKED_STATE_SET:[I

.field public static final CHECK_MARK_PADDING:I


# instance fields
.field public mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 1
    sput-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawCheckMark(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 3
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getScrollX()I

    move-result v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getScrollX()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingTop()I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingTop()I

    move-result v4

    .line 8
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v7, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    sub-int v6, v4, v5

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x10

    if-eq v7, v8, :cond_3

    const/16 v4, 0x50

    if-eq v7, v4, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v6

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v3

    invoke-static {v3, v6, v4, v5}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkPositionY(IIII)I

    move-result v3

    :goto_1
    add-int/2addr v1, v2

    add-int/2addr v6, v3

    .line 15
    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public static getCheckMarkPositionY(IIII)I
    .locals 0

    sub-int/2addr p0, p2

    sub-int/2addr p0, p3

    sub-int/2addr p0, p1

    .line 1
    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    return p0
.end method

.method private getCheckWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 4
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CheckedTextView;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/CheckedTextView;->drawCheckMark(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->onMeasure(II)V

    .line 2
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckWidth()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    const/high16 p2, -0x80000000

    if-ne v0, p2, :cond_2

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v1, p1, :cond_2

    move v1, p1

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/CheckedTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    sget-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9
    :cond_2
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
