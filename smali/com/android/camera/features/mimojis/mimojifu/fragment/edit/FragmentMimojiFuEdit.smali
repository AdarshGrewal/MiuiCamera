.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
.source "FragmentMimojiFuEdit.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$PreviewRender;
    }
.end annotation


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
.field public countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

.field public fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

.field public generateAvatarIcon:Z

.field public gson:Lcom/google/gson/Gson;

.field public volatile isBackToHome:Z

.field public isChangeModeFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isConfigLoading:Z

.field public isNeedRenderIcon:Z

.field public isNeedResetEdit:Z

.field public isRenderIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mBackTextView:Landroid/widget/TextView;

.field public mConfirmTextView:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field public mCreateEmoticonTextView:Landroid/widget/TextView;

.field public mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mCurrentConfigPath:Ljava/lang/String;

.field public mCurrentTopPannelState:I

.field public mCurrentTypePosition:I

.field public mEditFaceBaseFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;",
            ">;"
        }
    .end annotation
.end field

.field public mFromTag:I

.field public mHandler:Landroid/os/Handler;

.field public volatile mIsEdit:Z

.field public volatile mIsSetupCompleted:Z

.field public mLastMimojiFuColor:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

.field public mLastMimojiFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public mLastMimojiFuTypeItem:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

.field public mMimojiEditViewLayout:Landroid/view/View;

.field public mMimojiFuEditBottomList:Landroid/widget/FrameLayout;

.field public mMimojiFuEditCoverView:Landroid/view/View;

.field public mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

.field public mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

.field public mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter<",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;",
            ">;"
        }
    .end annotation
.end field

.field public mMimojiTypeSelectView:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

.field public mMimojiTypeView:Landroid/widget/TextView;

.field public mOperateSelectLayout:Landroid/widget/LinearLayout;

.field public mPopSaveDeletePath:Ljava/lang/String;

.field public mPreviewRender:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$PreviewRender;

.field public mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field public mRlAllEditContent:Landroid/widget/LinearLayout;

.field public mRlMainLayout:Landroid/widget/RelativeLayout;

.field public mRlNavigationlayout:Landroid/widget/RelativeLayout;

.field public mSaveFinishTextView:Landroid/widget/TextView;

.field public mTextureViewMarginTopHeight:I

.field public newAvatarIconPath:Ljava/lang/String;

.field public onMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;

.field public volatile pos:I

.field public refreshIconTime:J

.field public rendIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;

.field public volatile size:I

.field public takePhotoCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

.field public tempItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

.field public tempRow:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    const/16 v0, 0xcb

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentConfigPath:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mPopSaveDeletePath:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isRenderIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isChangeModeFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsSetupCompleted:Z

    .line 10
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsEdit:Z

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    .line 12
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->gson:Lcom/google/gson/Gson;

    .line 13
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mHandler:Landroid/os/Handler;

    .line 14
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->generateAvatarIcon:Z

    .line 15
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->newAvatarIconPath:Ljava/lang/String;

    .line 16
    iput v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->pos:I

    .line 17
    iput v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->size:I

    .line 18
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->takePhotoCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    .line 19
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->rendIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;

    .line 20
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->onMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->getGlcontext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiEditViewLayout:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedRenderIcon:Z

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedRenderIcon:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->tempRow:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->tempItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->renderIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedResetEdit:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->resetData()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->size:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->refreshIconTime:J

    return-wide v0
.end method

