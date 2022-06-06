.class public abstract Lcom/android/camera/fragment/bottom/AbBottomMenu;
.super Ljava/lang/Object;
.source "AbBottomMenu.java"


# static fields
.field public static final CLICK_INTERVAL:I = 0x12c


# instance fields
.field public mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

.field public mContainerView:Landroid/widget/LinearLayout;

.field public mContext:Landroid/content/Context;

.field public mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

.field public mLastClickTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    return-void
.end method


# virtual methods
.method public abstract addAllView()V
.end method

.method public abstract getChildMenuViewList()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/ui/ColorActivateTextView;",
            ">;"
        }
    .end annotation
.end method

.method public getCurrentBeautyTextView()Lcom/android/camera/ui/ColorActivateTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    return-object v0
.end method

.method public abstract getDefaultType()I
.end method

.method public abstract getMenuData()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/beauty/MenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public hideAdvance()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/bottom/AbBottomMenu$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu$1;-><init>(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public isClickEnable()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-wide v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mLastClickTime:J

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isRefreshUI()Z
.end method

.method public selectBeautyType(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->getChildMenuViewList()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorActivateTextView;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_2
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    :cond_3
    return-void
.end method

.method public abstract switchMenu()V
.end method
