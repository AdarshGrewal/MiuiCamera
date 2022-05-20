.class public Lcom/android/camera/fragment/mode/FragmentMoreModePopup;
.super Lcom/android/camera/fragment/mode/FragmentMoreModeBase;
.source "FragmentMoreModePopup.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/ui/DragLayout$OnDragListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MoreModePopup"


# instance fields
.field public mBar:Lcom/android/camera/ui/DragLayoutBar;

.field public mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public mContainView:Landroid/widget/FrameLayout;

.field public mIsSupportOrientation:Z

.field public mListArea:Landroid/graphics/Rect;

.field public mNeedBgAlphaAnimation:Z

.field public mOnDragging:Z

.field public mRadiusArrays:[F

.field public mTargetAlpha:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mTargetAlpha:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mNeedBgAlphaAnimation:Z

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mListArea:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/mode/FragmentMoreModePopup;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/mode/FragmentMoreModePopup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mTargetAlpha:I

    return p0
.end method

.method private isFullScreen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private needBgAlphaAnimation()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->needAlphaAnimation4PopMore()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private updateLayout(Landroid/view/View;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0705ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getRow4PopupStyle(I)I

    move-result v6

    mul-int/2addr v4, v6

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0705b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 10
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 14
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v0, 0x31

    .line 15
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 20
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getSpringDistance()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 21
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public catchDrag(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mListArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mListArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "catchDrag = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MoreModePopup"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    return v1
.end method

.method public createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getCountPerLine()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method public createModeItemDecoration(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;)Lcom/android/camera/fragment/mode/ModeItemDecoration;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/mode/ModeItemDecoration;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getType()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/camera/fragment/mode/ModeItemDecoration;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V

    return-object v0
.end method

.method public getCountPerLine()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/android/camera/display/Display;->getMoreModeTabCol(ZZ)I

    move-result v0

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff6

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00a8

    return v0
.end method

.method public getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    const v0, 0x7f0a02ac

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->onBackEvent(I)Z

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->initView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a012a

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DragLayoutBar;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayoutBar;->setFlatEnable(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->updateLayout(Landroid/view/View;Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->updateLayout(Landroid/view/View;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p2

    const p3, 0x7f060303

    invoke-virtual {p2, p3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/ui/DragLayoutBar;->updateBgColor()V

    :cond_2
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->tryCancelDownload(Ljava/lang/String;Z)V

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa01

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->shrink(Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a029c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mOnDragging:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDragDone(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDragDone up="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreModePopup"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/16 p1, 0x8

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mOnDragging:Z

    if-nez p1, :cond_3

    const-string p1, "damn, check this flag."

    .line 9
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mOnDragging:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onDragProgress(IZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mOnDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    int-to-float p2, p1

    .line 2
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v0

    neg-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    move p1, v1

    .line 4
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mRadiusArrays:[F

    if-eqz p2, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, p2, :cond_2

    add-int v2, p1, p2

    .line 8
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float p2, p2

    div-float/2addr v2, p2

    .line 9
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 10
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getCornerRadiusRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, p2

    float-to-int p2, v2

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mRadiusArrays:[F

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    int-to-float p2, p2

    aput p2, v2, v5

    aput p2, v2, v4

    aput p2, v2, v3

    aput p2, v2, v1

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mRadiusArrays:[F

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 13
    :cond_3
    iget-boolean p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mNeedBgAlphaAnimation:Z

    if-eqz p2, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDisplayRange()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    .line 15
    iget v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mTargetAlpha:I

    int-to-float v1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr v1, p2

    float-to-int p2, v1

    .line 16
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 17
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDisappearDistance()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    .line 18
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDisplayDistance()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 19
    iget-object p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 20
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDisplayAlphaRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method public onDragStart(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mRadiusArrays:[F

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f060303

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBar:Lcom/android/camera/ui/DragLayoutBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayoutBar;->updateBgColor()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->needBgAlphaAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mNeedBgAlphaAnimation:Z

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->isFullScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x99

    .line 11
    iput v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mTargetAlpha:I

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xff

    .line 13
    iput v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mTargetAlpha:I

    .line 14
    iget-boolean v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mNeedBgAlphaAnimation:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mTargetAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v2, :cond_7

    .line 19
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 20
    iget-boolean v3, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mIsSupportOrientation:Z

    if-eqz v3, :cond_6

    .line 21
    iput v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    goto :goto_1

    .line 22
    :cond_6
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    :goto_1
    if-eqz v0, :cond_7

    move v2, v1

    .line 23
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 24
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mRadiusArrays:[F

    const/4 v3, 0x0

    if-eqz p1, :cond_8

    const/4 v4, 0x2

    const/4 v5, 0x3

    .line 26
    aput v3, p1, v5

    aput v3, p1, v4

    aput v3, p1, v2

    aput v3, p1, v1

    .line 27
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 29
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_3

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 31
    :cond_a
    :goto_3
    iput-boolean v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mOnDragging:Z

    :cond_b
    :goto_4
    return-void
.end method

.method public onInterceptDrag()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mOnDragging:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canScrollDown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoreModePopup"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mOnDragging:Z

    return-void
.end method

.method public onPromptExpand(Ljava/lang/Runnable;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    :cond_3
    const/16 v1, 0x99

    .line 6
    iput v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mTargetAlpha:I

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    const v4, 0x7f060303

    invoke-virtual {v3, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const v0, 0x3f4ccccd    # 0.8f

    .line 14
    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v4, "expand_start"

    invoke-direct {v3, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 15
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getBottomMargin()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v5, v0

    .line 16
    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 17
    invoke-virtual {v0, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 18
    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v4, "expand_end"

    invoke-direct {v3, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v5, 0x0

    .line 19
    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    float-to-double v6, v5

    .line 20
    invoke-virtual {v3, v4, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 21
    invoke-virtual {v3, v4, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    const/4 v4, 0x1

    new-array v6, v4, [Landroid/view/View;

    .line 22
    iget-object v7, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    aput-object v7, v6, v2

    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v6

    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v6

    invoke-interface {v6, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v6, v4, [Lmiuix/animation/base/AnimConfig;

    .line 23
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getPromptAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    new-array v8, v4, [Lmiuix/animation/listener/TransitionListener;

    new-instance v9, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$1;

    invoke-direct {v9, p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$1;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModePopup;Ljava/lang/Runnable;)V

    aput-object v9, v8, v2

    .line 24
    invoke-virtual {v7, v8}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v6, v2

    .line 25
    invoke-interface {v0, v3, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 26
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, 0x6

    new-array v3, v4, [F

    const/high16 v6, 0x43480000    # 200.0f

    aput v6, v3, v2

    .line 27
    invoke-virtual {p1, v0, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    new-array v0, v4, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$2;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$2;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModePopup;)V

    aput-object v3, v0, v2

    .line 28
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v3, v4, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, v3, v2

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_4
    :goto_0
    return-void
.end method

.method public onPromptShrink(ZLjava/lang/Runnable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "trans_start"

    invoke-direct {p1, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {p1, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    .line 5
    invoke-virtual {p1, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 6
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v4, "trans_end"

    invoke-direct {v1, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 7
    invoke-virtual {v1, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 8
    invoke-virtual {v1, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    .line 9
    iget-object v4, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    invoke-interface {v3, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    .line 10
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getPromptAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$3;

    invoke-direct {v6, p0, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$3;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModePopup;Ljava/lang/Runnable;)V

    aput-object v6, v2, v5

    .line 11
    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    aput-object p2, v3, v5

    .line 12
    invoke-interface {p1, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz p2, :cond_3

    .line 14
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 15
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mContainView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x4

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->provideOrientationChanged(ILjava/util/List;I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->updateLayout(Landroid/view/View;Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->updateLayout(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->setRotate(I)V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const-string v0, "MoreModePopup"

    const-string/jumbo v1, "register"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setSupportOrientation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->mIsSupportOrientation:Z

    return-void
.end method

.method public showDragAnimation(II)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa01

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const-string v0, "MoreModePopup"

    const-string/jumbo v1, "unRegister"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
