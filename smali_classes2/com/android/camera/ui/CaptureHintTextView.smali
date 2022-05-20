.class public Lcom/android/camera/ui/CaptureHintTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CaptureHintTextView.java"


# instance fields
.field public mMaxWidth:I

.field public mMinWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureHintTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureHintTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/CaptureHintTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureHintTextView;->mMinWidth:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07023d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CaptureHintTextView;->mMaxWidth:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 4
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x0

    const/16 p2, 0x2c

    .line 2
    invoke-virtual {p0, p2, p1, p2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x58

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 5
    iget v0, p0, Lcom/android/camera/ui/CaptureHintTextView;->mMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/CaptureHintTextView;->mMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v3, p1, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr v3, v2

    neg-int v3, v3

    .line 8
    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v4, p2

    sub-int/2addr v4, v2

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_1

    .line 10
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 11
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 14
    :cond_0
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 15
    :goto_0
    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
