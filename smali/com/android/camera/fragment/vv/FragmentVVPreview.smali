.class public Lcom/android/camera/fragment/vv/FragmentVVPreview;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVVPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final TAG:Ljava/lang/String; = "VVPreview"


# instance fields
.field public mAudioController:Lcom/android/camera/module/AudioController;

.field public final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field public mOldControlStream:I

.field public mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

.field public mPreviewIndex:I

.field public mPreviewLayout:Landroid/view/ViewGroup;

.field public mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

.field public mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

.field public mVMResource:Lcom/android/camera/data/observeable/VMResource;

.field public mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mOldControlStream:I

    .line 3
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/vv/FragmentVVPreview;)Lcom/android/camera/fragment/vv/ResourceSelectedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/vv/FragmentVVPreview;)Lcom/android/camera/fragment/vv/VVList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/vv/FragmentVVPreview;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/vv/FragmentVVPreview;)Lcom/android/camera/fragment/BaseFragmentPagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    return-object p0
.end method

.method private downloadItem(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/camera/data/observeable/VMResource;->startAndGetDownloadDisposable(Lcom/android/camera/resource/BaseResourceItem;Landroidx/fragment/app/FragmentActivity;Lio/reactivex/ObservableEmitter;Z)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initResource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVList;->stateAllReady()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMResource;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    .line 4
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOO0o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOO0o;-><init>(Lcom/android/camera/fragment/vv/FragmentVVPreview;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/observeable/VMResource;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_1
    return-void
.end method

.method private initViewPager()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v5

    if-le v2, v5, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    float-to-int v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v4

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 5
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v4, v0, v2

    const/4 v10, 0x2

    .line 9
    div-int/2addr v4, v10

    .line 10
    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v6, Lcom/android/camera/fragment/vv/FragmentVVPreview$1;

    invoke-direct {v6, p0}, Lcom/android/camera/fragment/vv/FragmentVVPreview$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVPreview;)V

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 11
    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/camera/fragment/vv/FragmentVVPreview$2;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/camera/fragment/vv/FragmentVVPreview$2;-><init>(Lcom/android/camera/fragment/vv/FragmentVVPreview;II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/android/camera/fragment/vv/VVPreviewTransformer;

    invoke-direct {v3}, Lcom/android/camera/fragment/vv/VVPreviewTransformer;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    move v12, v11

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v3

    if-ge v12, v3, :cond_1

    .line 16
    new-instance v13, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    invoke-direct {v13}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v3, v12}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/camera/fragment/vv/VVItem;

    iget v9, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewIndex:I

    move-object v3, v13

    move v4, v12

    move v6, v2

    move v7, v1

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->setData(ILcom/android/camera/fragment/vv/VVItem;IILandroid/view/View$OnClickListener;I)V

    .line 18
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewIndex:I

    invoke-virtual {v0, v1, v11}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private onResourceDownloadStateChanged(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "vv"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-nez v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 7
    check-cast v2, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->getVVItem()Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->handleDownloadStateChanged(Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private restoreOuterAudio()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mAudioController:Lcom/android/camera/module/AudioController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mAudioController:Lcom/android/camera/module/AudioController;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mOldControlStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mOldControlStream:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_1
    return-void
.end method

.method private silenceOuterAudio()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mAudioController:Lcom/android/camera/module/AudioController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mAudioController:Lcom/android/camera/module/AudioController;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mOldControlStream:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method private transformToGallery(ILandroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transformToGallery index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VVPreview"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const v0, 0xfffb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    const/4 v0, 0x5

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {p2}, Lcom/android/camera/fragment/vv/FragmentVVGallery;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->setPreviewData(I)V

    .line 9
    invoke-static {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->setPreviewData(I)V

    .line 12
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 15
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa0

    .line 16
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_2

    .line 17
    invoke-static {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->getFragmentInto()I

    move-result p2

    invoke-interface {p1, v1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->updateCurrentFragments(III)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->onResourceDownloadStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method public controlPlay(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->startPlay()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->stopPlay()V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffc

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00c0

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a04ad

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a04c8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->initResource()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->initViewPager()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->transformToGallery(ILandroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VVPreview"

    if-nez v0, :cond_0

    const-string/jumbo p1, "onClick: indexStr is null"

    .line 2
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a04a7

    const v4, 0x7f0a04a9

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "onClick: vv_preview_item_image"

    .line 5
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {p1, v0}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/vv/VVItem;

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->downloadItem(Lcom/android/camera/fragment/vv/VVItem;)V

    return-void

    :cond_3
    const-string/jumbo v2, "onClick: vv_preview_item_collapsing"

    .line 9
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->transformToGallery(ILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->restoreOuterAudio()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->silenceOuterAudio()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setPreviewData(ILcom/android/camera/fragment/vv/VVList;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewIndex:I

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    return-void
.end method

.method public setResourceSelectedListener(Lcom/android/camera/fragment/vv/ResourceSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
