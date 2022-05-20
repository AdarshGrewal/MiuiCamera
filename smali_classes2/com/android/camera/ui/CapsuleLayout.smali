.class public Lcom/android/camera/ui/CapsuleLayout;
.super Landroid/widget/FrameLayout;
.source "CapsuleLayout.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mOffset:I

.field public mProgress:F

.field public mShowAnimator:Landroid/animation/ValueAnimator;

.field public mTarget:Landroid/view/View;

.field public mTargetId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/CapsuleLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/CapsuleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/CapsuleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 4
    iput p3, p0, Lcom/android/camera/ui/CapsuleLayout;->mProgress:F

    .line 5
    sget-object p3, Lcom/android/camera/R$styleable;->CapsuleLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, -0x1

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/CapsuleLayout;->mTargetId:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/CapsuleLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/CapsuleLayout;->mProgress:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/CapsuleLayout;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mProgress:F

    return p1
.end method

.method private ensureTarget()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mTargetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid target Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fail to get target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/CapsuleLayout;->mProgress:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mOffset:I

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x4

    iget p3, p0, Lcom/android/camera/ui/CapsuleLayout;->mOffset:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    mul-int/lit8 p3, p3, 0x3

    div-int/lit8 p3, p3, 0x4

    iget p4, p0, Lcom/android/camera/ui/CapsuleLayout;->mOffset:I

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    .line 5
    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/CapsuleLayout;->ensureTarget()V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v4, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-le v2, p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-le v3, p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 14
    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CapsuleLayout;->mTarget:Landroid/view/View;

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/CapsuleLayout$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CapsuleLayout$1;-><init>(Lcom/android/camera/ui/CapsuleLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/CapsuleLayout$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CapsuleLayout$2;-><init>(Lcom/android/camera/ui/CapsuleLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CapsuleLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
