.class public Lmiuix/appcompat/internal/app/widget/ActionBarView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field public static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field public static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field public static final ICON_INITIALIZED:I = 0x1

.field public static final LOGO_INITIALIZED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ActionBarView"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I


# instance fields
.field public mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

.field public mCollapseContainer:Landroid/widget/FrameLayout;

.field public mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field public mCollapseCustomContainer:Landroid/widget/FrameLayout;

.field public mCollapseHeight:I

.field public mCollapseSubtitleStyleRes:I

.field public mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

.field public mCollapseTabHeight:I

.field public mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field public mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

.field public mCollapseTitleShowable:Z

.field public mCollapseTitleStyleRes:I

.field public mContext:Landroid/content/Context;

.field public mCustomNavView:Landroid/view/View;

.field public final mCustomTitleWatcher:Landroid/text/TextWatcher;

.field public mDisplayOptions:I

.field public mEndView:Landroid/view/View;

.field public mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field public mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

.field public mExpandedActionView:Landroid/view/View;

.field public final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field public mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field public mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field public mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field public mHomeAsUpIndicatorResId:I

.field public mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field public final mHomeResId:I

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconLogoInitIndicator:I

.field public mImmersionView:Landroid/view/View;

.field public mInActionMode:Z

.field public mInSearchMode:Z

.field public mIncludeTabs:Z

.field public mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field public mIsCollapsed:Z

.field public mIsTitleHidding:Z

.field public mIsTitleShowing:Z

.field public mItemPadding:I

.field public mListNavLayout:Landroid/widget/LinearLayout;

.field public mLogo:Landroid/graphics/drawable/Drawable;

.field public mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field public mMovableContainer:Landroid/widget/FrameLayout;

.field public mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field public mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

.field public mMovableTabHeight:I

.field public final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mNavigationMode:I

.field public mNonTouchScrolling:Z

.field public mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mPendingHeight:I

.field public mPostScroll:Ljava/lang/Runnable;

.field public mPostScroller:Landroid/widget/Scroller;

.field public mProgressBarPadding:I

.field public mProgressView:Landroid/widget/ProgressBar;

.field public mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field public mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field public mSpinner:Landroid/widget/Spinner;

.field public mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field public mStartView:Landroid/view/View;

.field public mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

.field public mSubtitle:Ljava/lang/CharSequence;

.field public mTempResizable:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCenter:Z

.field public final mTitleClickListener:Landroid/view/View$OnClickListener;

.field public mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field public mTitleUpView:Landroid/view/View;

.field public mTouchScrolling:Z

.field public mTransitionTarget:I

.field public mUncollapsePaddingH:I

.field public final mUpClickListener:Landroid/view/View$OnClickListener;

.field public mUserTitle:Z

