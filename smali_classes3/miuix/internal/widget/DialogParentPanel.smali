.class public Lmiuix/internal/widget/DialogParentPanel;
.super Landroid/widget/LinearLayout;
.source "DialogParentPanel.java"


# instance fields
.field public mFixedHeightMajor:Landroid/util/TypedValue;

.field public mFixedHeightMinor:Landroid/util/TypedValue;

.field public mFixedWidthMajor:Landroid/util/TypedValue;

.field public mFixedWidthMinor:Landroid/util/TypedValue;

.field public mMaxHeightMajor:Landroid/util/TypedValue;

.field public mMaxHeightMinor:Landroid/util/TypedValue;

.field public mMaxWidthMajor:Landroid/util/TypedValue;

.field public mMaxWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 5
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 6
    :cond_0
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 8
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 9
    :cond_1
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 11
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 12
    :cond_2
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 14
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 15
    :cond_3
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 17
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 18
    :cond_4
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 19
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 20
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 21
    :cond_5
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 22
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 23
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 24
    :cond_6
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 25
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 26
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 27
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getHeightMeasureSpec(I)I
    .locals 7

    .line 1
    iget-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p4

    .line 4
    :goto_1
    invoke-direct {p0, v0, p3, p2}, Lmiuix/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    .line 5
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object p5, p6

    .line 6
    :goto_2
    invoke-direct {p0, v0, p5, p2}, Lmiuix/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p2

    if-lez p2, :cond_4

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 8
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_4
    :goto_3
    return p1
.end method

.method private getWidthMeasureSpec(I)I
    .locals 7

    .line 1
    iget-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method private resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_2

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_1

    .line 3
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_1
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    int-to-float p1, p1

    .line 4
    invoke-virtual {p2, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/DialogParentPanel;->getWidthMeasureSpec(I)I

    move-result p1

    .line 2
    invoke-direct {p0, p2}, Lmiuix/internal/widget/DialogParentPanel;->getHeightMeasureSpec(I)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
