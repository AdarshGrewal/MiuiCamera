.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
.source "FragmentMimojiAsEdit.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EDIT_ABANDON:I = 0x4

.field public static final EDIT_ABANDON_CAPTURE:I = 0x3

.field public static final EDIT_BACK:I = 0x1

.field public static final EDIT_CANCEL:I = 0x5

.field public static final EDIT_STATE_CREATE:I = 0x2

.field public static final EDIT_STATE_CREATE_EDITED:I = 0x3

.field public static final EDIT_STATE_CREATE_EMOTICON:I = 0x7

.field public static final EDIT_STATE_EMOTICON_BACK:I = 0x8

.field public static final EDIT_STATE_POP:I = 0x4

.field public static final EDIT_STATE_POP_EDITED:I = 0x5

.field public static final EDIT_STATE_SAVE:I = 0x6

.field public static final FRAGMENT_INFO:I = 0xfff1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public fromTag:I

.field public mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

.field public mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

.field public mBackTextView:Landroid/widget/TextView;

.field public mConfirmTextView:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field public mCreateEmoticonTextView:Landroid/widget/TextView;

.field public mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mCurrentConfigPath:Ljava/lang/String;

.field public mCurrentTopPannelState:I

.field public mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

.field public mEditState:Z

.field public mEnterFromMimoji:Z

.field public mHandler:Landroid/os/Handler;

.field public mIsStartEdit:Z

.field public mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

.field public mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

.field public mMimojiEditViewLayout:Landroid/view/View;

.field public mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMimojiTypeSelectView:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

.field public mMimojiTypeView:Landroid/widget/TextView;

.field public mOperateSelectLayout:Landroid/widget/LinearLayout;

.field public mPopSaveDeletePath:Ljava/lang/String;

.field public mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

.field public mRlAllEditContent:Landroid/widget/LinearLayout;

.field public mRlMainLayout:Landroid/widget/RelativeLayout;

.field public mRlNavigationlayout:Landroid/widget/RelativeLayout;

.field public mSaveFinishTextView:Landroid/widget/TextView;

.field public volatile mSetupCompleted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditState:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mPopSaveDeletePath:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSetupCompleted:Z

    .line 8
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic OooO0o()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showAlertDialog onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditState:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->fromTag:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/arcsoft/avatar2/AvatarEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mPopSaveDeletePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    return p0
.end method

