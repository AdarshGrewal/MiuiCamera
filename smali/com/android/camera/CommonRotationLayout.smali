.class public Lcom/android/camera/CommonRotationLayout;
.super Ljava/lang/Object;
.source "CommonRotationLayout.java"


# instance fields
.field public mBottomRotationLayout:Landroid/view/View;

.field public mContentRotationLayout:Landroid/view/View;

.field public mExtraViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mForceHorizontal:Z

.field public mForceVertical:Z

.field public mLastModuleIndex:I

.field public mLastTargetViewDegree:I

.field public mModeSelectRotationLayout:Landroid/view/View;

.field public mPopupMenuLayout:Landroid/view/View;

.field public mTopRotationLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/CommonRotationLayout;->initView(Landroid/app/Activity;)V

    return-void
.end method

.method private bottomForceHorizontal(I)Z
    .locals 1

    const/16 v0, 0xb6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private bottomForceVertical(I)Z
    .locals 1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private configBottomLayout(ZIII)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/camera/CommonRotationLayout;->updateForceFixedGravity(I)V

    .line 2
    iget v0, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    iget v1, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CommonRotationLayout;->getBottomViewDegree(II)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getBottomViewDegree(II)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getBottomViewDegree(II)I

    move-result p2

    const/4 p3, 0x1

    new-array v0, p3, [Landroid/view/View;

    .line 4
    iget-object v1, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    new-array v0, p3, [Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/android/camera/CommonRotationLayout;->mPopupMenuLayout:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    new-array v0, p3, [Landroid/view/View;

    .line 6
    iget-object v1, p0, Lcom/android/camera/CommonRotationLayout;->mModeSelectRotationLayout:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    return p3
.end method

.method private configModuleLayout(ZIII)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    iget v1, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CommonRotationLayout;->getModuleContentViewDegree(II)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getModuleContentViewDegree(II)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getModuleContentViewDegree(II)I

    move-result p2

    const/4 p3, 0x1

    new-array v0, p3, [Landroid/view/View;

    .line 3
    iget-object v1, p0, Lcom/android/camera/CommonRotationLayout;->mContentRotationLayout:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    return p3
.end method

.method private configTopLayout(ZIII)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    iget v1, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CommonRotationLayout;->getTopViewDegree(II)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getTopViewDegree(II)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getTopViewDegree(II)I

    move-result p2

    const/4 p3, 0x1

    new-array v0, p3, [Landroid/view/View;

    .line 3
    iget-object v1, p0, Lcom/android/camera/CommonRotationLayout;->mTopRotationLayout:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    return p3
.end method

.method private getBottomViewDegree(II)I
    .locals 1

    const/16 v0, 0xb6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_1

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/16 p1, 0x5a

    return p1
.end method

.method private getModuleContentViewDegree(II)I
    .locals 1

    const/16 v0, 0xa6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getTopViewDegree(II)I
    .locals 1

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd5

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initView(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f0a02af

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mContentRotationLayout:Landroid/view/View;

    const v0, 0x7f0a0254

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mTopRotationLayout:Landroid/view/View;

    const v0, 0x7f0a0093

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    const v0, 0x7f0a0316

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mPopupMenuLayout:Landroid/view/View;

    const v0, 0x7f0a02a9

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CommonRotationLayout;->mModeSelectRotationLayout:Landroid/view/View;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CommonRotationLayout;->mExtraViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addExtraView(Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mExtraViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rsub-int v0, p2, 0x168

    .line 2
    rem-int/lit16 v0, v0, 0x168

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v2, v0, p2, v1}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    return-void
.end method

.method public getForceFixedRotation(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CommonRotationLayout;->mForceHorizontal:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x10e

    return p1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CommonRotationLayout;->mForceVertical:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public isForceFixedGravity()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CommonRotationLayout;->mForceHorizontal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/CommonRotationLayout;->mForceVertical:Z

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

.method public provideOrientationChanged(ZII)Z
    .locals 4

    rsub-int v0, p3, 0x168

    .line 1
    rem-int/lit16 v0, v0, 0x168

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/CommonRotationLayout;->configTopLayout(ZIII)Z

    move-result v1

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/CommonRotationLayout;->configBottomLayout(ZIII)Z

    move-result v2

    .line 4
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/CommonRotationLayout;->configModuleLayout(ZIII)Z

    move-result v3

    .line 5
    iput p2, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    const/4 p2, 0x0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    return p2

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CommonRotationLayout;->mExtraViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-array v3, v3, [Landroid/view/View;

    aput-object v2, v3, p2

    .line 7
    invoke-virtual {p0, p1, v0, p3, v3}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_1
    iput v0, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    return v3
.end method

.method public removeExtraView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mExtraViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateForceFixedGravity(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/CommonRotationLayout;->bottomForceHorizontal(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/CommonRotationLayout;->mForceHorizontal:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/CommonRotationLayout;->bottomForceVertical(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/CommonRotationLayout;->mForceVertical:Z

    return-void
.end method

.method public varargs updateOrientationLayoutRotation(ZII[Landroid/view/View;)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, p4, v3

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 4
    new-instance v5, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {v5, v4}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v5}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x1

    if-nez p2, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    const/16 v7, 0x5a

    if-ne p2, v7, :cond_3

    move v7, v6

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {p3}, Lcom/android/camera/display/Display;->getScreenOrientation(I)I

    move-result v7

    :goto_1
    if-eqz v7, :cond_7

    if-eq v7, v6, :cond_4

    const/4 v6, 0x2

    if-eq v7, v6, :cond_4

    const/4 v6, 0x4

    if-eq v7, v6, :cond_7

    goto :goto_3

    .line 7
    :cond_4
    iget-object v6, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    if-eq v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/camera/CommonRotationLayout;->mPopupMenuLayout:Landroid/view/View;

    if-eq v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/camera/CommonRotationLayout;->mModeSelectRotationLayout:Landroid/view/View;

    if-ne v4, v6, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v6, 0x10

    .line 10
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    .line 11
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 12
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v6, 0x11

    .line 13
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    .line 14
    :cond_7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 15
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 16
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_3
    int-to-float v6, p2

    .line 17
    invoke-virtual {v4, v6}, Landroid/view/View;->setRotation(F)V

    .line 18
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 20
    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_9
    return-void
.end method
