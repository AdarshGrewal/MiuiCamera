.class public Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFastmotionProExtra.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$ItemPadding;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfe


# instance fields
.field public mAutoButton:Lcom/android/camera/ui/ColorImageView;

.field public mCurrentTitle:I

.field public mData:Lcom/android/camera/data/data/ComponentData;

.field public mExtraList:Landroidx/recyclerview/widget/RecyclerView;

.field public mFragmentFastmotionPro:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

.field public mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

.field public mHorizontalViewLayout:Landroid/widget/RelativeLayout;

.field public mIsAnimateIng:Z

.field public mIsRecording:Z

.field public mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field public mNeedAnimation:Z

.field public mTargetKey:I

.field public mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

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
    iget-boolean v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mNeedAnimation:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_0
    return-void
.end method

.method private hideView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initAdapter(Lcom/android/camera/data/data/ComponentData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initSlideFocusView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initLensRecyclerView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initWBRecyclerView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000OO()Z

    move-result v0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initHorizontalListView(Lcom/android/camera/data/data/ComponentData;Z)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f120719 -> :sswitch_3
        0x7f12073e -> :sswitch_3
        0x7f1207d6 -> :sswitch_2
        0x7f1207e6 -> :sswitch_1
        0x7f120817 -> :sswitch_3
        0x7f120831 -> :sswitch_0
    .end sparse-switch
.end method

.method private initHorizontalListView(Lcom/android/camera/data/data/ComponentData;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->hideView()V

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p2

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v4, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    const p1, 0x7f120719

    const/4 v2, 0x1

    if-eq p2, p1, :cond_1

    const p1, 0x7f12073e

    if-eq p2, p1, :cond_0

    const p1, 0x7f120817

    if-eq p2, p1, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f07039c

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const p2, 0x7f0802e8

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const p2, 0x7f0802e9

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const p2, 0x7f120865

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string p1, "0"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, v2, v2}, Lcom/android/camera/ui/ColorImageView;->setIsNeedTransparent(ZZ)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private initLensRecyclerView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->hideView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$2;

    iget-object v5, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mFragmentFastmotionPro:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v8, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget v10, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$2;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)V

    .line 7
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_extra_list"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$ItemPadding;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private initSlideFocusView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->hideView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    .line 4
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    .line 8
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const v2, 0x7f0802e8

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const v2, 0x7f0802e9

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const v2, 0x7f120865

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v2, v1, v1}, Lcom/android/camera/ui/ColorImageView;->setIsNeedTransparent(ZZ)V

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mapValueToPosition(Ljava/lang/Integer;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, p1, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private initWBRecyclerView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->hideView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$1;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v7, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$1;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)V

    .line 7
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_extra_list"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$ItemPadding;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

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

    new-instance v1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$3;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;Landroid/view/View;Landroid/view/View;)V

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
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

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
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0oo;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0oo;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCurrentTitle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xfe

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0093

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0264

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0a0263

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const v0, 0x7f0a0262

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0261

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v3, "0"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    .line 5
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz p1, :cond_0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 10
    :sswitch_1
    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v5

    .line 13
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    .line 14
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, p1, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    .line 17
    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v7, "0"

    invoke-interface/range {v4 .. v9}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 18
    :sswitch_2
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    .line 19
    :sswitch_3
    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v5

    .line 22
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    .line 23
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, p1, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    .line 26
    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v7, "0"

    invoke-interface/range {v4 .. v9}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f120719 -> :sswitch_3
        0x7f1207d6 -> :sswitch_2
        0x7f120817 -> :sswitch_1
        0x7f120831 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mNeedAnimation:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mNeedAnimation:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V

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
    .locals 2
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
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    instance-of v1, v0, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;->setDegree(I)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setRotate(I)V

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    if-eqz p2, :cond_6

    .line 11
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    const v1, 0x7f1207d6

    if-ne v0, v1, :cond_5

    .line 12
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_4

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p1, 0x43340000    # 180.0f

    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_2
    return-void

    .line 15
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public resetData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

    return-void
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    iput-boolean p3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mNeedAnimation:Z

    .line 4
    iput-object p4, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    return-void
.end method

.method public setmFragmentManually(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mFragmentFastmotionPro:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    return-void
.end method

.method public showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getDisplayTitleString()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    .line 3
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v6, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    move-object v1, v0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentManuallyWB;IZLcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const v1, 0x7f1207d6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    .line 6
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getCustomWB(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mapValueToPosition(Ljava/lang/Integer;)F

    move-result p1

    float-to-int p1, p1

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07039c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, v0, v0}, Lcom/android/camera/ui/ColorImageView;->setIsNeedTransparent(ZZ)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const p2, 0x7f0802f0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const p2, 0x7f0802f1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const p2, 0x7f1204cd

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_1

    const/16 p2, 0x5a

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 19
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public toUpdateAutoButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ColorImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/ColorImageView;->setIsNeedTransparent(ZZ)V

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
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method

.method public updateRecordingState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mIsRecording:Z

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