.field public mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 4
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 5
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 6
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 7
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 8
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 10
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 11
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 12
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 13
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 14
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 15
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 16
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 17
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    .line 19
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    .line 20
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 21
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 22
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 23
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 25
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    .line 26
    sget v3, Lmiuix/appcompat/R$id;->action_bar_collapse_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 27
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 28
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 29
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 30
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 31
    sget v3, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 32
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 35
    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 36
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 38
    new-instance v2, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {v2, p1}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 39
    sget v3, Lmiuix/appcompat/R$id;->action_bar_collapse_tab_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    .line 40
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 41
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 42
    new-instance v2, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {v2, p1}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 43
    sget v3, Lmiuix/appcompat/R$id;->action_bar_movable_tab_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    .line 44
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 51
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 53
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 54
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 55
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    .line 56
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 57
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 59
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_homeLayout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_home:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 60
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    .line 61
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    .line 62
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_progressBarPadding:I

    .line 63
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 64
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 65
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 66
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 68
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 69
    :cond_2
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mContentHeight:I

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 72
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const v3, 0x1020016

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 73
    new-instance v0, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/ActionBar$OnNavigationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    return-void
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method public static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method public static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method public static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method public static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method public static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method public static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method public static synthetic access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method public static synthetic access$2202(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    return p1
.end method

.method public static synthetic access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    return p0
.end method

.method public static synthetic access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    return p0
.end method

.method public static synthetic access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$2600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTempResizable:Z

    return p0
.end method

.method public static synthetic access$2602(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTempResizable:Z

    return p1
.end method

.method public static synthetic access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    return-object p0
.end method

.method public static synthetic access$2800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    return p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initExpandedHomeLayout()V

    return-void
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method public static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    return-object p0
.end method

.method private addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 2
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 4
    iput-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, -0x1

    const/4 p4, -0x2

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 18
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result p1

    if-nez p1, :cond_7

    instance-of p1, p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    .line 21
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 23
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    .line 25
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 27
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_6

    .line 28
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_9

    .line 30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 31
    :cond_7
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 32
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_8

    .line 33
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 34
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 35
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_9

    .line 36
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 37
    :cond_9
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 38
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 40
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 43
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    :cond_b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 46
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    :cond_c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 49
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    :cond_d
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    return-void
.end method

.method private addTitleView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 12
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private addedCustomView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeCollapseContainer()Z

    .line 4
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    .line 5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .locals 14

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 2
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/16 v3, 0x14

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ne v2, v4, :cond_5

    cmpl-float v2, v0, v5

    const/4 v9, 0x3

    const-wide/16 v10, 0x1

    const-string v12, "target"

    if-lez v2, :cond_0

    .line 4
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    if-nez v2, :cond_2

    .line 5
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 6
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v13, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2, v5, v7, v3, v13}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 8
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v2, :cond_2

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v12, v2, v7

    aput-object v8, v2, v6

    .line 9
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v8, v4, [Ljava/lang/Object;

    const-string v10, "expand"

    aput-object v10, v8, v7

    iget v11, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 11
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v6

    invoke-interface {v2, v8}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v10, v8, v7

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v6

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v3, v8, v4

    invoke-interface {v2, v8}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 13
    :cond_0
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    if-nez v2, :cond_2

    .line 14
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 15
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 16
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v13, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2, v3, v7, v7, v13}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v2, :cond_2

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v12, v2, v7

    aput-object v8, v2, v6

    .line 18
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 19
    invoke-interface {v2, v8}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v10, "collapse"

    aput-object v10, v3, v7

    iget v11, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 20
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v6

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v10, v3, v7

    aput-object v8, v3, v6

    .line 21
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v6, v3, v4

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 22
    :cond_2
    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v3, :cond_3

    move v0, v5

    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2, v0, v7, v7, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x4

    .line 24
    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    :cond_5
    if-ne v2, v6, :cond_7

    .line 25
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v5, v7, v3, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v0, :cond_6

    move v1, v5

    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 27
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    goto :goto_3

    :cond_7
    if-nez v2, :cond_9

    .line 28
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v0, :cond_8

    move v1, v5

    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 29
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v5, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 30
    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    :cond_9
    :goto_3
    return-void
.end method

.method private canTitleBeShown()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 3
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->canTitleBeShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private clipViewBounds(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private computeTitleCenterLayoutStart(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    add-int/2addr v2, p1

    :cond_0
    sub-int/2addr v1, v2

    return v1
.end method

.method private configPresenters(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method private freeCollapseContainer()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return v1
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x1020016

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    .line 4
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 8
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    .line 5
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 9
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initExpandedHomeLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initHomeLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 6
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 8
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    .line 9
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private initTitle()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateTitleUpView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    invoke-static {v0, v2, v3}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateCollapseTitle(Landroid/content/Context;II)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateExpandTitle(Landroid/content/Context;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 8
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 9
    :goto_0
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    .line 10
    :goto_1
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_3

    if-eqz v0, :cond_4

    move v2, v1

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :cond_4
    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v1

    :goto_4
    invoke-virtual {v2, v5}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 13
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setEnabled(Z)V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v0, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0o0;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0o0;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 22
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 23
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTitleView(Landroid/view/View;Landroid/view/View;)V

    .line 24
    new-instance v0, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO00o;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO00o;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_a

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    :cond_a
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 28
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private isShowTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSimpleCustomNavView()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    goto :goto_1

    .line 4
    :cond_2
    iget v0, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 5
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v0

    const v3, 0x800005

    if-ne v0, v3, :cond_1

    :cond_3
    :goto_1
    return v1
.end method

.method private isTitleCenter()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSimpleCustomNavView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private normalizeHorizontalGravity(IZ)I
    .locals 3

    const v0, 0x800007

    and-int/2addr p1, v0

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const v1, 0x800005

    const v2, 0x800003

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method private onLayoutCollapseViews(ZIIIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    .line 3
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    if-gtz v9, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    :goto_0
    const/16 v10, 0x8

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_2

    .line 7
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v2

    add-int v3, v0, v2

    .line 8
    invoke-virtual {v6, v1, v3, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v6, v1, v0, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-nez v1, :cond_f

    .line 12
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 13
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v6, v1, v0, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    move v5, v0

    .line 15
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_5

    .line 17
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->computeTitleCenterLayoutStart(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v5

    .line 18
    :goto_2
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canTitleBeShown()Z

    move-result v0

    iput-boolean v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 19
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 20
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    .line 21
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v1, v9, v0

    .line 22
    div-int/2addr v1, v14

    add-int v3, v7, v1

    .line 23
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int v16, v3, v0

    move-object/from16 v0, p0

    move v11, v5

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    move v0, v11

    goto :goto_3

    :cond_6
    move v11, v5

    .line 24
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0, v11, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v0, v11

    .line 25
    :cond_7
    :goto_3
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    if-eq v1, v12, :cond_d

    if-eq v1, v14, :cond_8

    goto :goto_7

    .line 26
    :cond_8
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, v12, :cond_9

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_9

    .line 27
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_f

    .line 28
    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 29
    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v1

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/2addr v2, v14

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    div-int/2addr v3, v14

    if-eqz v15, :cond_a

    .line 32
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    :cond_a
    move v0, v3

    if-eqz v8, :cond_b

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    if-eqz v8, :cond_c

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    goto :goto_6

    :cond_c
    move v4, v0

    .line 35
    :goto_6
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int/2addr v1, v7

    invoke-virtual {v2, v3, v7, v4, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_7

    .line 36
    :cond_d
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f

    if-eqz v15, :cond_e

    .line 37
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v1

    .line 38
    :cond_e
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v0, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_f
    :goto_7
    sub-int v1, p4, p2

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 40
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v6, :cond_10

    .line 41
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 42
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 43
    :cond_10
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 44
    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 45
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 46
    :cond_11
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_12

    .line 47
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_12

    .line 48
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v3, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v3, v1, v3

    invoke-virtual {v6, v2, v3, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 49
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    iget v3, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v3, v14

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 50
    :cond_12
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_13

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_13

    .line 52
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 53
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 54
    :cond_13
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v3, 0x10

    if-eqz v2, :cond_14

    goto :goto_8

    .line 55
    :cond_14
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_25

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_25

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 58
    instance-of v5, v4, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_16

    move-object v11, v4

    check-cast v11, Landroidx/appcompat/app/ActionBar$LayoutParams;

    goto :goto_9

    :cond_16
    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_17

    .line 59
    iget v4, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_a

    :cond_17
    const v4, 0x800013

    .line 60
    :goto_a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eqz v11, :cond_18

    .line 61
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    add-int/2addr v0, v7

    .line 62
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v1, v7

    .line 63
    iget v7, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    iget v9, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_b

    :cond_18
    move v7, v13

    move v9, v7

    :goto_b
    const v10, 0x800007

    and-int/2addr v10, v4

    const v11, 0x800005

    const/4 v15, -0x1

    const v13, 0x800003

    if-ne v10, v12, :cond_1a

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    sub-int v16, v16, v5

    div-int/lit8 v3, v16, 0x2

    if-ge v3, v0, :cond_19

    goto :goto_c

    :cond_19
    add-int/2addr v3, v5

    if-le v3, v1, :cond_1b

    move v10, v11

    goto :goto_d

    :cond_1a
    if-ne v4, v15, :cond_1b

    :goto_c
    move v10, v13

    .line 66
    :cond_1b
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    .line 67
    invoke-direct {v6, v10, v8}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v10

    if-eq v10, v12, :cond_1d

    if-eq v10, v13, :cond_1e

    if-eq v10, v11, :cond_1c

    move v0, v3

    goto :goto_e

    :cond_1c
    sub-int v0, v1, v5

    goto :goto_e

    .line 68
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/2addr v0, v14

    :cond_1e
    :goto_e
    and-int/lit8 v1, v4, 0x70

    if-ne v4, v15, :cond_1f

    const/16 v1, 0x10

    :cond_1f
    const/16 v3, 0x10

    if-eq v1, v3, :cond_22

    const/16 v3, 0x30

    if-eq v1, v3, :cond_21

    const/16 v3, 0x50

    if-eq v1, v3, :cond_20

    const/4 v1, 0x0

    goto :goto_f

    .line 69
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v9

    goto :goto_f

    .line 70
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v7

    goto :goto_f

    .line 71
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v1, v3, 0x2

    .line 74
    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eqz v8, :cond_23

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    goto :goto_10

    :cond_23
    move v4, v0

    :goto_10
    if-eqz v8, :cond_24

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_11

    :cond_24
    add-int/2addr v3, v0

    .line 77
    :goto_11
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 78
    :cond_25
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_26

    .line 79
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 80
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v14

    .line 81
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v3, v0

    .line 82
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 83
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 84
    :cond_26
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_29

    .line 85
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    add-int v7, p2, v0

    sub-int v8, p4, v0

    .line 86
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v9

    .line 87
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    add-int v5, p5, p6

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, p5

    move v4, v8

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    sub-int/2addr v8, v7

    sub-int/2addr v8, v9

    .line 88
    div-int/2addr v8, v14

    const/4 v0, 0x0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v0, v1

    .line 89
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_27

    neg-float v0, v0

    .line 90
    :cond_27
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setTranslationX(F)V

    .line 91
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 92
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p4, v1

    sub-int/2addr v1, v9

    mul-int/2addr v0, v14

    sub-int v9, p4, v0

    move v0, v1

    goto :goto_12

    :cond_28
    const/4 v0, 0x0

    .line 93
    :goto_12
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v9, v2}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    :cond_29
    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 8
    :goto_0
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 11
    new-instance v0, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0O0;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0O0;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 14
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method

.method private setTitleVisibility(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2
    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 4
    :goto_1
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 5
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    .line 6
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    .line 7
    :goto_2
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v2

    .line 8
    :goto_3
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v3, :cond_7

    if-eqz p1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v0

    :cond_7
    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 9
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    const/16 v1, 0x2710

    if-ge p2, v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 4
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_1

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    .line 5
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x2

    if-ne p1, v4, :cond_5

    const/16 p1, 0x8

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    if-eqz v0, :cond_9

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v4, -0x3

    if-ne p1, v4, :cond_6

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_6
    const/4 v4, -0x4

    if-ne p1, v4, :cond_7

    .line 10
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_7
    if-ltz p1, :cond_9

    if-gt p1, v2, :cond_9

    add-int/lit8 v3, p1, 0x0

    .line 11
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge p1, v2, :cond_8

    .line 12
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 13
    :cond_8
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateTightTitle()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 3
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    .line 4
    :goto_2
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {v4, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    :cond_3
    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v0, :cond_5

    :cond_4
    move v2, v1

    .line 7
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    :cond_6
    return-void
.end method

.method private updateTitleCenter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->updateTitleCenter(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_horizontal_padding_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v3, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public collapseActionView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    :goto_0
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object v4, v0

    check-cast v4, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_layout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_layout:I

    sget v7, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    sget v8, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    .line 4
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 5
    sget p1, Lmiuix/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setId(I)V

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ActionBarOverlayLayout not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 2

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$1;)V

    return-object v0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getExpandState()I
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSplitActionBarHeight(Z)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideImmersionMore()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initImmersionMore(ILmiuix/appcompat/app/ActionBarDelegateImpl;)V
    .locals 3

    const-string v0, "ActionBarView"

    if-gtz p1, :cond_0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to initialize invalid layout for immersion more button: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    const-string p1, "Don\'t show immersion menu button for custom action bar"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v1, :cond_2

    const-string p1, "Don\'t show immersion menu button for null display option"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    sget v0, Lmiuix/appcompat/R$id;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public initIndeterminateProgress()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->actionBarIndeterminateProgressStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 2
    sget v1, Lmiuix/appcompat/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isResizable()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTightTitleWithEmbeddedTabs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActionModeEnd(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 11
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 13
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_5
    return-void
.end method

.method public onActionModeStart(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    if-eqz p2, :cond_3

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_3
    return-void
.end method

.method public onAnimatedExpandStateChanged(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr p1, v2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 4
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 5
    :cond_2
    :goto_0
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;

    invoke-direct {v3, p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    if-ne p2, v0, :cond_3

    .line 6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-ne p2, v0, :cond_4

    .line 7
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    .line 9
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    :goto_2
    const-string p2, "actionbar_state_change"

    new-array v3, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, v4, v5}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v1

    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    aput-object p1, v5, v4

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 8
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_horizontal_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_horizontal_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_3

    .line 21
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 22
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_4

    .line 25
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 26
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method public onExpandStateChanged(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    if-nez p2, :cond_2

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    sub-int/2addr p1, p2

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    add-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 12

    move-object v8, p0

    .line 1
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 2
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_0
    move v5, v0

    .line 4
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    move v6, v0

    .line 5
    :goto_0
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 6
    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    move v7, v2

    .line 7
    :goto_1
    iget v2, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 8
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    add-int v1, v0, v7

    :cond_4
    :goto_2
    sub-int v2, p5, p3

    sub-int v9, v2, v7

    sub-int v10, v9, v1

    add-int v2, v0, v7

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float v11, v1, v0

    .line 9
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v0, :cond_5

    .line 10
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    sub-float/2addr v1, v11

    invoke-interface {v0, v1, v11}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarMove(FF)V

    :cond_5
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v4, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutCollapseViews(ZIIIII)V

    move v3, v10

    move v5, v9

    move v6, v7

    move v7, v11

    .line 12
    invoke-virtual/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutExpandViews(ZIIIIIF)V

    .line 13
    invoke-direct {p0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->animateLayoutWithProcess(F)V

    .line 14
    iput v11, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    return-void
.end method

.method public onLayoutExpandViews(ZIIIIIF)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p7

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    const/4 v10, 0x0

    if-gtz v0, :cond_0

    .line 2
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    goto :goto_0

    :cond_0
    move v0, v10

    .line 3
    :goto_0
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    move v11, v1

    goto :goto_1

    :cond_1
    move v11, v10

    .line 5
    :goto_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    move v12, v1

    goto :goto_2

    :cond_2
    move v12, v10

    :goto_2
    add-int v1, p3, v11

    add-int/2addr v1, v12

    sub-int/2addr v1, v9

    add-int v13, v1, v0

    .line 9
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    sub-int v1, v9, v11

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 12
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ne v0, v14, :cond_3

    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_3

    :cond_3
    move-object v0, v15

    :goto_3
    if-eqz v0, :cond_5

    .line 14
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 15
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v1, v8, v1

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 17
    :cond_4
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 18
    :cond_5
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    add-int v5, v11, v12

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    .line 19
    :cond_6
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_a

    .line 20
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    add-int v2, v7, v0

    add-int v5, v9, p6

    .line 21
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int v3, v5, v0

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v4, v8, v0

    move-object/from16 v0, p0

    .line 22
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 23
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v14, :cond_7

    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_7

    .line 24
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    :cond_7
    if-eqz v15, :cond_9

    .line 25
    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 26
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 28
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v8, v1

    goto :goto_4

    :cond_8
    move v1, v0

    move v0, v10

    .line 29
    :goto_4
    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v15, v0, v10, v1, v2}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 30
    :cond_9
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    sub-int v0, v11, v12

    sub-int v3, v13, v0

    add-int v5, v11, v12

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    :cond_a
    return-void
.end method

.method public onMeasure(II)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ge v3, v1, :cond_2

    .line 2
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_1

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v6, v5, :cond_0

    .line 4
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-nez v4, :cond_3

    .line 5
    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 6
    iput-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    .line 7
    :cond_3
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 9
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mContentHeight:I

    if-lez v6, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 11
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v8

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v9

    sub-int v10, v6, v7

    const/high16 v11, 0x40000000    # 2.0f

    .line 14
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v13, -0x80000000

    .line 15
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    sub-int v15, v4, v8

    sub-int/2addr v15, v9

    .line 16
    div-int/lit8 v16, v15, 0x2

    .line 17
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 18
    invoke-virtual {v0, v3, v15, v14, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 19
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v8, v3

    .line 20
    :cond_5
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {v0, v3, v15, v14, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 22
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v9, v3

    .line 23
    :cond_6
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 24
    :goto_2
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 25
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_8
    if-eqz v3, :cond_a

    .line 26
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_a

    .line 27
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 28
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_9

    .line 29
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_3

    .line 30
    :cond_9
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 31
    :goto_3
    invoke-virtual {v3, v2, v12}, Landroid/widget/FrameLayout;->measure(II)V

    .line 32
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v15, v2

    const/4 v3, 0x0

    .line 33
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v13, v15, v2

    .line 34
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/2addr v8, v2

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    move/from16 v13, v16

    .line 35
    :goto_4
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_b

    .line 36
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v2, v15, v14, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 37
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v16, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 38
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 39
    :cond_b
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    if-eqz v2, :cond_c

    .line 40
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_c

    .line 41
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v11, v3

    invoke-virtual {v0, v2, v15, v14, v11}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 42
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 43
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int v16, v16, v2

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v2, v3

    sub-int v2, v16, v2

    const/4 v11, 0x0

    .line 44
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 45
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 46
    :cond_c
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_d

    .line 48
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v15, v14, v11}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 49
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v16, v2

    .line 51
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 52
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    :cond_d
    move/from16 v2, v16

    .line 53
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 54
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTitleCenter()V

    .line 55
    :cond_e
    iget-object v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    if-eqz v14, :cond_f

    goto :goto_5

    .line 56
    :cond_f
    iget v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v14, v14, 0x10

    if-eqz v14, :cond_10

    iget-object v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v14, :cond_10

    goto :goto_5

    :cond_10
    move-object/from16 v14, v16

    .line 57
    :goto_5
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-nez v3, :cond_11

    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v3, :cond_12

    :cond_11
    if-eqz v14, :cond_12

    .line 58
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    if-eqz v14, :cond_1c

    .line 59
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_1c

    .line 60
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 61
    instance-of v5, v3, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_13

    move-object/from16 v16, v3

    check-cast v16, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_13
    move-object/from16 v5, v16

    move/from16 v16, v6

    if-eqz v5, :cond_14

    .line 62
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 63
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v6

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    goto :goto_6

    :cond_14
    move/from16 v17, v7

    const/4 v6, 0x0

    const/16 v18, 0x0

    .line 64
    :goto_6
    iget v7, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v19, v1

    const/4 v1, -0x2

    if-gtz v7, :cond_16

    :cond_15
    const/high16 v7, -0x80000000

    goto :goto_7

    .line 65
    :cond_16
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v1, :cond_15

    const/high16 v7, 0x40000000    # 2.0f

    .line 66
    :goto_7
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_17

    .line 67
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_17
    sub-int/2addr v10, v6

    const/4 v1, 0x0

    .line 68
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 69
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-eq v10, v1, :cond_18

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_8

    :cond_18
    const/high16 v1, -0x80000000

    .line 70
    :goto_8
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_19

    .line 71
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_9

    :cond_19
    move v10, v15

    :goto_9
    sub-int v10, v10, v18

    move/from16 v20, v12

    const/4 v12, 0x0

    .line 72
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v5, :cond_1a

    .line 73
    iget v5, v5, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_a

    :cond_1a
    const v5, 0x800013

    :goto_a
    const v12, 0x800007

    and-int/2addr v5, v12

    const/4 v12, 0x1

    if-ne v5, v12, :cond_1b

    .line 74
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1b

    .line 75
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x2

    mul-int/lit8 v10, v2, 0x2

    .line 76
    :cond_1b
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 77
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 78
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    .line 79
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v18, v18, v1

    sub-int v15, v15, v18

    goto :goto_b

    :cond_1c
    move/from16 v19, v1

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    .line 80
    :goto_b
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_1f

    if-eqz v11, :cond_1f

    .line 81
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mContentHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 82
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v2, :cond_1d

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v0, v2, v15, v1, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 84
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v8, v2

    .line 85
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 86
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 87
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    sub-int v2, v4, v2

    const/4 v5, 0x0

    .line 88
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v6, -0x80000000

    .line 89
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 90
    invoke-virtual {v3, v2, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 91
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v15, v1

    goto :goto_c

    :cond_1e
    const/4 v5, 0x0

    .line 92
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v15, v1, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    goto :goto_c

    :cond_1f
    const/4 v5, 0x0

    .line 93
    :goto_c
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/high16 v2, -0x80000000

    .line 94
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 95
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 96
    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 97
    iput v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    .line 98
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_20

    .line 99
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 100
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_20

    .line 101
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 102
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 103
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 105
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 106
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    .line 107
    iput v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    move v3, v2

    const/4 v2, 0x0

    goto :goto_d

    :cond_20
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 108
    :goto_d
    iput v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    .line 109
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v5, :cond_21

    .line 110
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_21

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 111
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_21

    .line 112
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 113
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 114
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 115
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->measure(II)V

    .line 116
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 117
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    .line 118
    iput v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    goto :goto_e

    :cond_21
    const/4 v2, 0x0

    .line 119
    :goto_e
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v5, :cond_26

    .line 120
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_24

    const/4 v6, 0x2

    if-eq v5, v6, :cond_22

    goto :goto_f

    .line 121
    :cond_22
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 122
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    .line 123
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    .line 124
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v7, 0x0

    .line 125
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 126
    invoke-virtual {v6, v5, v8}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 127
    :cond_23
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 128
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 129
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    .line 130
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 131
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 132
    invoke-virtual {v6, v1, v7}, Landroid/widget/HorizontalScrollView;->measure(II)V

    goto :goto_f

    .line 133
    :cond_24
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_26

    .line 134
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    if-eqz v11, :cond_25

    const/4 v5, 0x2

    mul-int/2addr v1, v5

    :cond_25
    sub-int/2addr v15, v1

    const/4 v1, 0x0

    .line 135
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 136
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v7, -0x80000000

    .line 137
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move/from16 v7, v20

    .line 138
    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_10

    :cond_26
    :goto_f
    const/4 v1, 0x0

    .line 139
    :goto_10
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mContentHeight:I

    if-gtz v5, :cond_29

    move v2, v1

    move/from16 v3, v19

    :goto_11
    if-ge v2, v3, :cond_28

    .line 140
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 141
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v5, v17

    if-le v5, v1, :cond_27

    move v1, v5

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 142
    :cond_28
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_12

    :cond_29
    add-int v6, v16, v2

    .line 143
    iput v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    .line 144
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 145
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    add-int v1, v16, v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 146
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_12

    :cond_2a
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 147
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int v6, v16, v1

    add-int/2addr v6, v3

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_12

    .line 148
    :cond_2b
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 149
    :goto_12
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2c

    .line 150
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_2c
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 1

    if-lez p3, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    if-le p1, p2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    .line 3
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 4
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    const/4 v0, 0x1

    if-lt p1, p5, :cond_0

    sub-int p1, p2, p3

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 6
    aget p1, p4, v0

    add-int/2addr p1, p3

    aput p1, p4, v0

    .line 7
    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p1, p2, :cond_1

    sub-int/2addr p2, p1

    .line 8
    aput p2, p6, v0

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 0

    if-gez p5, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_1

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    sub-int/2addr p2, p5

    .line 4
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    const/4 p4, 0x1

    if-gt p2, p3, :cond_0

    .line 5
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    sub-int/2addr p2, p5

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 6
    aget p2, p7, p4

    add-int/2addr p2, p5

    aput p2, p7, p4

    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 8
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr p3, p5

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 9
    aget p3, p7, p4

    neg-int p2, p2

    add-int/2addr p3, p2

    aput p3, p7, p4

    .line 10
    :goto_0
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p2, p1, :cond_1

    sub-int/2addr p1, p2

    .line 11
    aput p1, p8, p4

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    if-nez p4, :cond_0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 3
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 6
    :cond_0
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowOverflowMenu()V

    .line 8
    :cond_1
    iget p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    goto :goto_0

    .line 5
    :cond_0
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 6
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 7
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 8
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    goto :goto_1

    .line 9
    :cond_1
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    :goto_1
    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result p1

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 2
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 3
    :goto_0
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 5
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-eqz v1, :cond_2

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v1, :cond_7

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    if-ne v1, v3, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    add-int/2addr v3, p1

    add-int/2addr v3, p2

    if-eq v1, v3, :cond_6

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    add-int/2addr p2, p1

    if-ne v1, p2, :cond_4

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-le p2, v1, :cond_5

    .line 12
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_3

    .line 13
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 14
    :goto_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 15
    :cond_6
    :goto_4
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method public onWindowHide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onWindowHide()V

    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onWindowShow()V

    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public bridge synthetic setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    return-void
.end method

.method public setCallback(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addedCustomView()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 10

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    xor-int v1, p1, v0

    .line 2
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1a

    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    const/16 v6, 0x8

    if-eqz v0, :cond_7

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initHomeLayout()V

    .line 4
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_4

    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v4

    .line 5
    :goto_3
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    if-eqz v7, :cond_4

    .line 6
    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_4
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_8

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v4

    .line 8
    :goto_4
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5
    invoke-virtual {v9, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 9
    :cond_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v7, :cond_8

    .line 10
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_6
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_10

    and-int/lit8 v7, p1, 0x8

    const/4 v8, 0x2

    if-eqz v7, :cond_c

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_b

    .line 12
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_9

    .line 15
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v7, v8}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 17
    :cond_9
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_a

    .line 18
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v7, v8}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 20
    :cond_a
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 21
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 22
    :cond_b
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    goto :goto_7

    .line 23
    :cond_c
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v7, :cond_d

    .line 24
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 25
    :cond_d
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v7, :cond_e

    .line 26
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 27
    :cond_e
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 29
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 30
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_10

    .line 32
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 35
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 36
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_f

    .line 37
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 38
    :cond_f
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_10

    .line 39
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 40
    :cond_10
    :goto_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v7, :cond_17

    and-int/lit8 v7, v1, 0x6

    if-eqz v7, :cond_17

    .line 41
    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_11

    move v7, v5

    goto :goto_8

    :cond_11
    move v7, v4

    .line 42
    :goto_8
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getVisibility()I

    move-result v8

    if-nez v8, :cond_14

    .line 43
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_13

    if-eqz v7, :cond_12

    move v6, v4

    goto :goto_9

    :cond_12
    move v6, v3

    :cond_13
    :goto_9
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_14
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_15

    if-eqz v7, :cond_15

    move v8, v5

    goto :goto_a

    :cond_15
    move v8, v4

    :goto_a
    invoke-virtual {v6, v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 45
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v0, :cond_16

    if-eqz v7, :cond_16

    move v4, v5

    :cond_16
    invoke-virtual {v6, v4}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setEnabled(Z)V

    :cond_17
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_19

    .line 46
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_19

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_18

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addedCustomView()V

    goto :goto_b

    .line 49
    :cond_18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    :cond_19
    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_c

    .line 51
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 52
    :goto_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1d

    .line 53
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 54
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_1b
    and-int/2addr p1, v3

    if-eqz p1, :cond_1c

    .line 55
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 56
    :cond_1c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_d
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    :cond_1
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 5
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v3, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    new-array v3, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    return-void
.end method

.method public setExpandState(I)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    sget v1, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExpandState(IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_1

    .line 3
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 6
    :cond_2
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 7
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_4

    .line 12
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 14
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_6

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 19
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->configPresenters(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 21
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    if-eq v0, p0, :cond_5

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 24
    :cond_6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 25
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    .line 27
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 28
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 29
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 30
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto :goto_0

    :cond_7
    const/16 v0, 0x50

    :goto_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 31
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->configPresenters(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 32
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 35
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eq v0, v1, :cond_8

    .line 36
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0, p1, v4, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 39
    sget p2, Lmiuix/appcompat/R$id;->expanded_menu:I

    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 42
    :cond_9
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    :cond_a
    :goto_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 6
    :cond_3
    :goto_1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MIUIX Deleted"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x3

    goto :goto_0

    :cond_0
    const/4 p1, -0x4

    .line 1
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 1
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 1
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 11
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    .line 12
    :goto_1
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 13
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 20
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_8
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 5
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v3, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    new-array v3, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez p1, :cond_3

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 9
    :cond_3
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 10
    new-instance p1, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0Oo;

    invoke-direct {p1, p0}, LOooO0OO/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0Oo;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showImmersionMore()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
