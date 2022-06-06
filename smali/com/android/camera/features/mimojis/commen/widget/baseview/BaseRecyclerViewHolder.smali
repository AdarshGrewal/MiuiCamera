.class public abstract Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseRecyclerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field public mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;->OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public varargs alphaGone([Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/android/camera/Util;->updateSelectIndicator(Landroid/view/View;ZZ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public varargs alphaShow([Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3, v3}, Lcom/android/camera/Util;->updateSelectIndicator(Landroid/view/View;ZZ)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public getCubicEaseOut()Lmiuix/view/animation/CubicEaseOutInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    return-object v0
.end method

.method public getRotateViews()[Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs hideView([Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener<",
            "TT;>;TT;I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO00o/OooO0Oo/OooO0O0/OooO00o;

    invoke-direct {v1, p1, p2, p3, p4}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO0O0/OooO00o/OooO0Oo/OooO0O0/OooO00o;-><init>(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract setData(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public varargs showView([Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {v3, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
