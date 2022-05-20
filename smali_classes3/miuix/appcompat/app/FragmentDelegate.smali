.class public Lmiuix/appcompat/app/FragmentDelegate;
.super Lmiuix/appcompat/app/ActionBarDelegateImpl;
.source "FragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;
    }
.end annotation


# static fields
.field public static final INVALIDATE_MENU_POSTED:I = 0x10

.field public static final MENU_INVALIDATE:I = 0x1


# instance fields
.field public mExtraThemeRes:I

.field public mFragment:Landroidx/fragment/app/Fragment;

.field public mInvalidateMenuFlags:B

.field public mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mSubDecor:Landroid/view/View;

.field public mThemedContext:Landroid/content/Context;

.field public final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 2
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate$1;-><init>(Lmiuix/appcompat/app/FragmentDelegate;)V

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/FragmentDelegate;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return p0
.end method

.method public static synthetic access$102(Lmiuix/appcompat/app/FragmentDelegate;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return p1
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public static synthetic access$202(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method private getInvalidateMenuRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;-><init>(Lmiuix/appcompat/app/FragmentDelegate;)V

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public createActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 3
    iget v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    iget v2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 5
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object v0
.end method

.method public final installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 3
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar:I

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p3, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 6
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 7
    iget-boolean p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result p3

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 9
    iget p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz p3, :cond_0

    const p3, 0x1010054

    .line 10
    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_0
    sget p3, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p3, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 13
    iget-boolean p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz p3, :cond_1

    .line 14
    iget-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initIndeterminateProgress()V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16
    iget-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {p3, v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initImmersionMore(ILmiuix/appcompat/app/ActionBarDelegateImpl;)V

    .line 17
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object p3

    const-string v1, "splitActionBarWhenNarrow"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    goto :goto_0

    .line 19
    :cond_3
    sget-object v1, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 20
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p0, p1, p3, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 23
    :cond_4
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 25
    iput-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    goto :goto_1

    .line 26
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    .line 27
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_6

    .line 29
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-byte v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_0

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    .line 3
    iput-byte v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getInvalidateMenuRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 5
    :cond_0
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    .line 6
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 7
    :cond_1
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    .line 8
    sget v1, Lmiuix/appcompat/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    .line 9
    sget v1, Lmiuix/appcompat/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    .line 10
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 12
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lmiuix/appcompat/app/FragmentDelegate;->installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v1, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v1, v0, p1, p2}, Lmiuix/appcompat/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v1, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v1, v0, p1, p2}, Lmiuix/appcompat/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 22
    :cond_4
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object p1

    .line 23
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You need to use a miui theme (or descendant) with this fragment."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 3
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 4
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p2, Lmiuix/appcompat/app/IFragment;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lmiuix/appcompat/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setExtraThemeRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public updateOptionsMenu(I)V
    .locals 1

    .line 1
    iget-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return-void
.end method
