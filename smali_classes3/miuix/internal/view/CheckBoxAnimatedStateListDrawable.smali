.class public Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
.super Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;
.source "CheckBoxAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;
    }
.end annotation


# static fields
.field public static final FULL_ALPHA:I = 0xff

.field public static final HALF_ALPHA:I = 0x7f


# instance fields
.field public mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

.field public mContentAlpha:F

.field public mIsEnabled:Z

.field public mPreChecked:Z

.field public mPrePressed:Z

.field public mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 3
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 5
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .locals 11

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 8
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 10
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 11
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v2

    iget v3, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v4, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v5, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v6, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v7, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v8, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v9, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v10, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getCheckWidgetDrawableStyle()I

    move-result v0

    sget-object v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_disableBackgroundColor:I

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    .line 5
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnAlphaBackgroundColor:I

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    .line 7
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnBackgroundColor:I

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    .line 9
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeColor:I

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    .line 11
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundNormalAlpha:I

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    .line 13
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundDisableAlpha:I

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    .line 15
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeNormalAlpha:I

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    .line 17
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeDisableAlpha:I

    .line 18
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    .line 19
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_touchAnimEnable:I

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v4

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v5, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v6, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v7, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v8, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v9, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v10, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v11, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v12, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v0, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 8
    :cond_2
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 10
    iget-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    const/high16 v0, 0x437f0000    # 255.0f

    .line 13
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x7f

    .line 14
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAlpha(I)V

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 17
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    div-int/2addr v4, v2

    int-to-float v0, v4

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 18
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCheckWidgetDrawableStyle()I
    .locals 1

    .line 1
    sget v0, Lmiuix/appcompat/R$style;->CheckWidgetDrawable_CheckBox:I

    return v0
.end method

.method public getContentAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return v0
.end method

.method public isSingleSelectionWidget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newCheckWidgetConstantState()Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;

    invoke-direct {v0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;-><init>()V

    return-object v0
.end method

.method public onStateChange([I)Z
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 7
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v1, v2, :cond_5

    aget v5, p1, v1

    const v6, 0x10100a7

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    const v6, 0x10100a0

    if-ne v5, v6, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    const v6, 0x101009e

    if-ne v5, v6, :cond_4

    .line 8
    iput-boolean v7, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 9
    invoke-virtual {p0, v4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->startPressedAnim(Z)V

    .line 10
    :cond_6
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    if-nez p1, :cond_7

    if-nez v3, :cond_7

    .line 11
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    invoke-virtual {p0, v4, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->verifyChecked(ZZ)V

    :cond_7
    if-nez v3, :cond_9

    .line 12
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    if-eq v4, p1, :cond_9

    .line 13
    :cond_8
    invoke-virtual {p0, v4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->startUnPressedAnim(Z)V

    .line 14
    :cond_9
    iput-boolean v3, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 15
    iput-boolean v4, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    return v0
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setBounds(IIII)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCheckWidgetDrawableBounds(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return-void
.end method

.method public startPressedAnim(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, v1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->startPressedAnim(ZZ)V

    :cond_0
    return-void
.end method

.method public startUnPressedAnim(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, v1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V

    :cond_0
    return-void
.end method

.method public verifyChecked(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->verifyChecked(ZZ)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
