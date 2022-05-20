.class public Lcom/android/camera/fragment/vv/VVWorkspaceActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "VVWorkspaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/vv/VVWorkspaceActivity$FragmentVVWorkspaceItemDecoration;,
        Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;
    }
.end annotation


# static fields
.field public static final DELETE:I = 0x67

.field public static final EDIT:I = 0x66

.field public static final REQUEST_CODE:I = 0x65

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

.field public mAudioController:Lcom/android/camera/module/AudioController;

.field public mDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDeleteMenuItem:Landroid/view/MenuItem;

.field public mEditActionMode:Landroid/view/ActionMode;

.field public mEmptyView:Landroid/view/View;

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mPlayerItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;",
            ">;"
        }
    .end annotation
.end field

.field public mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field public mVVList:Lcom/android/camera/fragment/vv/VVList;

.field public vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 2

    .line 2
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string v1, "mDeleteDialog onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->setEditMode(ZZ)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->onSelectAllClick()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->onDeleteClick()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->showEmptyView()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private exit()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private finishActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private inEditMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isEditMode()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private initActionBar()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f120495

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method private initView()V
    .locals 11

    const v0, 0x7f0a04ca

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a04cf

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEmptyView:Landroid/view/View;

    .line 3
    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/VVWorkspace;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspace;->restoreWorkspace()Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->showEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080687

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOo00;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOo00;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07080c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    invoke-static {p0}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VlogViewModel;->getVVList()Lcom/android/camera/fragment/vv/VVList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mPlayerItemList:Ljava/util/List;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v3, v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/vv/VVItem;

    .line 16
    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mPlayerItemList:Ljava/util/List;

    new-instance v4, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    invoke-direct {v4, v1, v2}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;Lcom/android/camera/fragment/vv/VVItem;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mPlayerItemList:Ljava/util/List;

    move-object v5, v0

    move-object v6, p0

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    .line 18
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const-string/jumbo v1, "vv_workspace"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070815

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070817

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 24
    new-instance v3, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$FragmentVVWorkspaceItemDecoration;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$FragmentVVWorkspaceItemDecoration;-><init>(III)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private intoActionMode()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string v1, "intoActionMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Lcom/android/camera/fragment/vv/VVWorkspaceActivity$1;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method private onDeleteClick()V
    .locals 13

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: vv_delete_layout"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "value_vv_click_workspace_delete"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100018

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f120483

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$1;

    invoke-direct {v8, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$1;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    const v0, 0x7f1204d4

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOoo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOoo;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    .line 6
    invoke-static/range {v4 .. v12}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    new-instance v1, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$2;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private onSelectAllClick()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick: vv_workspace_edit, inEditMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->inEditMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "value_vv_click_workspace_select_all"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isSelectedAll()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->selected(Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->updateSelectedCount()V

    return-void
.end method

.method private restoreOuterAudio()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/AudioController;->restoreMusicSteam(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method private setEditMode(ZZ)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEditMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->setEditMode(Z)V

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->selected(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->stopAll()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->intoActionMode()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->finishActionMode()V

    :goto_0
    return-void
.end method

.method private showEmptyView()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private silenceOuterAudio()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/AudioController;->requestMusicSteam(Landroid/app/Activity;)V

    return-void
.end method

.method private updateSelectedCount()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSelectedCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    check-cast v0, Lmiuix/view/EditActionMode;

    const v1, 0x102001a

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    .line 7
    invoke-virtual {v3}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isSelectedAll()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f08068d

    goto :goto_1

    :cond_3
    const v3, 0x7f080693

    .line 8
    :goto_1
    invoke-interface {v0, v1, v2, v3}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->setEditMode(ZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: vv_workspace_shot"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "value_vv_click_workspace_continue"

    .line 3
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v1, p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVItem;

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string v1, "createFromRawInfo"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getRawInfoPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/fragment/vv/VVItem;->createFromRawInfo(Ljava/lang/String;)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    sget-object p1, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string v0, "create failed"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentVVItem(Lcom/android/camera/fragment/vv/VVItem;)V

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMProcessing;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->reset()V

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/camera/data/observeable/VMProcessing;->setCurrentWorkspaceItem(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const/16 v0, 0xb3

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 15
    :sswitch_1
    sget-object p1, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_workspace_delete"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->updateSelectedCount()V

    goto :goto_0

    .line 17
    :sswitch_2
    sget-object p1, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_workspace_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->inEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->setEditMode(ZZ)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->exit()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a04cb -> :sswitch_2
        0x7f0a04cd -> :sswitch_1
        0x7f0a04d4 -> :sswitch_0
        0x7f0a04d6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00c6

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->initActionBar()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->inEditMode()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->setEditMode(ZZ)V

    return p2

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->exit()V

    return p2

    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_3

    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 4
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->restoreOuterAudio()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->stopAll()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    return-void
.end method

.method public onPlay()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->silenceOuterAudio()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
