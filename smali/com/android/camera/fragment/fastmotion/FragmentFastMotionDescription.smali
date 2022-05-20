.class public Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;
.super Lcom/android/camera/fragment/FragmentDescription;
.source "FragmentFastMotionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDescription;-><init>()V

    return-void
.end method

.method private getParameterData()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    .line 1
    new-instance v9, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    const v2, 0x7f1206cb

    .line 2
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f1206d1

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;-><init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    new-instance v2, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1206ce

    .line 4
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | 4X-30X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x1

    const v12, 0x7f11002d

    const v14, 0x7f080181

    const-string v15, ""

    const-string v16, ""

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;-><init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1206d0

    .line 5
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | 60X-90X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    const v6, 0x7f11002f

    const v8, 0x7f080183

    const-string v9, ""

    const-string v10, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;-><init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1206cc

    .line 6
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | 120X-150X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v6, 0x7f11002b

    const v8, 0x7f08017f

    const-string v9, ""

    const-string v10, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;-><init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1206cf

    .line 7
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | 300X-600X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v6, 0x7f11002e

    const v8, 0x7f080182

    const-string v9, ""

    const-string v10, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;-><init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1206cd

    .line 8
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | 900X-1800X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v6, 0x7f11002c

    const v8, 0x7f080180

    const-string v9, ""

    const-string v10, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;-><init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    const v3, 0x7f1206c8

    .line 9
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v3, 0x7f1206c9

    .line 10
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;-><init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/FragmentDescription;->initView(Landroid/view/View;)V

    const-string p1, "fastmotion_user_guide"

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mMistatsName:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f12024b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    new-instance p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;->getParameterData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$FastmotionDescriptionItemDecoration;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription$1;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
