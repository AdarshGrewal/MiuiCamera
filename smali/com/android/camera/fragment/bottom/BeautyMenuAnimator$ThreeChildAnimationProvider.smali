.class public Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;
.super Ljava/lang/Object;
.source "BeautyMenuAnimator.java"

# interfaces
.implements Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ChildAnimationsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreeChildAnimationProvider"
.end annotation


# instance fields
.field public mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    return-void
.end method


# virtual methods
.method public expandAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v4, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v4, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider$1;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider$1;-><init>(Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;)V

    .line 8
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    const-wide/16 v9, 0x50

    invoke-virtual {v8, v9, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    iget-object v10, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v8, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    .line 10
    invoke-virtual {v8, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    .line 11
    invoke-virtual {v8, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    iget-object v10, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 12
    invoke-virtual {v8, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    .line 14
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    .line 17
    invoke-virtual {v8, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 19
    invoke-virtual {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 20
    invoke-virtual {v5, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-object v0
.end method

.method public shrinkAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/2addr v6, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 7
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v7, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    iget-object v9, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v6, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v6, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider$2;

    invoke-direct {v6, p0}, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider$2;-><init>(Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;)V

    .line 9
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    const-wide/16 v11, 0x96

    invoke-virtual {v9, v11, v12}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    iget-object v11, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v9, v11}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v9, v11

    div-int/2addr v9, v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    .line 11
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v11

    .line 12
    invoke-virtual {v11, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    .line 13
    invoke-virtual {v9, v7, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    iget-object v11, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 14
    invoke-virtual {v9, v11}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    .line 15
    invoke-virtual {v9, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    .line 16
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v9, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr p1, v9

    div-int/2addr p1, v4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr p1, v4

    int-to-float p1, p1

    .line 19
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 20
    invoke-virtual {v4, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v7, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ThreeChildAnimationProvider;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 22
    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    return-object v0
.end method