.method public static synthetic access$2102(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->refreshIconTime:J

    return-wide p1
.end method

.method public static synthetic access$2202(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isConfigLoading:Z

    return p1
.end method

.method public static synthetic access$2300(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    return-object p1
.end method

.method public static synthetic access$2400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuColor:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuColor:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    return-object p1
.end method

.method public static synthetic access$2500(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuTypeItem:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuTypeItem:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->dissmissDialog()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isRenderIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->newAvatarIconPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isBackToHome:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isBackToHome:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->pos:I

    return p0
.end method

.method public static synthetic access$902(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->pos:I

    return p1
.end method

.method public static synthetic access$908(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->pos:I

    return v0
.end method

.method private dissmissDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private enterEditRenderMode()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isChangeModeFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setOnlyViewVisible(Landroid/view/View;Z)Z

    .line 3
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    const/16 v2, 0xcb

    if-ne v0, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentConfigPath:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 8
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setNeedTrackFace(Z)V

    .line 9
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderModeEdit(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;Z)V

    return-void
.end method

.method private getFuColorForIndex(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getFuColorsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object p1

    return-object p1
.end method

.method private getFuItemForIndex(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getFuItemsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;II)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object p1

    return-object p1
.end method

.method private getavatarItemType()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    const-string v1, "cartoon"

    const-string v2, "custom"

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v3, v0, v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v0, v0, v3

    goto :goto_1

    :cond_1
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v0, v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, " "

    .line 6
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "human"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "person"

    goto :goto_2

    :cond_4
    const-string v0, ""

    :cond_5
    move-object v1, v2

    .line 8
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 9
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initConfigList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    .line 3
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->setOnSelectListener(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter$OnSelectListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeSelectView:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->setLastSelectPosition(I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->updateListData()I

    const/16 v0, 0xc9

    .line 7
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->updateTitleState(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->updateTitleState(I)V

    :goto_0
    return-void
.end method

.method private initMimojiEdit(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0a0350

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlMainLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0368

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlNavigationlayout:Landroid/widget/RelativeLayout;

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

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0416

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0437

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0413

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a009e

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a027a

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    const v0, 0x7f0a027b

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mPreviewRender:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$PreviewRender;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$PreviewRender;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$PreviewRender;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$1;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mPreviewRender:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$PreviewRender;

    .line 19
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xed

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    .line 21
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0O;

    invoke-direct {v3, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0O;-><init>(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mPreviewRender:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$PreviewRender;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    const v0, 0x7f0a0193

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditBottomList:Landroid/widget/FrameLayout;

    const v0, 0x7f0a02e9

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    .line 26
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 28
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 29
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0600dd

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/view/View;

    .line 30
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    aput-object v5, v4, v2

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/android/camera/animation/FolmeUtils;->touchButtonTint(I[Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d00e0

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a043c

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeView:Landroid/widget/TextView;

    :cond_1
    const v0, 0x7f0a0286

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeSelectView:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    .line 35
    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->setInitScroll(Z)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeSelectView:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 37
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    .line 38
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->initView(Landroid/content/Context;Landroid/view/View;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method private isNeedWait()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->queueIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->pos:I

    if-lez v0, :cond_0

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

.method private renderIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 10

    .line 6
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpAvatarThumbnail(JI)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isRenderIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->refreshIconTime:J

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getColorType(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object v0

    :goto_0
    move-object v9, v0

    .line 10
    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getColorType(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object v7

    .line 11
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getFuItemsForUISize(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->size:I

    .line 12
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->rendIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRendIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;)V

    .line 13
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v4

    iget-object v8, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->rendIconStart(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V

    .line 14
    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    return-void
.end method

.method private renderIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedWait()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->tempRow:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedRenderIcon:Z

    .line 4
    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->tempItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->renderIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    return-void
.end method

.method private renderIconWithAvatar()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getRefreshRow()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->renderIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    return-void
.end method

.method private resetData()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isConfigLoading:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuColor:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->resetFuAvatar(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    if-ltz v1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->refreshAllWithoutThumbnail()V

    :cond_0
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->dissmissDialog()V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const v2, 0x7f120505

    goto :goto_0

    :cond_2
    const v2, 0x7f120506

    goto :goto_0

    :cond_3
    const v2, 0x7f120508

    :goto_0
    if-ne v2, v1, :cond_4

    return-void

    .line 3
    :cond_4
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1204ec

    new-instance v3, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$3;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$3;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)V

    .line 6
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1204d4

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$2;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    .line 7
    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showProgressDialog()V
    .locals 0

    return-void
.end method

.method private updateListData()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->TAB_TYPE:[[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->TAB_TYPE:[[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 4
    aget-object v2, v2, v1

    .line 5
    new-instance v3, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-direct {v3, v2}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;-><init>([Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;)V

    .line 6
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentConfigPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->setPath(Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getNameResource()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setText(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 9
    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setCurLength(F)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    .line 11
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v2

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v2

    .line 12
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setCurTotalLength(F)V

    .line 13
    invoke-virtual {v3, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setAlpha(I)V

    .line 14
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->addData(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public EachRendIcon()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->generateAvatarIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->renderIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Z

    move-result v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->currentItemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getItemsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->createIconItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Ljava/util/List;)Z

    move-result v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 6
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EachRendIcon fuAvatar isCommitSuccess false . generateAvatarIcon :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->generateAvatarIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->takePhotoCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->setPicIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V

    :cond_3
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;I)V
    .locals 3

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectListener position  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->updateLayoutPosition()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->onTypeConfigSelect(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;IZ)V

    return-void
.end method

.method public synthetic OooO00o(ZZ)V
    .locals 12

    const-string v0, "human.json"

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    move v4, v3

    .line 8
    :goto_0
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 9
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;

    .line 10
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->release()I

    .line 11
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 13
    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :goto_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditBottomList:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1, v4}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->setDataList(Ljava/util/ArrayList;)V

    .line 18
    iput-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    .line 19
    :cond_3
    iput-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 20
    iput-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->releaseRender()V

    .line 23
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->dissmissDialog()V

    .line 24
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    const/16 v1, 0xcb

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_8

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getInfos()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "info.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 29
    :cond_4
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->gson:Lcom/google/gson/Gson;

    const-class v8, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;

    .line 30
    invoke-static {p1, v6}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->putMimojiConfigValue(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;)Ljava/util/Map;

    .line 31
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->getavatarItemType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "attr_mimoji_type"

    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v6

    .line 33
    new-instance v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {v7}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 34
    iput-object v6, v7, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    .line 35
    iget v8, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    const-string v9, "key_mimoji_edit_save"

    const-string v10, "attr_mimoji_edit_count"

    if-ne v8, v1, :cond_7

    const-string v6, " from create"

    .line 36
    invoke-interface {p1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v9, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "MIMOJI_CREATE"

    .line 38
    invoke-static {p1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    iput-object p1, v7, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 41
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/android/camera/module/impl/component/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 45
    iget-object v9, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v9, v10, v0, v0}, Lcom/android/camera/module/impl/component/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-wide/16 v9, 0x0

    .line 46
    invoke-static {v9, v10}, Lcom/android/camera/CameraSettings;->setMimojiDownloadTime(J)V

    .line 47
    :cond_5
    invoke-static {v8}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    .line 49
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 50
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "id"

    .line 51
    iget-object v11, v7, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v10, "placeholder"

    .line 52
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "downloadState"

    .line 53
    invoke-virtual {v9, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_3
    if-lt v2, v4, :cond_6

    add-int/lit8 v10, v2, 0x1

    .line 55
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 56
    :cond_6
    invoke-virtual {v0, v4, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 59
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 60
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceList;->setDeparted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 62
    :catch_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string v0, "mimojifu  copy create fail"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string v0, "from edit"

    .line 63
    invoke-interface {p1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v9, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    :goto_4
    iput-object v6, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "originPhoto.jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->coverPath:Ljava/lang/String;

    const/4 p1, 0x7

    .line 67
    invoke-virtual {v7, p1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    .line 68
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 69
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xed

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz p1, :cond_b

    if-eqz p2, :cond_9

    .line 71
    invoke-interface {p1}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->releaseRender()V

    .line 72
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p2

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2, v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    .line 73
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    goto :goto_6

    .line 74
    :cond_9
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    if-ne v1, p2, :cond_a

    goto :goto_5

    :cond_a
    move v4, v5

    .line 75
    :goto_5
    invoke-interface {p1, v4, v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onModeStateBack(IZ)V

    .line 76
    :cond_b
    :goto_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xaf

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_c

    .line 77
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    .line 78
    :cond_c
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_d

    const/16 p2, 0x8

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    :cond_d
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-static {p1, v3}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setOnlyViewVisible(Landroid/view/View;Z)Z

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string v1, " onAvatarBindEnd "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedResetEdit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedResetEdit:Z

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->resetEditData()V

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->refreshEditData()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getItemType()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->renderIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isConfigLoading:Z

    .line 8
    :goto_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setOnlyViewVisible(Landroid/view/View;Z)Z

    :cond_1
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setOnlyViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setOnlyViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public synthetic OooO0o()V
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

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->getFragmentInto()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    const/16 v2, 0x13

    new-array v3, v1, [I

    .line 3
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->getavatarItemType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mimoji_sticker_pack"

    const-string v3, "edit"

    invoke-static {v0, v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xfa

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->setIsDirectEmoticon(Z)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 10
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->createEmoticon()V

    const/4 v0, 0x5

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->updateTitleState(I)V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuControllerRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->enterEditRenderMode()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->copyFuAvatar()Z

    .line 6
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setNeedTrackFace(Z)V

    .line 7
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string v2, " cover gone "

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsSetupCompleted:Z

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onSelectedPositionChanged(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->onTypeConfigSelect(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public backToHome()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedWait()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isBackToHome:Z

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    const/16 v2, 0xcb

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 4
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->goBack(ZZ)V

    return-void
.end method

.method public createEmoticonPicture(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public createEmoticonThumbnail()V
    .locals 0

    return-void
.end method

.method public createEmoticonVideo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mPopSaveDeletePath:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentConfigPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsSetupCompleted:Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->enterEditRenderMode()V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb7

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;->forceSwitchFront()Z

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xed

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 10
    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 12
    fill-array-data v1, :array_0

    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->startMimojiEdit(I)V

    return-void

    nop

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

    const v0, 0x7f0d0098

    return v0
.end method

.method public getTextureViewMarginTopHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mTextureViewMarginTopHeight:I

    return v0
.end method

.method public goBack(ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eee1  goBack   (boolean backToCreate, boolean isSave) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eee2  goBack   (boolean backToCreate, boolean isSave) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0o;

    invoke-direct {v1, p0, p2, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo0o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isClickEnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isSetupCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isConfigLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetupCompleted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsSetupCompleted:Z

    return v0
.end method

.method public onAvatarBindEnd()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOoo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOoo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    const/16 v2, 0xcb

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x4

    if-eq p1, v2, :cond_4

    .line 3
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-ne p1, v5, :cond_3

    .line 4
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showAlertDialog(I)V

    :cond_3
    return v0

    .line 5
    :cond_4
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showAlertDialog(I)V

    return v0

    :cond_5
    if-ne p1, v3, :cond_6

    .line 7
    invoke-direct {p0, v5}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showAlertDialog(I)V

    return v0

    .line 8
    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_7

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showAlertDialog(I)V

    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isClickEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: tv_save_finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->saveAvatar()V

    goto/16 :goto_0

    .line 6
    :sswitch_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 7
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: tv_create_emoticon"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->updateTitleState(I)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showEmoticon()V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xed

    .line 11
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    goto :goto_0

    .line 13
    :sswitch_2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: tv_back"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    const/16 v1, 0xc9

    if-ne p1, v1, :cond_1

    .line 15
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showAlertDialog(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xcb

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 16
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    if-ne p1, v1, :cond_2

    .line 17
    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showAlertDialog(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->updateTitleState(I)V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedWait()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string v0, "btn_reset: isNeedWait"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedResetEdit:Z

    return-void

    .line 23
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedResetEdit:Z

    .line 24
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string v0, "btn_reset: notNeedWait"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->resetEditData()V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->resetData()V

    const-string p1, "edit_reset"

    const-string v0, "edit"

    .line 27
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :sswitch_3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: btn_confirm"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->updateTitleState(I)V

    const-string/jumbo p1, "preview_mid_save"

    const-string/jumbo v0, "preview_mid"

    .line 30
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    nop

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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDeviceRotationChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->onDeviceRotationChange(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public onSurfaceViewPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceViewResume()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->pos:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsSetupCompleted:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTypeConfigSelect(I)V
    .locals 0

    return-void
.end method

.method public onTypeConfigSelect(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    if-ne v0, p2, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    .line 3
    sget-object p3, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTypeConfigSelect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mEditFaceBaseFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->setFromTag(I)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->onMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->setOnMimojiEditListClickListener(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;)V

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0a0193

    .line 16
    invoke-virtual {p3, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 18
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->setFromTag(I)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->initConfigType(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;)V

    .line 20
    :goto_0
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 21
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

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
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string p2, "mimoji edit timeout"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->goBack(ZZ)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentAlertDialog:Lmiuix/appcompat/app/AlertDialog;

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

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->getFragmentInto()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    :cond_1
    return-void
.end method

.method public quitAndSaveEdit(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->goBack(ZZ)V

    return-void
.end method

.method public quitCoverEmoticon()V
    .locals 0

    return-void
.end method

.method public reInitMimojiEditState(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->updateTitleState(I)V

    return-void
.end method

.method public refreshIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsSetupCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->renderIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Z)V

    :cond_0
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

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setTempFuAvatar(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V

    :cond_0
    return-void
.end method

.method public requestRender(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/TextureView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isCanRefresh()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsSetupCompleted:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mHandler:Landroid/os/Handler;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoO0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoO0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public resetClickEnable(Z)V
    .locals 0

    return-void
.end method

.method public resetConfig()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isChangeModeFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetConfig view NULL, UI need init "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public saveAvatar()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showProgressDialog()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->save()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "originPhoto.jpg"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->newAvatarIconPath:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->renderIconWithAvatar()V

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->generateAvatarIcon:Z

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

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->setPresenter(Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEdit;)V

    return-void
.end method

.method public showEmoticon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Landroid/app/Activity;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo00;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOo00;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startMimojiEdit(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->TAG:Ljava/lang/String;

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
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mIsSetupCompleted:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->generateAvatarIcon:Z

    .line 4
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mFromTag:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 6
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mLastMimojiFuColor:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    .line 7
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTypePosition:I

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xed

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setDisableSingleTapUp(Z)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->releaseRender()V

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiEditViewLayout:Landroid/view/View;

    .line 15
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->initMimojiEdit(Landroid/view/View;)V

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 18
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditBottomList:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 22
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 23
    :cond_2
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditBottomList:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xa0

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 26
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->getFragmentInto()I

    move-result v3

    invoke-virtual {v1, v3, p0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    const-string v1, ""

    .line 27
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->newAvatarIconPath:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 29
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlNavigationlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setOnlyViewVisible(Landroid/view/View;Z)Z

    .line 32
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setOnlyViewVisible(Landroid/view/View;Z)Z

    .line 33
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isChangeModeFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->resetConfig()V

    .line 35
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_5

    .line 36
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->initConfigList()V

    goto :goto_1

    .line 37
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showEmoticon()V

    :goto_1
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

    return-void
.end method

.method public updateTitleState(I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, -0x1

    const v2, 0x7f0703e0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq p1, v3, :cond_1

    const/4 v5, 0x6

    if-ne p1, v5, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mTextureViewMarginTopHeight:I

    .line 2
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v5, v2

    div-int/2addr v5, v0

    iput v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mTextureViewMarginTopHeight:I

    .line 9
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 11
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditCoverView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mMimojiFuEditGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-virtual {v5, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const v2, 0x7f120533

    const v5, 0x7f060368

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 15
    :pswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 16
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->getFragmentInto()I

    move-result v2

    invoke-virtual {v0, v2, p0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    goto :goto_2

    :pswitch_1
    const/4 p1, 0x7

    .line 17
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    goto/16 :goto_3

    .line 18
    :goto_2
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isNeedWait()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->pos:I

    .line 20
    :cond_2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->stopIconThread()V

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->setPicIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V

    .line 24
    :cond_3
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    .line 25
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCreateEmoticonTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mSaveFinishTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_3

    .line 32
    :pswitch_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 33
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_3

    :pswitch_4
    const/4 p1, 0x4

    .line 36
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    .line 37
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 39
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 44
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1204d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06036c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_3

    :pswitch_5
    const/4 p1, 0x3

    .line 48
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    .line 49
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 51
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    :cond_7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 57
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 58
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 59
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120532

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 61
    :pswitch_6
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mCurrentTopPannelState:I

    .line 62
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    .line 64
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    :cond_8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120530

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 69
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
