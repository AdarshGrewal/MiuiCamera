.class public Lcom/android/camera/ui/AdaptiveTextView;
.super Landroid/widget/TextView;
.source "AdaptiveTextView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = " AdaptiveTv"


# instance fields
.field public hasMaxWidth:Z

.field public mMaxFontScale:F

.field public mRealFontScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p1, 0x3fb33333    # 1.4f

    .line 2
    iput p1, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/AdaptiveTextView;->mRealFontScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3fb33333    # 1.4f

    .line 5
    iput v0, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/camera/ui/AdaptiveTextView;->mRealFontScale:F

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AdaptiveTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3fb33333    # 1.4f

    .line 9
    iput p3, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    const/4 p3, 0x0

    .line 10
    iput p3, p0, Lcom/android/camera/ui/AdaptiveTextView;->mRealFontScale:F

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AdaptiveTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p3, 0x3fb33333    # 1.4f

    .line 13
    iput p3, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    const/4 p3, 0x0

    .line 14
    iput p3, p0, Lcom/android/camera/ui/AdaptiveTextView;->mRealFontScale:F

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AdaptiveTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/R$styleable;->AdaptiveTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x3fb33333    # 1.4f

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init:  mMaxFontScale :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " AdaptiveTv"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x58

    if-eq p1, v0, :cond_1

    const/16 v0, 0x57

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/AdaptiveTextView;->hasMaxWidth:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/high16 v0, -0x80000000

    .line 9
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 12
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/AdaptiveTextView;->hasMaxWidth:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    iget p1, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 4
    iget v0, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/android/camera/ui/AdaptiveTextView;->mRealFontScale:F

    cmpl-float p2, v0, p2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    iget v0, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/camera/ui/AdaptiveTextView;->mRealFontScale:F

    :cond_0
    const/4 p1, 0x0

    .line 7
    iget p2, p0, Lcom/android/camera/ui/AdaptiveTextView;->mRealFontScale:F

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setText:  mMaxFontScale :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "   mRealFontScale : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/ui/AdaptiveTextView;->mRealFontScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " AdaptiveTv"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setmMaxFontScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/AdaptiveTextView;->mMaxFontScale:F

    return-void
.end method
