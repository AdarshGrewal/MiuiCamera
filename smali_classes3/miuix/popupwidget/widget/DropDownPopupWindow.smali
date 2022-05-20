.class public Lmiuix/popupwidget/widget/DropDownPopupWindow;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;,
        Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;
    }
.end annotation


# static fields
.field public static final DIM:F = 0.3f

.field public static OFFSET_H:I = 0x28

.field public static final TAG:Ljava/lang/String; = "DropDownPopupWindow"


# instance fields
.field public mAnchorView:Landroid/view/View;

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field public mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

.field public mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

.field public mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

.field public mContentView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mDismissDuration:I

.field public mDismissPending:Z

.field public mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

.field public mElevation:I

.field public mMaxWith:I

.field public mMinWith:I

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mRealContainerView:Landroid/view/View;

.field public mShowDuration:I

.field public mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 2
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mShowDuration:I

    .line 3
    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissDuration:I

    .line 4
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 5
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 6
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 7
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 8
    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 9
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p2

    if-eqz p2, :cond_0

    sget v1, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_DropDown:I

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->initPopupWindow()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    return p0
.end method

.method public static synthetic access$600(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method public static synthetic access$700(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    return-object p0
.end method

.method private initPopupWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mElevation:I

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMinWith:I

    .line 3
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v1, Lmiuix/popupwidget/widget/DropDownPopupWindow;->OFFSET_H:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWith:I

    .line 4
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 7
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 10
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private measureListViewWidth(Landroid/widget/ListView;)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 4
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    move v7, v6

    move-object v8, v5

    :goto_0
    if-ge v1, v4, :cond_2

    .line 5
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_0

    move-object v8, v5

    move v7, v9

    .line 6
    :cond_0
    invoke-interface {v0, v1, v8, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-le v9, v6, :cond_1

    move v6, v9

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method private realDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 7
    :cond_2
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_3
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    return-void
.end method

.method private startAnimation(FFI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    .line 5
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    new-array v3, v3, [F

    aput p1, v3, v2

    aput p2, v3, v1

    .line 6
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 7
    :goto_0
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p2

    if-eqz p2, :cond_3

    int-to-long p2, p3

    goto :goto_1

    :cond_3
    const-wide/16 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method


# virtual methods
.method public changeWindowBackground(Landroid/view/View;F)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 5
    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const-string p1, "DropDownPopupWindow"

    const-string p2, "can\'t change window dim with null view"

    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDismissPending:Z

    .line 2
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setContainerController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    return-void
.end method

.method public setContentController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    return-void
.end method

.method public setDropDownController(Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mDropDownController:Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    return-void
.end method

.method public setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/16 p1, 0x15

    if-lez p3, :cond_1

    .line 1
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p5, p1, :cond_1

    int-to-float p3, p3

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->setElevation(F)V

    .line 3
    :cond_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p1, :cond_2

    .line 4
    new-instance p1, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;

    invoke-direct {p1, p0, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 5
    :cond_2
    instance-of p1, p2, Landroid/widget/ListView;

    if-eqz p1, :cond_3

    .line 6
    check-cast p2, Landroid/widget/ListView;

    invoke-direct {p0, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->measureListViewWidth(Landroid/widget/ListView;)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    if-ge p1, p4, :cond_4

    goto :goto_1

    :cond_4
    move p4, p1

    :goto_1
    return p4
.end method

.method public show()V
    .locals 9

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v1}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v1}, Landroid/widget/PopupWindow;->update(II)V

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    const/4 v2, -0x2

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 7
    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    iget v6, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mElevation:I

    iget v7, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMinWith:I

    iget-object v8, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 8
    :goto_0
    iget v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWith:I

    if-le v0, v3, :cond_3

    move v0, v3

    .line 9
    :cond_3
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    iput-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    .line 10
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;

    invoke-direct {v4, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 11
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainerController:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    if-eqz v3, :cond_4

    .line 12
    invoke-interface {v3}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onShow()V

    .line 13
    :cond_4
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 14
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    .line 16
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getElevation()F

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 17
    :cond_6
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 18
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mContainer:Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    iget-object v4, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 19
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 20
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 21
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 22
    iget v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWith:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_7

    .line 23
    sget v0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->OFFSET_H:I

    .line 24
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    invoke-static {v3}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 25
    iget v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mMaxWith:I

    add-int/2addr v0, v3

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-eq v0, v4, :cond_8

    aget v0, v2, v1

    goto :goto_2

    :cond_8
    aget v0, v2, v1

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    .line 28
    :cond_9
    :goto_2
    iget-object v3, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    aget v2, v2, v4

    invoke-virtual {v3, v5, v1, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 29
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_3

    .line 30
    :cond_a
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    const v3, 0x800033

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 31
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    :goto_3
    if-eqz v0, :cond_b

    .line 32
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 33
    :cond_b
    :goto_4
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->changeWindowBackground(Landroid/view/View;F)V

    :cond_c
    return-void
.end method
