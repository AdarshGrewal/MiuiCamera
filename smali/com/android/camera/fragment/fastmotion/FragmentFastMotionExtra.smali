.class public Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFastMotionExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$ItemPadding;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfffff2


# instance fields
.field public mCurrentTitle:I

.field public mData:Lcom/android/camera/data/data/ComponentData;

.field public mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

.field public mHorizontalViewLayout:Landroid/widget/RelativeLayout;

.field public mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field public mNeedAnimation:Z

.field public mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return-void
.end method

.method private animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p3}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private animateShowView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mNeedAnimation:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_0
    return-void
.end method

.method private hideView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initAdapter(Lcom/android/camera/data/data/ComponentData;)V
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000OO()Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->initHorizontalListView(Lcom/android/camera/data/data/ComponentData;Z)V

    return-void
.end method

.method private initHorizontalListView(Lcom/android/camera/data/data/ComponentData;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->hideView()V

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    .line 3
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    .line 5
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    int-to-float v1, v1

    aput v1, v3, v5

    aput v2, v3, v4

    invoke-static {p2, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v3, v5

    aput v2, v3, v4

    invoke-static {p2, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 9
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 10
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$1;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return-void
.end method

.method public animateOut()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0O0;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0O0;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCurrentTitle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffff2

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d007b

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0263

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const v0, 0x7f0a0262

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mNeedAnimation:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mNeedAnimation:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setRotate(I)V

    :cond_0
    return-void
.end method

.method public resetData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mCurrentTitle:I

    return-void
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    iput-boolean p3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mNeedAnimation:Z

    .line 4
    iput-object p4, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    return-void
.end method

.method public updateData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method
