.class public abstract Lcom/android/camera/fragment/BaseViewPagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseViewPagerFragment.java"

# interfaces
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;


# instance fields
.field public isOnCreate:Z

.field public isViewCreated:Z

.field public isViewCreatedAndVisibleToUser:Z

.field public isVisibleToUser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private beforeViewGoneToUser()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    return-void
.end method

.method private beforeViewVisibleToUser()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    return-void
.end method


# virtual methods
.method public canProvide()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public isEnableClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needViewClear()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

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

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewGoneToUser()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isVisibleToUser:Z

    if-eqz p2, :cond_1

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreatedAndJumpOut()V
    .locals 0

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 0

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

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isVisibleToUser:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewGoneToUser()V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    :cond_2
    return-void
.end method
