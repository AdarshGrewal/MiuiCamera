.class public Lcom/android/camera/customization/FragmentCustomTint;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentCustomTint.java"

# interfaces
.implements Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;
    }
.end annotation


# static fields
.field public static final CUP_LENS_OFFSET:I = 0x60

.field public static MODE_PREVIEW:I = 0x2

.field public static MODE_SELECT:I = 0x1

.field public static final PREV_ACTION:F = -276.0f

.field public static final PREV_COLOR:F = 950.0f

.field public static final SELECT_COLOR:F = 0.0f

.field public static TAG:Ljava/lang/String; = "FragCustomTint"


# instance fields
.field public actionBar:Landroid/view/View;

.field public back:Lcom/android/camera/ui/ColorImageView;

.field public colorSelectContainer:Landroid/view/View;

.field public colorView:Lcom/android/camera/customization/TintColorTableView;

.field public mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

.field public mCurrentIndex:I

.field public mCurrentItemView:Landroid/view/View;

.field public mCurrentMode:I

.field public mIsLandscape:Z

.field public mIsTalbet:Z

.field public mSpaceView:Landroid/view/View;

.field public previewList:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    sget v1, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    iput v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    iput-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    iput-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshTipSizeWidth(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/customization/FragmentCustomTint;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/customization/FragmentCustomTint;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/customization/FragmentCustomTint;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/customization/FragmentCustomTint;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshColorTable(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/customization/FragmentCustomTint;->refreshTextColor(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/customization/FragmentCustomTint;->refreshTipColor(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshTextSizeWidth(Landroid/view/View;)V

    return-void
.end method

.method private enterPreviewMode(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    const-string v1, "enterPreviewMode "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->toggleMode(Landroid/view/View;)V

    return-void
.end method

.method private getAppBoundHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    return v0
.end method

.method private getAppBoundWidth()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    return v0
.end method

.method private isSelectMode()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v1, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private previewModeHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->isNotchDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    return v0
.end method

.method private refreshColorTable(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0701de

    goto :goto_0

    :cond_0
    const v1, 0x7f0701df

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method private refreshTextColor(Landroid/view/View;I)V
    .locals 1

    const v0, 0x7f0a02b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/customization/TintColor;

    invoke-virtual {p2}, Lcom/android/camera/customization/TintColor;->color()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private refreshTextSizeWidth(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a03fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    if-eqz v1, :cond_0

    const v1, 0x3f6147ae    # 0.88f

    goto :goto_0

    :cond_0
    const v1, 0x3f6e147b    # 0.93f

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f63d70a    # 0.89f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    const v1, 0x3f3df3b6    # 0.742f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshTipColor(Landroid/view/View;I)V
    .locals 1

    const v0, 0x7f0a004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p2, :cond_0

    const p2, 0x7f08015d

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f08015c

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private refreshTipSizeWidth(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    const v0, 0x7f0a004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    if-eqz v1, :cond_0

    const v1, 0x3e408312    # 0.188f

    goto :goto_0

    :cond_0
    const v1, 0x3df5c28f    # 0.12f

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3e0f5c29    # 0.14f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3e23d70a    # 0.16f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_3
    const v1, 0x3e051eb8    # 0.13f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private selectModeHeight()I
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private selectModeWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private toggleMode(Landroid/view/View;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v1, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/camera/customization/FragmentCustomTint;->MODE_PREVIEW:I

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previewList refresh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/camera/customization/FragmentCustomTint$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/customization/FragmentCustomTint$1;-><init>(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->previewModeHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundWidth()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v4, v5, :cond_3

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v5, p1

    move p1, v6

    move v6, v5

    move v5, p1

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v5, v4

    move v4, v6

    :goto_3
    iget-object v7, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v8, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    const v9, 0x7f0701f5

    if-eqz v8, :cond_4

    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v2}, Lcom/android/camera/Util;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    div-int/2addr v8, v3

    int-to-float v8, v8

    add-float/2addr v2, v8

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v8, v8

    add-float/2addr v2, v8

    iget-object v8, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    div-int/2addr v8, v3

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    sub-float v2, v8, v2

    :cond_4
    new-instance v8, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v10, "preview"

    invoke-direct {v8, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v11, v4

    invoke-virtual {v8, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v8, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v10, v6

    invoke-virtual {v4, v8, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v10, v2

    invoke-virtual {v4, v6, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v6, "previewColor"

    invoke-direct {v4, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide v10, 0x408db00000000000L    # 950.0

    invoke-virtual {v4, v6, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    new-instance v6, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v8, "previewAction"

    invoke-direct {v6, v8}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide v10, -0x3f8ec00000000000L    # -276.0

    invoke-virtual {v6, v8, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    new-instance v8, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v10, "select"

    invoke-direct {v8, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v11, p1

    invoke-virtual {v8, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v8, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v10, v5

    invoke-virtual {p1, v8, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-boolean v8, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    const-wide/16 v10, 0x0

    if-eqz v8, :cond_5

    move-wide v8, v10

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    float-to-double v8, v8

    :goto_4
    invoke-virtual {p1, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-instance v5, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v8, "selectColor"

    invoke-direct {v5, v8}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v5, v8, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    new-instance v8, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v9, "selectAction"

    invoke-direct {v8, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v8, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v9

    const/4 v10, -0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_7

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v7, v10, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v7, v11, [Lmiuix/animation/listener/TransitionListener;

    aput-object v1, v7, v0

    invoke-virtual {v3, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v3, :cond_6

    new-array v2, v11, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    aput-object v3, v2, v0

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v11, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v3, v0

    invoke-interface {v2, p1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_5

    :cond_6
    new-array v3, v11, [Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    aput-object v7, v3, v0

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v7, v11, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v7, v0

    invoke-interface {v3, v2, p1, v7}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_5
    new-array p1, v11, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v2, v11, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v2, v0

    invoke-interface {p1, v4, v5, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array p1, v11, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v2, v11, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v2, v0

    invoke-interface {p1, v6, v8, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto/16 :goto_7

    :cond_7
    new-instance v9, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v9}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-virtual {v9, v10, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v9, v11, [Lmiuix/animation/listener/TransitionListener;

    aput-object v1, v9, v0

    invoke-virtual {v3, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v3, :cond_8

    new-array p1, v11, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    aput-object v3, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v3, v11, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v3, v0

    invoke-interface {p1, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_6

    :cond_8
    new-array v3, v11, [Landroid/view/View;

    iget-object v9, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    aput-object v9, v3, v0

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v9, v11, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v9, v0

    invoke-interface {v3, p1, v2, v9}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_6
    new-array p1, v11, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v2, v11, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v2, v0

    invoke-interface {p1, v5, v4, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array p1, v11, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v2, v11, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v2, v0

    invoke-interface {p1, v8, v6, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-boolean p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-nez p1, :cond_9

    iput v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_7
    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method


# virtual methods
.method public getCurrentColorIndex()I
    .locals 1

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff8

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0023

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    const v1, 0x7f0a03bb

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v3

    const-string v4, "color_index"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    :goto_1
    const v0, 0x7f0a00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    const v0, 0x7f0a0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    const v0, 0x7f0a007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o000O0oO()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mSpaceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v3, 0x60

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/camera/customization/FragmentCustomTint;->mSpaceView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060368

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintColorTableView;

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/customization/TintColorTableView;->initialize(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-virtual {v0, p0}, Lcom/android/camera/customization/TintColorTableView;->setOnColorChangeListener(Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;)V

    const v0, 0x7f0a0065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;-><init>(Lcom/android/camera/customization/FragmentCustomTint;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    const v0, 0x7f0a033d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v1, Lcom/android/camera/customization/FragmentCustomTint;->MODE_PREVIEW:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/customization/FragmentCustomTint;->toggleMode(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0065

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a007d

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->enterPreviewMode(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick apply"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-static {p1}, Lcom/android/camera/customization/TintColor;->persistColorId(I)V

    iget p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "attr_edit_tint"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onColorChange(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onColorChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-virtual {v0, p1}, Lcom/android/camera/customization/TintColorTableView;->setCurrent(I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method
