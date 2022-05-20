.class public Lcom/android/camera/fragment/FragmentDescription;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "FragmentDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentDescription$DescriptionItemDecoration;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mLastCanScrollVertically:Z

.field public mMistatsName:Ljava/lang/String;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/FragmentDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDescription;->mLastCanScrollVertically:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/FragmentDescription;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentDescription;->mLastCanScrollVertically:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/FragmentDescription;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mLastCanScrollVertically:Z

    return p1
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f0a0109

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x43340000    # 180.0f

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 5
    :cond_0
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOOo;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOOo;-><init>(Lcom/android/camera/fragment/FragmentDescription;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a010b

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentDescription;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a010a

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 9
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "parameter_recyclerview"

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/FragmentDescription$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentDescription$1;-><init>(Lcom/android/camera/fragment/FragmentDescription;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0067

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentDescription;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p2, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p1, 0x12c

    invoke-virtual {p2, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
