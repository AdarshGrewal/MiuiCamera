.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;
.super Lcom/android/camera/fragment/live/FragmentLiveBase;
.source "FragmentMimojiBottomList.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;,
        Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$ItemDownloadListener;,
        Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;,
        Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;
    }
.end annotation


# static fields
.field public static final ADD_STATE:Ljava/lang/String; = "add_state"

.field public static final CLOSE_STATE:Ljava/lang/String; = "close_state"

.field public static final DIALOG_BACK_CONFIRM:I = 0x5

.field public static final DIALOG_DELETE_ITEM:I = 0x1

.field public static final DIALOG_DOWNLOAD_PROGRESS:I = 0x4

.field public static final DIALOG_DOWNLOAD_PROMPT:I = 0x3

.field public static final FRAGMENT_INFO:I = 0xfff0

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

.field public cloudListLoadSuccess:Z

.field public isDataResetComplete:Z

.field public mAvatarItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mClickTime:J

.field public mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mContext:Landroid/content/Context;

.field public mCurrentAvatarType:I

.field public mDownlaodMaterialType:Ljava/lang/String;

.field public mHanderThread:Landroid/os/HandlerThread;

.field public mHandler:Landroid/os/Handler;

.field public mIsRTL:Z

.field public mIsSameItem:Z

.field public mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mItemWidth:I

.field public mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

.field public mLlProgress:Landroid/widget/LinearLayout;

.field public mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

.field public mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

.field public mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

.field public mMimojiVersion:I

.field public mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

.field public mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field public mSelectIndex:I

.field public mTotalWidth:I

.field public mVMResource:Lcom/android/camera/data/observeable/VMResource;

.field public mavatarItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

.field public popContainer:Landroid/widget/RelativeLayout;

.field public popParent:Landroid/widget/RelativeLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiVersion:I

    return-void
.end method

