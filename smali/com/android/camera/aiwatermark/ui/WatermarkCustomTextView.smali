.class public Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;
.super Landroid/widget/TextView;
.source "WatermarkCustomTextView.java"


# instance fields
.field public mPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->init()V

    return-void
.end method

.method private getAdditionalPadding()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 2
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 5
    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    sub-float/2addr v2, v0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    float-to-int v2, v2

    .line 7
    iput v2, p0, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->mPadding:I

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMeasure: height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " textSize="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mAdditionalPadding="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->mPadding:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatermarkCustomTextView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->mPadding:I

    return v0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method private measureHeight(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 2
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v1, p2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    return p1
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->mPadding:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x3

    .line 2
    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x1

    .line 3
    div-int/lit8 v0, v0, 0x2

    :goto_0
    const/4 v1, 0x0

    int-to-float v0, v0

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->getAdditionalPadding()I

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->measureHeight(Ljava/lang/String;I)I

    move-result p2

    .line 4
    iget v0, p0, Lcom/android/camera/aiwatermark/ui/WatermarkCustomTextView;->mPadding:I

    sub-int/2addr p2, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr p2, v0

    .line 6
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
