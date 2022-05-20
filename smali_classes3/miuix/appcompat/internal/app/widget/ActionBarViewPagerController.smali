.class public Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;,
        Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;
    }
.end annotation


# instance fields
.field public mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

.field public mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

.field public mActionMenuChangeAnimatorObject:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

.field public mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

.field public mTabListener:Landroidx/appcompat/app/ActionBar$TabListener;

.field public mViewPager:Lmiuix/viewpager/widget/ViewPager;

.field public mViewPagerDecor:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;

    invoke-direct {p3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V

    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/ActionBar$TabListener;

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 6
    sget v0, Lmiuix/appcompat/R$id;->view_pager:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lmiuix/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lmiuix/viewpager/widget/ViewPager;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lmiuix/viewpager/widget/ViewPager;

    invoke-direct {v0, p3}, Lmiuix/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 10
    sget v1, Lmiuix/appcompat/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 11
    new-instance v0, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {v0, p3}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 13
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-direct {v1}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>()V

    .line 14
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    const v1, 0x1020002

    .line 16
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :goto_0
    new-instance p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-direct {p1, p3, p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 20
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    new-instance p2, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;

    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/OriginalViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;)V

    if-eqz p4, :cond_1

    .line 22
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-direct {p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;-><init>(Lmiuix/viewpager/widget/ViewPager;Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    return-object p0
.end method


# virtual methods
.method public addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 6
    move-object v0, p2

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setInternalTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/ActionBar$Tab;I)V

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)I

    move-result p1

    .line 9
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    :cond_0
    return p1
.end method

.method public addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 1
    move-object v0, p2

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setInternalTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)I

    move-result p1

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    :cond_0
    return p1
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFragmentAt(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentTabCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->getOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method public removeAllFragmentTab()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveAllTabs()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeAllFragment()V

    return-void
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragment(Landroidx/fragment/app/Fragment;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTabAt(I)V

    :cond_0
    return-void
.end method

.method public removeFragmentAt(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragmentAt(I)V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTabAt(I)V

    return-void
.end method

.method public removeFragmentTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragment(Landroidx/appcompat/app/ActionBar$Tab;)I

    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->findPositionByTag(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->removeFragmentAt(I)V

    :cond_0
    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->setFragmentActionMenuAt(IZ)V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 5
    fill-array-data v1, :array_0

    const-string v2, "Value"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->reset(IZ)V

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setViewPagerDecor(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    .line 4
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-direct {p1}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/viewpager/widget/OriginalViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