.method public static synthetic OooO()V
    .locals 0

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->deleteItem()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->onItemSelected(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic OooOO0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "delete onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsSameItem:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->unRegisterDownloadListener()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mDownlaodMaterialType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->enterEditMode(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showNetworkErrorToast()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    return-object p0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$502(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->cloudListLoadSuccess:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initResource()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    return p1
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return p0
.end method

.method private autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :goto_0
    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_5

    add-int/lit8 v2, v2, -0x2

    if-ne p1, v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_3

    :cond_4
    :goto_1
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    .line 8
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, p1, -0x1

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    const/4 v2, 0x1

    if-eq v0, p1, :cond_6

    move v1, v2

    :cond_6
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    sub-int/2addr p2, v2

    if-ne v0, p2, :cond_8

    .line 10
    :cond_7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 11
    :catch_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p2, "mimoji boolean autoMove[position, adapter]"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return v1
.end method

.method private checkNetworkConnect()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/network/util/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "check network disconnect"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showNetworkErrorToast()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private deleteItem()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mavatarItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mavatarItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mavatarItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-virtual {v1, v4}, Lcom/android/camera/resource/BaseResourceList;->getIndex(Lcom/android/camera/resource/BaseResourceItem;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->updateListData()V

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xf6

    .line 11
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v4, :cond_2

    .line 12
    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v5, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->getItemAt(I)Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z

    .line 13
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 14
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMimojiInfo()V

    if-eq v1, v3, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 18
    :cond_3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "delete onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->getavatarItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji_click_delete"

    const-string v2, "edit"

    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCount(I)V

    :cond_4
    return-void
.end method

.method private enterEditMode(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->disableFrontFlashAndHalo(Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->simpleVerificationMaterial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setMaterialDownloadState(Z)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMaterialDownloadState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    .line 9
    sget-object p1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EDIT_ITEM_DOWNLOAD:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mDownlaodMaterialType:Ljava/lang/String;

    const/4 p1, 0x3

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->releaseRender()V

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf7

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mavatarItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    const/16 v2, 0xc9

    invoke-interface {p1, v0, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V

    .line 15
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_4

    .line 16
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    .line 17
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->getavatarItemType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mimoji_click_edit"

    const-string v1, "edit"

    invoke-static {p1, v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-virtual {p1, v1, v1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    return-void
.end method

.method private getavatarItemType()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    const-string v2, "cartoon"

    const-string v3, "custom"

    if-eqz v0, :cond_4

    .line 2
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    array-length v4, v0

    if-gt v4, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v4, v0

    sub-int/2addr v4, v1

    aget-object v4, v0, v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    array-length v4, v0

    sub-int/2addr v4, v1

    aget-object v0, v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, " "

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "human"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v2, "person"

    goto :goto_2

    :cond_4
    const-string v0, ""

    :cond_5
    move-object v2, v3

    .line 8
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v2

    .line 9
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAvatarList()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$2;

    const-string v2, "mimojilist"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$2;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f080571

    goto :goto_0

    :cond_3
    const v1, 0x7f08056f

    .line 9
    :goto_0
    new-instance v2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    .line 10
    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setResourceBg(I)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOO0O;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOO0O;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf6

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 14
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 15
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isLoading()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->isAvatarInited()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v3

    .line 17
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->firstProgressShow(Z)V

    goto :goto_5

    .line 18
    :cond_6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oOoO()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 20
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 21
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->simpleVerificationModel()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v3

    .line 22
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->firstProgressShow(Z)V

    .line 23
    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMimojiInfo()V

    .line 24
    new-instance v1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    .line 25
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-nez v0, :cond_c

    .line 29
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    if-nez v0, :cond_9

    const-string v0, "close_state"

    goto :goto_6

    .line 30
    :cond_9
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 31
    :goto_6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    .line 32
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 33
    iput v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 34
    :cond_b
    :goto_7
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->repairFrameOfCartoon()V

    .line 35
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    return-void
.end method

.method private initBgList()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    invoke-interface {v2, v1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;->initBgData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 4
    iput v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 5
    :cond_0
    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    invoke-direct {v1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    .line 6
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V

    .line 8
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    .line 9
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initMargin()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initResource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMResource;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    .line 3
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOoo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOoo;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/observeable/VMResource;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method

.method private initTimbreList()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    invoke-interface {v2, v1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;->initTimbreData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 4
    iput v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 5
    :cond_0
    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-direct {v1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    .line 6
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOO0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V

    .line 8
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    .line 9
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 13
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    .line 14
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v3

    iget v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    .line 15
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    .line 16
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->setSelectState(IZ)Z

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->hideProgress()V

    return-void
.end method

.method private isMimojiFu()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiVersion:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onItemSelected(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;ILandroid/view/View;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    if-eqz v0, :cond_10

    .line 4
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->isAvatarInited()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mClickTime:J

    sub-long v3, v1, v3

    sget v5, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    return-void

    .line 7
    :cond_1
    iput-wide v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mClickTime:J

    .line 8
    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, p2, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsSameItem:Z

    .line 10
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 11
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 14
    iget v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v1, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setFrame(I)V

    .line 16
    :cond_3
    iput p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 17
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v2, 0x0

    const/4 v5, -0x2

    invoke-virtual {v1, v5, v5, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    .line 18
    iget-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v5, "add_state"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->onAddItemSelected(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V

    return-void

    .line 20
    :cond_4
    iget-object v7, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    const-string v11, "close_state"

    if-nez v1, :cond_5

    move-object v8, v11

    goto :goto_1

    .line 22
    :cond_5
    move-object v5, v1

    check-cast v5, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    iget-object v5, v5, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    move-object v8, v5

    .line 23
    :goto_1
    sget-object v5, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "click\u3000currentState:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " lastState:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getDefaultFrame()I

    move-result v5

    if-lez v5, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->nextFrame()I

    .line 26
    invoke-virtual {p1, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setIsNeedAnim(Z)V

    .line 27
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_a

    .line 28
    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result p3

    if-nez p3, :cond_9

    .line 29
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 30
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p2, "check network"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const p2, 0x7f120480

    const/16 p3, 0x50

    invoke-static {p1, p2, p3}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 32
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->updateSelectItem(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V

    if-nez v1, :cond_8

    .line 33
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setBgIconNeedShow(Z)V

    .line 34
    :cond_8
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 35
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->downloadItem(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V

    :cond_9
    return-void

    .line 36
    :cond_a
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v1

    const-string v5, " name="

    const-string/jumbo v6, "onItemSelected position="

    if-lez v1, :cond_b

    iget v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    if-lez v1, :cond_b

    .line 37
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 40
    :cond_b
    iget v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    if-lez v1, :cond_c

    .line 41
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 44
    :cond_c
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-direct {p0, p2, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v9, p3

    .line 46
    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->processBubble(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V

    .line 47
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 48
    invoke-interface {v0, p1, v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->updateSelectItem(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V

    goto :goto_3

    .line 50
    :cond_e
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 51
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p3, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setSelectState(I)V

    .line 52
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const p3, 0xfff0

    .line 53
    iput p3, p2, Landroid/os/Message;->what:I

    .line 54
    iget-object p3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    move-object p1, v2

    :cond_f
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_10
    :goto_3
    return-void
.end method

.method private onResourceDownloadStateChanged(Ljava/util/HashMap;)V
    .locals 3
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

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->getItemAt(I)Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, v2, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private registerDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->setUpdateListener(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->setMaterialDownloadListener(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$ItemDownloadListener;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$ItemDownloadListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->setItemDownloadListener(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$ItemDownloadListener;)V

    return-void
.end method

.method private repairFrameOfCartoon()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[repairFrameOfCartoon] reset cartoon frame, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    iget v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 4
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setFrame(I)V

    :cond_0
    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    add-int/2addr p1, v2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    .line 8
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2
.end method

.method private setSelectItemInCenter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showAlertDialog(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v1, 0x3

    const v2, 0x7f1208f5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120370

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4
    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const p1, 0x7f1204ec

    .line 5
    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOo0;

    invoke-direct {v9, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOo0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOO0;

    invoke-direct {v13, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOO0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    .line 7
    invoke-static/range {v5 .. v13}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 8
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0oO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0oO;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f120375

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/camera/RotateDialogController;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;I)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 12
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOO0o;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isMaterialDownloading()Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_1

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v4}, Lcom/android/camera/fragment/CtaNoticeFragment;->checkCta(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 15
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "check cta"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->checkNetworkConnect()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/network/NetworkDependencies;->isConnectedWIFI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "connected wifi"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMaterialDownloading(Z)V

    .line 20
    invoke-direct {p0, v5}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->downloadMaterial(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    goto/16 :goto_2

    .line 22
    :cond_9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120376

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Ooo()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f120373

    goto :goto_0

    :cond_a
    const v1, 0x7f120374

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 24
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;->materialSize:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 26
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const p1, 0x7f120371

    .line 27
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO00o;

    invoke-direct {v8, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO00o;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 29
    invoke-static/range {v4 .. v12}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 30
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOOo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOOo;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    :cond_b
    :goto_1
    return-void

    .line 31
    :cond_c
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_d

    return-void

    .line 32
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const p1, 0x7f1204f3

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const p1, 0x7f1204f2

    .line 33
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0OO;

    invoke-direct {v6, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0OO;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    const p1, 0x7f1204d4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOo;

    .line 34
    invoke-static/range {v0 .. v8}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 35
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0O0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_2
    return-void

    .line 36
    :cond_e
    :goto_3
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "not attached to Activity , skip showAlertDialog"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showNetworkErrorToast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOOO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOOO;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "not attached to Activity , skip checkNetworkConnect"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unRegisterDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->setUpdateListener(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->setMaterialDownloadListener(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;)V

    :cond_0
    return-void
.end method

.method private updateListData()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "human.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v3, v4, v1, v1}, Lcom/android/camera/module/impl/component/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->setMimojiDownloadTime(J)V

    .line 6
    :cond_0
    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    .line 8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mavatarItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-virtual {v3, v4}, Lcom/android/camera/resource/BaseResourceList;->getIndex(Lcom/android/camera/resource/BaseResourceItem;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 11
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 15
    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->setDeparted()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 16
    :goto_0
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMimojiDeleted error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private updateSelectItem(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->getLastSelectPosition()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCurrentAvatarType:I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCurrentAvatarType:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setSelectState(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->onResourceDownloadStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;ILandroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMimojiChangeBg position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getDescId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, p1, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;->setSelectState(I)Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOo0;

    invoke-direct {p1, p0, p3}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOo0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p3, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;ILandroid/view/View;)V
    .locals 4

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMimojiChangeTimbre position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getDescId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->setSelectState(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->onMimojiChangeTimbre(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;I)V

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 27
    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 28
    new-instance p1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO;

    invoke-direct {p1, p0, p3}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p3, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->hideProgress()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMimojiInfo()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v3, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshMimojiList AVATAR"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    if-nez v0, :cond_0

    const-string v0, "close_state"

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    iget-object v2, v2, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iput v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->repairFrameOfCartoon()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setSelectState(I)V

    return-void

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->hideProgress()V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method public synthetic OooO0OO(Landroid/content/DialogInterface;)V
    .locals 2

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isMaterialDownloading()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 21
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 22
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMaterialDownloading(Z)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->cancelMaterialDownload()V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->unRegisterDownloadListener()V

    .line 27
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 28
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    :goto_0
    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMaterialDownloading(Z)V

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->downloadMaterial(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/content/DialogInterface;)V
    .locals 1

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "dissmiss :mCancelDialog "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isMaterialDownloading()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "cancle download onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isMaterialDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "cancle download onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->cancelMaterialDownload()V

    return-void
.end method

.method public synthetic OooO0oO()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    const/4 v2, 0x0

    new-array v2, v2, [I

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->getavatarItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji_sticker_pack"

    const-string v2, "edit"

    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfa

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->setIsDirectEmoticon(Z)V

    :cond_1
    return-void
.end method

.method public synthetic OooO0oo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const v1, 0x7f120480

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public filelistToMimojiInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oOoO()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isDataResetComplete:Z

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;->initAvatarData(ILjava/util/List;)I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mAvatarItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setDataList(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCount(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public firstProgressShow(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "not attached to Activity , skip     firstProgressShow........"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initView(Landroid/view/View;)V

    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstProgressShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff0

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0097

    return v0
.end method

.method public hideTimbreProgress()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0o0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemWidth:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsRTL:Z

    const v0, 0x7f0a0281

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0a0228

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a034c

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0235

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    .line 10
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;I)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 12
    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$1;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 17
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiVersion:I

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    if-nez p1, :cond_1

    .line 19
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->setContext(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->registerDownloadListener()V

    .line 23
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-direct {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;

    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiVersion:I

    invoke-direct {p1, v0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    .line 25
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initMargin()V

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initTimbreList()V

    goto :goto_1

    .line 28
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initBgList()V

    goto :goto_1

    .line 29
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initAvatarList()V

    goto :goto_1

    .line 30
    :cond_5
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "init MimojiPanelState close"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public isCloudListLoadSuccess()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->cloudListLoadSuccess:Z

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

.method public isDestroy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
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

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->notifyThemeChanged(ILjava/util/List;I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f080571

    goto :goto_0

    :cond_0
    const p1, 0x7f08056f

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 5
    :goto_1
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 6
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setResourceBg(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public onAddItemSelected(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAddItemSelected"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->simpleVerificationMaterial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/extra/DataItemLive;->setMaterialDownloadState(Z)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMaterialDownloadState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CREATE_ITEM_DOWNLOAD:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mDownlaodMaterialType:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xf6

    .line 10
    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 11
    iput-boolean v2, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mIsNeedShowWhenExit:Z

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb7

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;->forceSwitchFront()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    .line 14
    :goto_0
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v4, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setChangeFrontCreate(Z)V

    .line 15
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xed

    .line 16
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v3, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    :cond_3
    if-eqz v0, :cond_4

    .line 18
    invoke-interface {v0, p1, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z

    :cond_4
    const-string p1, "mimoji_click_add"

    const-string v0, "add"

    .line 19
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBackEvent in prepare mimojiCreate "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_3

    .line 6
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb8

    if-ne v0, v2, :cond_3

    .line 7
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    new-array v1, v1, [I

    .line 9
    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOo00;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOo00;

    invoke-static {p1, v0}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_8

    .line 3
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->isAvatarInited()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xed

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0xc9

    if-eq p1, v2, :cond_7

    const/16 v2, 0xca

    if-eq p1, v2, :cond_6

    const/16 v2, 0xcc

    if-eq p1, v2, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    sget-object v3, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick EMOTICON_PROCESS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->releaseRender()V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showEmoticonFragment()V

    .line 11
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->createEmoticon()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf7

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mavatarItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-interface {p1, v0, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    const/4 p1, 0x5

    .line 15
    invoke-interface {v1, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    .line 16
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-virtual {p1, v1, v1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    goto :goto_1

    .line 19
    :cond_6
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick DELETE_PROCESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    goto :goto_1

    .line 21
    :cond_7
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick EDIT_PROCESS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->enterEditMode(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V

    :goto_1
    return-void

    .line 23
    :cond_8
    :goto_2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "MIMOJI CLICK disable, waiting init finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isMaterialDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->unRegisterDownloadListener()V

    :cond_0
    return-void
.end method

.method public onMimojiChangeTimbre(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;I)V
    .locals 6

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2, v1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    :goto_1
    if-nez p1, :cond_2

    const p2, 0x7f120966

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getDescId()I

    move-result p2

    .line 6
    :goto_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v2, 0x4

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    if-eq v0, v2, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {v0, v5, p2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(IIJ)V

    goto :goto_3

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xf9

    .line 11
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, v5, p2, v3, v4}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->alertTop(IIJ)V

    .line 13
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xfc

    .line 14
    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p2, :cond_5

    .line 15
    invoke-interface {p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->changeTimbre()V

    :cond_5
    :goto_3
    const-string p2, "mimoji_change_timbre"

    .line 16
    invoke-static {v1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void onMimojiChangeTimbre[timbreItem]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->setSelectItemInCenter()V

    return-void
.end method

.method public processBubble(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "add_state"

    .line 3
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "close_state"

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    if-nez p5, :cond_3

    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->isIsPreHuman()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mavatarItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 7
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 8
    invoke-virtual {p4, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p5, 0x0

    .line 9
    aget p3, p3, p5

    .line 10
    iget-object p5, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p5

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v1

    .line 12
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 13
    div-int/lit8 v3, p1, 0x2

    add-int v4, p3, v3

    int-to-float v4, v4

    div-float/2addr v1, v2

    sub-float/2addr v4, v1

    float-to-int v2, v4

    .line 14
    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsRTL:Z

    if-eqz v4, :cond_1

    .line 15
    iget v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    sub-int/2addr v2, p3

    sub-int/2addr v2, p1

    int-to-float p1, v2

    int-to-float p3, v3

    sub-float/2addr p3, v1

    add-float/2addr p1, p3

    float-to-int v2, p1

    .line 16
    :cond_1
    div-int/2addr v0, p2

    sub-int/2addr p5, v0

    .line 17
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "coordinateY:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->setRotation(I)V

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    invoke-virtual {p1, v2, p5, p4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    :cond_3
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/live/FragmentLiveBase;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provideAnimateElement, animateInElements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "resetType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isMaterialDownloading()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DOWNLOAD_ONLY:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mDownlaodMaterialType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->getRotateViews()[Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->getRotateViews()[Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 15
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v1, p1, :cond_3

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public refreshMimojiList()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0o;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf8

    .line 3
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setDataResetCompleted()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isDataResetComplete:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->pullNewList(I)V

    :cond_0
    return-void
.end method

.method public showEmoticonFragment()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->disableFrontFlashAndHalo(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooO0oo;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "not attached to Activity , skip showEmoticonFragment"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchMimojiList()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateHide(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->refreshMimojiList()I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->setSelectItemInCenter()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, -0x2

    .line 3
    invoke-virtual {p1, v1, v1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xf8

    .line 5
    invoke-virtual {p1, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 8
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const v1, 0xfff0

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method
