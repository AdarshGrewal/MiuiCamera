.class public Lcom/android/camera/fragment/manually/FragmentParameterDescription;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "FragmentParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/FragmentParameterDescription$ItemPadding;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCurrentMode:I

.field public mLastCanScrollVertically:Z

.field public mManuallyDataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mProVideoDataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSplitView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mLastCanScrollVertically:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mSplitView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mLastCanScrollVertically:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/fragment/manually/FragmentParameterDescription;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mLastCanScrollVertically:Z

    return p1
.end method

.method private getParameterData()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mManuallyDataItems:Ljava/util/List;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v1, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mProVideoDataItems:Ljava/util/List;

    if-eqz v1, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    iget v5, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    .line 5
    invoke-virtual {v4, v1, v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080389

    const v7, 0x7f1205e8

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1205e7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-direct {v5, v6, v9, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 9
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget v5, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    const v6, 0x7f1205d2

    const v7, 0x7f1205d3

    const v8, 0x7f080382

    const v10, 0x7f1205e9

    const v11, 0x7f1205ea

    const v12, 0x7f08038a

    if-eq v5, v2, :cond_4

    if-eq v5, v3, :cond_2

    goto/16 :goto_0

    .line 11
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v13, Lcom/android/camera/data/data/ComponentDataItem;

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v13, v12, v9, v11, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 14
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v10, Lcom/android/camera/data/data/ComponentDataItem;

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v8, v9, v7, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 17
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080390

    const v8, 0x7f1205f1

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f1205f0

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 20
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoLogFormat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080387

    const v7, 0x7f1205e5

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f1205e4

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v9, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 24
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 26
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Ooo0O()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 27
    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080388

    const v14, 0x7f1204c6

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v15

    const v2, 0x7f1205e6

    invoke-virtual {v15, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v13, v9, v14, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 29
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000o()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v12, v9, v11, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 33
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v8, v9, v7, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 36
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOOO()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isSupportRaw()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f08038c

    const v5, 0x7f1205ec

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1205eb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v9, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 40
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1205e3

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0ooo()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1205e2

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0oO()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0oo()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1205dc

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 48
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    if-ltz v2, :cond_c

    .line 49
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oo()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 50
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    if-eq v2, v3, :cond_c

    .line 51
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1205df

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 52
    :cond_b
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    if-ltz v2, :cond_c

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1205de

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_c
    :goto_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oo()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 55
    iget v2, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    if-ne v2, v3, :cond_d

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 56
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1205e0

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v5, 0x0

    .line 57
    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f08037f

    const v8, 0x7f1205ce

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f1205cd

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v2, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080391

    const v8, 0x7f1205ef

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f1205ee

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v2, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080383

    const v8, 0x7f1205d6

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f1205d5

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v2, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080380

    const v8, 0x7f1205d0

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f1205cf

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v2, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080381

    const v8, 0x7f1205d4

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f1205d1

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v2, v5

    const/4 v5, 0x5

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f080385

    const v8, 0x7f1205da

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f1205d9

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v6, v2, v5

    .line 64
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0ooo()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 66
    :cond_f
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f080386

    const v6, 0x7f1205e1

    invoke-direct {v2, v5, v9, v6, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_10
    iget v1, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_11

    .line 68
    iput-object v4, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mManuallyDataItems:Ljava/util/List;

    goto :goto_2

    :cond_11
    if-ne v1, v3, :cond_12

    .line 69
    iput-object v4, v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mProVideoDataItems:Ljava/util/List;

    :cond_12
    :goto_2
    return-object v4
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    const v0, 0x7f0a0306

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x43340000    # 180.0f

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 6
    :cond_0
    new-instance v2, Lcom/android/camera/fragment/manually/FragmentParameterDescription$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/manually/FragmentParameterDescription$1;-><init>(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0309

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mSplitView:Landroid/view/View;

    const v0, 0x7f0a0268

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    new-instance v2, Lcom/android/camera/fragment/manually/FragmentParameterDescription$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/camera/fragment/manually/FragmentParameterDescription$ItemPadding;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 11
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "parameter_recycler_view"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v2}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 15
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ParameterDescriptionAdapter;

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->getParameterData()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/manually/adapter/ParameterDescriptionAdapter;-><init>(Ljava/util/List;)V

    .line 16
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;-><init>(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const v0, 0x7f0a030b

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "mipro-medium"

    .line 19
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0a030a

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v2, "mipro-regular"

    .line 22
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mCurrentMode:I

    const/16 v2, 0xa7

    if-eq p1, v2, :cond_2

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f1205cb

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f1205ca

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 31
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 32
    :cond_3
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d006f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->initView(Landroid/view/View;)V

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
