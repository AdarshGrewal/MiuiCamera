.class public Lcom/android/camera/fragment/top/LastAnimationComponent;
.super Ljava/lang/Object;
.source "LastAnimationComponent.java"


# instance fields
.field public mAnchorView:Landroid/view/View;

.field public mExpandOffset:I

.field public mGravity:I

.field public mHidedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mQuartEaseIn:Landroid/view/animation/Interpolator;

.field public mQuartEaseOut:Landroid/view/animation/Interpolator;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mReverseLeft:I

.field public mReverseRecyclerViewLeft:I

.field public mShowDelay:I

.field public mShown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/view/animation/QuarticEaseInInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/QuarticEaseInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseIn:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Lmiuix/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/QuarticEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public hideOtherViews(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->getConfigItem()I

    move-result v1

    if-ne v1, p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 13
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 14
    invoke-virtual {v1, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    if-lez v3, :cond_5

    const-wide/16 v3, 0x8c

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x118

    .line 15
    :goto_2
    invoke-virtual {v1, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mExpandOffset:I

    int-to-float v2, v2

    .line 17
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseIn:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 18
    :goto_3
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public reverse(Z)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    const/4 v1, 0x1

    const-wide/16 v2, 0x118

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {v8, v7}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 6
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    .line 7
    invoke-virtual {v9, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    .line 8
    invoke-virtual {v9, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v9, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    .line 10
    invoke-virtual {v9, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 11
    invoke-virtual {v9, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    .line 12
    invoke-virtual {v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 13
    invoke-virtual {v8, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v8, v7}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 15
    invoke-static {v8}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iput-object v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 19
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v8, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    iget-object v9, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    .line 20
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v8, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 23
    invoke-virtual {v0, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 25
    :cond_4
    iget v8, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v0, v8}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 26
    :goto_1
    iput-object v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    :cond_5
    if-eqz p1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    iget-object v4, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 32
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/top/LastAnimationComponent$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/LastAnimationComponent$1;-><init>(Lcom/android/camera/fragment/top/LastAnimationComponent;)V

    .line 33
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    .line 35
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v7}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 38
    iput-object v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :goto_2
    return v1
.end method

.method public setExpandGravity(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mGravity:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 p1, -0xc8

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mExpandOffset:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    .line 4
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mExpandOffset:I

    const/16 p1, 0x8c

    .line 5
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    :goto_0
    return-void
.end method

.method public showExtraView(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    int-to-long v0, v0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    int-to-float p2, p2

    .line 6
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x118

    .line 7
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 8
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public translateAnchorView(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-float p1, p1

    .line 2
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    int-to-long v0, v0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x118

    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
