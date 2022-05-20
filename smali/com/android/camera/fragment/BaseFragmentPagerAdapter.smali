.class public Lcom/android/camera/fragment/BaseFragmentPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "BaseFragmentPagerAdapter.java"


# instance fields
.field public mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFragmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v0

    or-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public recycleFragmentList(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method
