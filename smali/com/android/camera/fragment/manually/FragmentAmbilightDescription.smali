.class public Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;
.super Lcom/android/camera/fragment/FragmentDescription;
.source "FragmentAmbilightDescription.java"


# instance fields
.field public mDescriptionAdapter:Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDescription;-><init>()V

    return-void
.end method

.method private getParameterData()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/AmbilightDescriptionItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/data/data/AmbilightDescriptionItem;

    .line 1
    new-instance v7, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f120149

    const v3, 0x7f080088

    const v5, 0x7f080089

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v2, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120148

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v9, 0x7f12014e

    const v10, 0x7f08008f

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120145

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v5, 0x7f12014c

    const v6, 0x7f08008c

    const v8, 0x7f08008d

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-instance v2, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120141

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v6, 0x7f12014a

    const v7, 0x7f08008a

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-instance v2, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-boolean v5, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz v5, :cond_0

    const v5, 0x7f120143

    goto :goto_0

    :cond_0
    const v5, 0x7f120142

    :goto_0
    new-array v6, v3, [Ljava/lang/Object;

    sget v7, Lcom/android/camera/constant/DurationConstant;->DURATION_AMBILIGHT_MAGIC_STAR_CAPTURE:I

    div-int/lit16 v7, v7, 0x3e8

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 10
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const v6, 0x7f12014b

    const v7, 0x7f08008b

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const/4 v2, 0x5

    new-instance v10, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    const v5, 0x7f12014d

    const v6, 0x7f08008e

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f120147

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v1

    invoke-virtual {v4, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    aput-object v10, v0, v2

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/FragmentDescription;->initView(Landroid/view/View;)V

    const-string p1, "ambilight_user_guide"

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mMistatsName:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f12013e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/FragmentDescription$DescriptionItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/FragmentDescription$DescriptionItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 5
    new-instance p1, Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;->getParameterData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;->mDescriptionAdapter:Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
