.class public Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;
.super Ljava/lang/Object;
.source "MiStateChangeImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;


# static fields
.field public static final DEFAULT_FACE_RESULT:I = 0x64

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

.field public isFrontCamera:Z

.field public final mActivity:Lcom/android/camera/ActivityBase;

.field public final mCreateState:Lcom/android/camera/features/mimojis/commen/state/CreateState;

.field public mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

.field public mCurModeState:I

.field public mDrawSize:Landroid/util/Size;

.field public final mEditState:Lcom/android/camera/features/mimojis/commen/state/EditState;

.field public final mEmoticonState:Lcom/android/camera/features/mimojis/commen/state/EmoticonState;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mIsFaceDetectSuccess:Z

.field public mIsFrameAvailable:Z

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public final mPhotoState:Lcom/android/camera/features/mimojis/commen/state/PhotoState;

.field public mPreviewSize:Lcom/android/camera/CameraSize;

.field public final mVideoState:Lcom/android/camera/features/mimojis/commen/state/VideoState;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurModeState:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 4
    new-instance p1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/commen/state/PhotoState;-><init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mPhotoState:Lcom/android/camera/features/mimojis/commen/state/PhotoState;

    .line 5
    new-instance p1, Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;-><init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mVideoState:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    .line 6
    new-instance p1, Lcom/android/camera/features/mimojis/commen/state/CreateState;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/commen/state/CreateState;-><init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCreateState:Lcom/android/camera/features/mimojis/commen/state/CreateState;

    .line 7
    new-instance p1, Lcom/android/camera/features/mimojis/commen/state/EditState;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/commen/state/EditState;-><init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mEditState:Lcom/android/camera/features/mimojis/commen/state/EditState;

    .line 8
    new-instance p1, Lcom/android/camera/features/mimojis/commen/state/EmoticonState;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/commen/state/EmoticonState;-><init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mEmoticonState:Lcom/android/camera/features/mimojis/commen/state/EmoticonState;

    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setModeState(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mPhotoState:Lcom/android/camera/features/mimojis/commen/state/PhotoState;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    :cond_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method


# virtual methods
.method public backToPreview(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xf6

    .line 3
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2, v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 7
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    const/16 v3, 0x8

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 8
    invoke-interface {v0, v3, v6, v4, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    const/4 v3, -0x1

    .line 9
    invoke-interface {v0, v6, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    .line 10
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiVideo()Z

    move-result v3

    const/16 v4, 0xc1

    if-eqz v3, :cond_1

    .line 11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo000()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v1, [I

    aput v4, v3, v6

    .line 13
    invoke-interface {v0, v6, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 14
    fill-array-data v3, :array_0

    invoke-interface {v0, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 15
    fill-array-data v3, :array_1

    invoke-interface {v0, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    .line 16
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    new-array v1, v1, [I

    aput v4, v1, v6

    .line 17
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 19
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v1

    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 20
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    goto :goto_1

    .line 21
    :cond_2
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    .line 22
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setDisableSingleTapUp(Z)V

    return-void

    :array_0
    .array-data 4
        0xc5
        0xa2
    .end array-data

    :array_1
    .array-data 4
        0xc5
        0xc1
        0xa2
    .end array-data
.end method

.method public getContext()Lcom/android/camera/ActivityBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method public getDrawSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mDrawSize:Landroid/util/Size;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getFboUtils()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    return-object v0
.end method

.method public getGlcontext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mPreviewSize:Lcom/android/camera/CameraSize;

    return-object v0
.end method

.method public initPreview(ZLcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera:Z

    .line 2
    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class p2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 6
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    .line 7
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mDrawSize:Landroid/util/Size;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mDrawSize:Landroid/util/Size;

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isChangeFrontCreate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setChangeFrontCreate(Z)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/commen/state/IMiState;->initModeState()V

    return-void
.end method

.method public isFaceDetectSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mIsFaceDetectSuccess:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera:Z

    return v0
.end method

.method public isNeedCopyPreviewFromExternal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isProcessorReady()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OoO0o()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpFps()D

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDrawFrame: renderRect is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    iget-boolean v5, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mIsFrameAvailable:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/features/mimojis/commen/state/IMiState;->onDrawFrame(Landroid/graphics/Rect;IIZZ)Z

    move-result p1

    return p1
.end method

.method public onModeStateBack(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/features/mimojis/commen/state/IMiState;->onModeStateBack(IZ)V

    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/state/IMiState;->onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onShutterButtonClick(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/commen/state/IMiState;->onShutterButtonClick(I)V

    return-void
.end method

.method public onSurfaceViewPause()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->unInitEngine()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    :cond_1
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xed

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public releaseRender()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->releaseRender()V

    :cond_0
    return-void
.end method

.method public setActionState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiActionState(I)V

    return-void
.end method

.method public setDetectSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mIsFaceDetectSuccess:Z

    return-void
.end method

.method public setDisableSingleTapUp(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setDisableSingleTapUp(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsFrameAvailable(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result p1

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mIsFrameAvailable:Z

    return-void
.end method

.method public setModeState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurModeState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurModeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " setModeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mEmoticonState:Lcom/android/camera/features/mimojis/commen/state/EmoticonState;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mEditState:Lcom/android/camera/features/mimojis/commen/state/EditState;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCreateState:Lcom/android/camera/features/mimojis/commen/state/CreateState;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mVideoState:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    goto :goto_0

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mPhotoState:Lcom/android/camera/features/mimojis/commen/state/PhotoState;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    .line 8
    :goto_0
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurModeState:I

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiModeState(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->mCurIMiState:Lcom/android/camera/features/mimojis/commen/state/IMiState;

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/commen/state/IMiState;->initModeState()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xed

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
