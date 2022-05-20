.class public Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;
.super Landroid/view/ViewGroup;
.source "ZoomIndexButtonsLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mBackGroundColor:I

.field public mChildSize:I

.field public mDegree:I

.field public mIsRLT:Z

.field public mIsSupportSatZoomSpline:Z

.field public mOnItemClickListener:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;

.field public mPadding:F

.field public mSelectIndex:I

.field public mZoomIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mIsRLT:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0703bb

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0703b8

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    return-void
.end method

.method private toScaleAnimator(Lcom/android/camera/ui/zoom/ZoomTextImageView;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f02000a

    invoke-static {p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    .line 4
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRightmostChild()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mIsRLT:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->TAG:Ljava/lang/String;

    const-string v0, "ignore click due to doing action"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    .line 7
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mOnItemClickListener:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;->onIndexButtonClick(Landroid/view/View;)V

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mIsSupportSatZoomSpline:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x4

    if-gt p1, p3, :cond_0

    const p3, 0x7f07083d

    goto :goto_0

    :cond_0
    const p3, 0x7f07083c

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mPadding:F

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mPadding:F

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 4
    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    div-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    .line 6
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mPadding:F

    int-to-float v1, p2

    sub-float/2addr v0, v1

    int-to-float p5, p5

    mul-float/2addr p4, p3

    add-float/2addr p5, p4

    const/4 p4, 0x0

    move v1, p4

    :goto_1
    if-ge v1, p1, :cond_2

    .line 7
    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mIsRLT:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    mul-int/lit8 v4, p2, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 9
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-int v4, p3

    .line 10
    invoke-virtual {v2, p2, v4, p2, v4}, Landroid/view/View;->setPadding(IIII)V

    float-to-int v4, v0

    add-float/2addr v0, v3

    float-to-int v3, v0

    float-to-int v5, p5

    .line 11
    invoke-virtual {v2, v4, p4, v3, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mDegree:I

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mBackGroundColor:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setNormalBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDegree(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mDegree:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    int-to-float v2, p1

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelect(FZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mIsSupportSatZoomSpline:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 5
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 6
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    if-eq v2, v1, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v1, v0, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    .line 9
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->toScaleAnimator(Lcom/android/camera/ui/zoom/ZoomTextImageView;Z)V

    .line 10
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    goto :goto_0

    .line 11
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    if-eq p1, v1, :cond_4

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    .line 13
    :cond_4
    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/16 v0, 0x80

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setZoomIndexButtons(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportSatZoomSpline()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mIsSupportSatZoomSpline:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mOnItemClickListener:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout$OnIndexButtonClickListener;

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mZoomIndexes:Ljava/util/List;

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mSelectIndex:I

    move p2, v1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 10
    new-instance v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v4, v2, v3

    rem-float/2addr v4, v3

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    :goto_1
    float-to-int v3, v2

    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 15
    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setText(ILjava/lang/String;)V

    .line 17
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mChildSize:I

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setRotation(F)V

    .line 19
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->mBackGroundColor:I

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setNormalBackgroundColor(I)V

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f12006c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    .line 21
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