.method private initConfigList()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->initAvatar(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setASAvatarConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v1

    iget v1, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->gender:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->getSupportConfigType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setConfigTypeList(Ljava/util/ArrayList;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->setLevelDatas(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0o;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0o;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V

    invoke-direct {v0, v2, v3}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter$ItfGvOnItemClickListener;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->setIsColorNeedNotify(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-nez v0, :cond_4

    .line 15
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    .line 16
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->setOnSelectListener(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;)V

    .line 17
    :cond_4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getConfigTypeList()Ljava/util/ArrayList;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;

    .line 20
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v4

    iget v5, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    .line 21
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v6

    iget v6, v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->gender:I

    .line 22
    invoke-virtual {v4, v5, v6}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfig(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 23
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putConfigList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configTypeDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v5

    iget v6, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->putConfigList(ILjava/util/ArrayList;)V

    .line 25
    iget v4, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->filterTypeTitle(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    new-instance v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTypeInfo;

    invoke-direct {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTypeInfo;-><init>()V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-static {v5, v6}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->replaceTabTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setText(Ljava/lang/String;)V

    .line 29
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 30
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setCurLength(F)V

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTypeInfo;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v5

    .line 33
    :goto_4
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setCurTotalLength(F)V

    const/4 v5, 0x0

    .line 34
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setAlpha(I)V

    .line 35
    invoke-virtual {v4, v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTypeInfo;->setASAvatarConfigType(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;)V

    .line 36
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 37
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 38
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, " initConfigList() size 0 error"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_8

    .line 41
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->initMimojiResource()V

    .line 42
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->initConfigList()V

    goto :goto_5

    .line 43
    :cond_8
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, " initConfigList() mimojiControl null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->setDataList(Ljava/util/ArrayList;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeSelectView:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v0, 0xc9

    .line 46
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->fromTag:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x4

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    goto :goto_6

    :cond_a
    const/4 v0, 0x2

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    :goto_6
    return-void
.end method

.method private initMimojiEdit(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0a0350

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlMainLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0368

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlNavigationlayout:Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034d

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0227

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0416

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v0

    const v1, 0x7f0600dd

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v4, [Landroid/view/View;

    .line 10
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/android/camera/animation/FolmeUtils;->touchButtonTint(I[Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a0437

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0413

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a009e

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a027a

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    .line 19
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setHandler(Landroid/os/Handler;)V

    const v0, 0x7f0a02e9

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 24
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v4, [Landroid/view/View;

    .line 25
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcom/android/camera/animation/FolmeUtils;->touchButtonTint(I[Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00e0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a043c

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeView:Landroid/widget/TextView;

    :cond_1
    const v0, 0x7f0a0286

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiTypeSelectView:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    const v0, 0x7f0a00e4

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_2

    .line 34
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    const-string v1, "color_level"

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    :cond_2
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$2;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$2;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V

    invoke-direct {p1, v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter$ItfGvOnItemClickListener;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    .line 38
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    .line 40
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->initView(Landroid/content/Context;Landroid/view/View;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method private resetData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->resetData()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->setIsColorNeedNotify(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getSelectType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->setLevelDatas(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->getIsRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->setResetStopRender(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->draw(Z)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetData   mEnterFromMimoji :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method private setupAvatar()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setup avatar"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSetupCompleted:Z

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    .line 5
    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->loadColorValue(Ljava/lang/String;)I

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setASAvatarConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setASAvatarConfigValueDefault(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v0, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 13
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    const/16 v3, 0x1f4

    const-string v4, "MimojiEdit"

    invoke-direct {v1, v4, v3, v3, v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;-><init>(Ljava/lang/String;IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->waitUntilReady()V

    .line 16
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->setUpdateHandler(Landroid/os/Handler;)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    if-eqz v1, :cond_1

    .line 18
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->setRenderThread(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)V

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->initUpdatePara()V

    .line 20
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSetupCompleted:Z

    .line 22
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setIsStopRenderForce(Z)V

    .line 24
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setStopRender(Z)V

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setIsAvatarInited(Z)V

    return-void
.end method

.method private showAlertDialog(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x7f120505

    goto :goto_0

    :cond_2
    const v0, 0x7f120506

    goto :goto_0

    :cond_3
    const v0, 0x7f120508

    :goto_0
    if-ne v0, v1, :cond_4

    return-void

    .line 2
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1204ec

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$4;

    invoke-direct {v6, p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$4;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const p1, 0x7f1204d4

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0oo;

    .line 5
    invoke-static/range {v2 .. v10}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 6
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$5;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$5;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTypeInfo;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectListener position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", text="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->updateLayoutPosition()V

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditLevelListAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->setIsColorNeedNotify(Z)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTypeInfo;->getASAvatarConfigType()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xf7

    .line 7
    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 8
    iget p1, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onTypeConfigSelect(I)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditState:Z

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->fromTag:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->resetLayoutPosition(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    :goto_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, "avatar releaseRender 2"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->releaseRender()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x13

    new-array v3, v1, [I

    .line 2
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_0
    const/4 v0, 0x0

    const-string v2, "mimoji_sticker_pack"

    .line 3
    invoke-static {v0, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->fromTag:I

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xfa

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->setIsDirectEmoticon(Z)V

    :cond_2
    if-eqz v0, :cond_4

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlNavigationlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->clear()V

    .line 14
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->setIsStartEdit(Z)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    :goto_1
    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public createEmoticonPicture(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, "createEmoticonVideo mRenderThread null "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->setupAvatar()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->drawForEmoticonPicture(Ljava/util/List;)V

    return-void
.end method

.method public createEmoticonThumbnail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, "createEmoticonVideo mRenderThread null "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->setupAvatar()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->drawForEmoticonThumbnail()V

    return-void
.end method

.method public createEmoticonVideo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, "createEmoticonVideo mRenderThread null "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->setupAvatar()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->recordForEmoticonVideo(Ljava/util/List;)V

    return-void
.end method

.method public directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mPopSaveDeletePath:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xed

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v0, :cond_0

    const/16 v1, 0xc9

    if-ne p2, v1, :cond_0

    const/4 v1, 0x4

    .line 8
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb7

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;->forceSwitchFront()Z

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setDisableSingleTapUp(Z)V

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_0

    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->startMimojiEdit(I)V

    return-void

    :array_0
    .array-data 4
        0xc5
        0xc1
    .end array-data
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff1

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0099

    return v0
.end method

.method public getTextureViewMarginTopHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goBack(ZZ)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->releaseRender()V

    :cond_0
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xed

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xcb

    .line 8
    iget v3, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->fromTag:I

    if-ne p1, v3, :cond_2

    const/4 v2, 0x2

    .line 9
    :cond_2
    invoke-interface {v0, v2, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onModeStateBack(IZ)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xf8

    .line 11
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    .line 13
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xaf

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_5

    .line 14
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    .line 15
    :cond_5
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    const/16 p2, 0x8

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->quit()V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object p2, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isSetupCompleted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAvatarBindEnd()V
    .locals 0

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/4 v4, 0x4

    if-eqz p1, :cond_4

    .line 3
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    if-ne p1, v4, :cond_3

    .line 4
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showAlertDialog(I)V

    :cond_3
    return v0

    .line 5
    :cond_4
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->fromTag:I

    const/16 v5, 0xcb

    if-ne p1, v5, :cond_5

    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    const/4 v5, 0x2

    if-ne p1, v5, :cond_5

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showAlertDialog(I)V

    return v0

    .line 7
    :cond_5
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    if-ne p1, v2, :cond_6

    .line 8
    invoke-direct {p0, v4}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showAlertDialog(I)V

    return v0

    .line 9
    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_7

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showAlertDialog(I)V

    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSetupCompleted:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->getInstance()Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->checkClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: tv_save_finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->quitAndSaveEdit(Z)V

    goto :goto_0

    .line 5
    :sswitch_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: tv_create_emoticon"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showEmoticon()V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xed

    .line 9
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    goto :goto_0

    .line 11
    :sswitch_2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick: tv_back"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->fromTag:I

    const/16 v2, 0xc9

    if-ne p1, v2, :cond_1

    .line 13
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showAlertDialog(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xcb

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    .line 14
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    if-ne p1, v2, :cond_2

    .line 15
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showAlertDialog(I)V

    goto :goto_0

    .line 16
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditState:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEditState:Z

    .line 18
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->resetData()V

    const-string p1, "edit_reset"

    const-string v0, "edit"

    .line 20
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :sswitch_3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: btn_confirm"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a009e -> :sswitch_3
        0x7f0a0413 -> :sswitch_2
        0x7f0a0416 -> :sswitch_1
        0x7f0a0437 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDeviceRotationChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->onDeviceRotationChange(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->getInstance()Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->setForceDisabled(Z)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->getInstance()Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->setForceDisabled(Z)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public onSurfaceViewPause()V
    .locals 0

    return-void
.end method

.method public onSurfaceViewResume()V
    .locals 0

    return-void
.end method

.method public onTypeConfigSelect(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setIsColorSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setSelectType(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->getIsRendering()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x6

    .line 5
    iput v0, p1, Landroid/os/Message;->what:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->setStopRender(Z)V

    :goto_0
    return-void
.end method

.method public onTypeConfigSelect(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;IZ)V
    .locals 0

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
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

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

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string p2, "mimoji edit timeout"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->goBack(ZZ)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->getFragmentInto()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    :cond_1
    return-void
.end method

.method public quitAndSaveEdit(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->putMimojiConfigValue(Ljava/util/Map;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)Ljava/util/Map;

    const-string v0, "attr_event_name"

    const-string v2, "click"

    .line 6
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    const-string v2, "key_mimoji_edit_save"

    const-string v3, "attr_mimoji_edit_count"

    if-eqz v0, :cond_0

    const-string v0, "from edit "

    .line 8
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v2, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "from create "

    .line 10
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v2, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "preview_mid_save"

    const-string/jumbo v1, "preview_mid"

    .line 12
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    const/4 p1, 0x6

    .line 18
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setSaveConfigThum(Z)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->goBack(ZZ)V

    :goto_1
    return-void
.end method

.method public quitCoverEmoticon()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->quitEmoticonVideo()V

    :cond_0
    return-void
.end method

.method public reInitMimojiEditState(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    return-void
.end method

.method public refreshIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 0

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf7

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public releaseRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setIsStopRenderForce(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0oO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0oO;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    .line 3
    invoke-virtual {v0}, Landroid/view/TextureView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setStopRender(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetClickEnable(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->getInstance()Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->setForceDisabled(Z)V

    return-void
.end method

.method public resetConfig()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetConfig view NULL, UI need init "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setStopRender(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatarEngineManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const v1, 0x3f59999a    # 0.85f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setIsStopRenderForce(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setStopRender(Z)V

    return-void
.end method

.method public setIsStartEdit(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mIsStartEdit:Z

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setPresenter(Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEdit;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEdit;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->setPresenter(Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEdit;)V

    return-void
.end method

.method public showEmoticon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Landroid/app/Activity;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startMimojiEdit(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMimojiEdit\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSetupCompleted:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->initMimojiEdit(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 10
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 11
    :cond_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlNavigationlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setStopRender(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 18
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->fromTag:I

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->setupAvatar()V

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_3

    .line 21
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->initConfigList()V

    goto :goto_2

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRenderThread:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mEnterFromMimoji:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->initAvatar(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showEmoticon()V

    .line 24
    :goto_2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0o0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0o0;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf7

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->setIsStartEdit(Z)V

    return-void
.end method

.method public updateTitleState(I)V
    .locals 6

    const v0, 0x7f120533

    const v1, 0x7f060368

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    goto/16 :goto_0

    .line 2
    :pswitch_1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mMimojiAsEditGLTextureView:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    const/4 v5, 0x6

    invoke-virtual {p1, v0, v1, v2, v5}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->initView(Landroid/content/Context;Landroid/view/View;Landroid/widget/LinearLayout;I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 13
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    .line 14
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06036c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    :pswitch_4
    const/4 p1, 0x3

    .line 25
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120532

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 38
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mCurrentTopPannelState:I

    .line 39
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 41
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f120530

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 46
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
