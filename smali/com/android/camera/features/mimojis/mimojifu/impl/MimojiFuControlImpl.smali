.class public Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;
.super Ljava/lang/Object;
.source "MimojiFuControlImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;


# static fields
.field public static final DEFAULT_FACE_DETECTED_RESULT:I = -0x1

.field public static final FLAG_HAS_FACE:I = 0xa

.field public static final TAG:Ljava/lang/String;

.field public static final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field public static final mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final sTransRotate:[F


# instance fields
.field public NVFormat:I

.field public final cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public currentPos:I

.field public final currentScenePath:[Ljava/lang/String;

.field public final defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public drawTransformAttribute:Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

.field public final dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public flipX:I

.field public flipY:I

.field public gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

.field public gson:Lcom/google/gson/Gson;

.field public ignoreCount:I

.field public isConvertEmoticon:Z

.field public isExitBackstage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isShaderCacheSuccess:Z

.field public isloadEmoticon:Z

.field public final mActivityBase:Lcom/android/camera/ActivityBase;

.field public volatile mCameraNV21Byte:[B

.field public final mContext:Landroid/content/Context;

.field public final mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mFaceCheckResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mIsAr:Z

.field public mIsCreate:Z

.field public mIsFrameAvailable:Z

.field public mIsFrontCamera:Z

.field public mIsGifOn:Z

.field public final mIsMimojiFuCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

.field public final mLoadHandler:Landroid/os/Handler;

.field public mLoadThread:Landroid/os/HandlerThread;

.field public final mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

.field public mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

.field public mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

.field public mMimojiFuPrepareRenderThread:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

.field public final mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mMimojiStateChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

.field public mOnFuPrepareListener:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mRealSelectedEmoInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRecordingStartTime:J

.field public final mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public mRotationFu:I

.field public mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

.field public final mUiHandler:Landroid/os/Handler;

.field public mtx:[F

.field public mvp:[F

.field public onCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

.field public onRecordListener:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

.field public rotateMode:I

.field public final trans:[F

.field public uiStyle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->sTransRotate:[F

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 3
    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    .line 4
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiFuCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LoadConfig"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    .line 9
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v2}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 10
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-direct {v2}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    .line 11
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    .line 13
    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 14
    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 15
    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 16
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isExitBackstage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->NVFormat:I

    new-array v0, v1, [F

    .line 18
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mtx:[F

    new-array v0, v1, [F

    .line 19
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gson:Lcom/google/gson/Gson;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mFaceCheckResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onRecordListener:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    .line 23
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    .line 24
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    .line 25
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    .line 26
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa03

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 31
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    .line 34
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;[BLio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 67
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->create(Ljava/lang/String;[BLcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BasePTAResDB;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CREATE ERROR"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic OooO00o(ZLcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;)V
    .locals 3

    .line 54
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimojifu showLoadProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-interface {p1, p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->firstProgressShow(Z)V

    return-void
.end method

.method public static synthetic OooO0oo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isConvertEmoticon:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isConvertEmoticon:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsAr:Z

    return p0
.end method

.method public static synthetic access$1202(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsAr:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreate:Z

    return p0
.end method

.method public static synthetic access$1502(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreate:Z

    return p1
.end method

.method public static synthetic access$1600(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->resetCreateState()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onProfileFinish()V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isloadEmoticon:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isloadEmoticon:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/ui/RenderEngineAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-object p0
.end method

.method public static synthetic access$600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private avatarProcess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->requestRender(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    :goto_0
    return-void
.end method

.method private convertYUVData(Landroid/media/Image;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->getNV21(Landroid/media/Image;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    .line 5
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "previewImage data null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private copyTexture(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;II)I
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v10, p4

    move/from16 v11, p5

    .line 1
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawTransformAttribute:Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    invoke-direct {v2}, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;-><init>()V

    iput-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawTransformAttribute:Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v2, v10, v11}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 4
    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v6

    const/4 v3, -0x1

    .line 6
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v5, 0x1

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isProcessorReady()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    array-length v4, v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    if-ltz v3, :cond_2

    .line 9
    iget-boolean v3, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->rotateCameraImage(Z)V

    .line 10
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v5, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    iget v7, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v8, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget v9, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->NVFormat:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    move-result v3

    :cond_2
    move v12, v3

    if-lez v12, :cond_3

    .line 11
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, v12

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->init(IIIIIZI)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    .line 12
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 13
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareTransformRenders()V

    .line 14
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawTransformAttribute:Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v8, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->sTransRotate:[F

    sget-object v9, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v13, 0x0

    move v10, v13

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->init(IIIII[F[FZ)Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 16
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :goto_0
    return v12
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private dealCaptureIconData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->queueIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private drawEditFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I
    .locals 14

    move-object v0, p0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v5

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 5
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 6
    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0703d0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v6, 0xf7

    .line 9
    invoke-virtual {v4, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v4, :cond_1

    .line 10
    invoke-interface {v4}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->getTextureViewMarginTopHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 11
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->getTextureViewMarginTopHeight()I

    move-result v1

    add-int/2addr v3, v1

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 13
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {v4}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->getTextureViewMarginTopHeight()I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    move v9, v2

    add-int/2addr v3, v9

    const/4 v2, 0x0

    .line 14
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v2, v4, v1, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3da88ce7    # 0.0823f

    .line 15
    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    .line 16
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 17
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 18
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 19
    iget-boolean v2, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->rotateCameraImage(Z)V

    .line 20
    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    iget v6, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v7, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    move-result v2

    .line 21
    iget-object v6, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v7, v2

    move v8, v1

    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->init(IIIIIZI)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    .line 22
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    .line 23
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p2

    .line 24
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->avatarProcess()V

    .line 25
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dealCaptureIconData()V

    .line 26
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 27
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    return v2

    :cond_3
    :goto_1
    const/4 v1, -0x1

    return v1
.end method

.method private drawPreviewFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I
    .locals 12

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v3

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->rotateCameraImage(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->NVFormat:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    move-result p1

    if-lez p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->init(IIIIIZI)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    .line 12
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-interface {p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_1
    return p1
.end method

.method private initGifResource()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " init gif resource begin"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_PRE_RES_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " init gif null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    const-string v1, "gifmodel.zip"

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_PRE_RES_PATH:Ljava/lang/String;

    const v3, 0x8000

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "MIMOJIFU GIF UNZIP ERROR"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " init gif resource end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onFuSdkInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setFuSdkLoadFinish(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0oo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->showLoadProgress(Z)V

    return-void
.end method

.method private onProfileFinish()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onProfileFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xf7

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->mimojiEnd()V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStateChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    .line 12
    invoke-interface {v0, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_4

    const/16 v2, 0xcb

    .line 14
    invoke-interface {v0, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->startMimojiEdit(I)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStateChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v0, :cond_5

    .line 16
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setActionState(I)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    :cond_6
    const-string v0, "mimoji_click_create_capture"

    const-string v1, "create"

    .line 20
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetCreateState()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreate:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->lightingStart()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiActionState(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOo;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showLoadProgress(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf8

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO;

    invoke-direct {v2, p1, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO;-><init>(ZLcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startConvertGif()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    const-wide/high16 v1, 0x4039000000000000L    # 25.0

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onRecordListener:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->startRecording(DLcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->getGifFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setGifFileName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unzipResource()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    const-string v1, "model.zip"

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    const v3, 0x8000

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unzipResource model error: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0o0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->SHADER_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " check shader null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " check shader exist"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiFuCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiFuCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setFuSdkLoadFinish(Z)V

    .line 8
    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->showLoadProgress(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->initMimojiResource()V

    .line 10
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oOoO()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->simpleVerificationModel()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    if-eqz v3, :cond_6

    .line 13
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_6

    .line 14
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "update version: "

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->clearAvatar()V

    .line 17
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v3, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setFuSdkLoadFinish(Z)V

    .line 18
    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->showLoadProgress(Z)V

    const-wide/16 v3, 0x0

    .line 19
    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->setMimojiDownloadTime(J)V

    .line 20
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->setDeparted()V

    .line 22
    :cond_4
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 24
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->unzipResource()V

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xf8

    .line 26
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz v3, :cond_5

    .line 27
    invoke-interface {v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->setDataResetCompleted()V

    .line 28
    :cond_5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 31
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    .line 32
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isNeedEnterFron()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onSurfaceViewResume()V

    goto :goto_3

    .line 34
    :cond_7
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    .line 35
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    const-string v3, "camera/ar_cam/ar_cam.bundle"

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    const-string v3, "default_bg.bundle"

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    const-string v3, "camera/xiaomi_bg_cam.bundle"

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    invoke-virtual {v0, v3, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->onCameraChange(ZI)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setListener(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getIsInitItemFinish()Z

    move-result p1

    const/16 v0, 0xa

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isFuIsGLPrepared()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    .line 41
    :cond_9
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isShaderCacheSuccess:Z

    goto :goto_5

    .line 42
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuPrepareRenderThread:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    if-nez p1, :cond_b

    .line 43
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mOnFuPrepareListener:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;

    const-string v4, "mimojifu"

    invoke-direct {p1, v4, v0, v0, v3}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;-><init>(Ljava/lang/String;IILcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuPrepareRenderThread:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    .line 44
    :cond_b
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuPrepareRenderThread:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->isCacheBuilding()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_c

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuPrepareRenderThread:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 46
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuPrepareRenderThread:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->waitUntilReady()V

    .line 47
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuPrepareRenderThread:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1, v3}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->initAvatar(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 48
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " cache fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isShaderCacheSuccess:Z

    .line 50
    :cond_c
    :goto_5
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->reloadConfig()V

    .line 53
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->ignoreCount:I

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/gallery3d/ui/ExtTexture;)V
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->NVFormat:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    .line 81
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mFaceCheckResult:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    .line 83
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFaceNum()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getRotationData()[F

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    .line 84
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFaceOcclusion()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getLandmarksData()[F

    move-result-object v5

    .line 85
    invoke-static/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FaceCheckUtil;->checkFace(III[FI[F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " fd fu result :  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mFaceCheckResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "faceDetected"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v0, "create avatar onSuccess: "

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isExitBackstage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string p2, "createSuccess isExitBackstage"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->resetCreateState()V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreate:Z

    .line 75
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderModeEdit(I)V

    .line 76
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->insertAvatar(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpCreateAvatar(I)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create avatar error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->resetCreateState()V

    return-void
.end method

.method public synthetic OooO00o(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->clearAvatar()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->destroyEmotionItem()V

    .line 58
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onAvatarBindEnd()V

    :cond_0
    if-nez p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStateChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    :cond_1
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->takeBuffer()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setNeedTakePic(Z)V

    .line 14
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x12c

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 15
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;->takePhotoCallBack(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic OooO0O0(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release start"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "avatar release X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isFuIsGLPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->clearAvatar()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->exitBackstage()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->onSurfaceDestroy()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 10
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "release end"

    invoke-static {p1, v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isShaderCacheSuccess:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuPrepareRenderThread:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    return-void
.end method

.method public synthetic OooO0OO(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " unInitEngine: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unInitEngine start"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isFuIsGLPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->exitBackstage()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isExitBackstage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unInitEngine end"

    invoke-static {p1, v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->updateEmotion()V

    return-void
.end method

.method public synthetic OooO0o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->updateConfig()V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isAvatarInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setIsAvatarInited(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->clearAvatar()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic OooO0oO()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isConvertEmoticon:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->startRecordGif(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;)V

    :cond_0
    return-void
.end method

.method public clearAvatar()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "ee clearAvatar view"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "x1 clearAvatar view"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    .line 9
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOOO;

    invoke-direct {v1, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOOO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const-wide/16 v1, 0x1

    .line 10
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void

    .line 12
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "xx clearAvatar view"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createAvatar(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CREATE_MODLE_CACHE_DIR:Ljava/lang/String;

    .line 3
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0O;

    invoke-direct {v1, v0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0O;-><init>(Ljava/lang/String;[B)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    invoke-direct {v1, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO00o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/lang/String;)V

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOOo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOOo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    .line 6
    invoke-virtual {p1, v1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public createEmoticon()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderModeEdit(IZ)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setListener(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setDefultFuScene()V

    .line 5
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    const-string v1, "camera/xiaomi_cam_bq1.6.bundle"

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getAnimations()Ljava/util/List;

    move-result-object v2

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOoo;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOoo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->CreateEmotionItem(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isloadEmoticon:Z

    return-void
.end method

.method public drawPreview(Landroid/graphics/Rect;IIZ[IZ)Z
    .locals 7

    .line 1
    iput-boolean p6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrameAvailable:Z

    .line 2
    iget-object p6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {p6}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    .line 3
    iget-object p6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p6}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareMimojiRenders()V

    const/4 p6, 0x1

    const/4 v6, 0x0

    if-eqz p4, :cond_1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->copyTexture(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;II)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p6, v6

    :goto_0
    return p6

    .line 6
    :cond_1
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "onDrawFrame start"

    invoke-static {p2, p3}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p2

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-static {v6, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p2}, Lcom/android/camera/ui/RenderEngineAdapter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    const/4 p3, -0x1

    if-nez p2, :cond_2

    .line 9
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string p2, "drawPreview:screen.getSurfaceTexture() is null  "

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    aput p3, p5, v6

    return v6

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p2}, Lcom/android/camera/ui/RenderEngineAdapter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {p2, p4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    .line 12
    invoke-static {p4, p4, p4, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 13
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 14
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isNeedShowAvatar()Z

    move-result p2

    .line 16
    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz p4, :cond_3

    .line 17
    invoke-virtual {p4}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getIsInitItemFinish()Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiReseting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 19
    invoke-virtual {p4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result p4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isShaderCacheSuccess:Z

    if-eqz p4, :cond_3

    .line 20
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onFuSdkInit()V

    .line 21
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p4

    .line 22
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 23
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    move p2, v6

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 25
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_8

    .line 26
    invoke-direct {p0, v1, v2, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawPreviewFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I

    move-result p3

    if-lez p3, :cond_7

    goto :goto_2

    .line 27
    :cond_6
    :goto_1
    invoke-direct {p0, v1, v2, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->drawEditFu(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)I

    move-result p3

    if-lez p3, :cond_7

    goto :goto_2

    :cond_7
    move p6, v6

    :goto_2
    move p2, p6

    :cond_8
    if-nez p2, :cond_9

    .line 28
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 29
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz p4, :cond_9

    .line 30
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->trans:[F

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, p4, p6, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 31
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 32
    :cond_9
    aput p3, p5, v6

    .line 33
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "onDrawFrame end"

    invoke-static {p1, p3}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public generateGif(IF)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p2, v0, v1, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->sendRecordingData(I[F)V

    return-void
.end method

.method public generateGifEnd()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateGif currentNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->stopRecording()V

    .line 4
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isConvertEmoticon:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->startConvertGif()V

    :cond_0
    return-void
.end method

.method public getFaceResult()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0o;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Lcom/android/gallery3d/ui/ExtTexture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getMimojiPara()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const-string v4, "attr_mimoji_category"

    const-string v5, "null"

    if-eqz v0, :cond_7

    .line 3
    iget-object v6, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v6, v6, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v6, :cond_7

    .line 4
    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getInfos()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v7, v7, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "info.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    :cond_0
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gson:Lcom/google/gson/Gson;

    const-class v8, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;

    .line 8
    invoke-static {v2, v7}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->putMimojiConfigValue(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;)Ljava/util/Map;

    .line 9
    sget-object v8, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " avatarinfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    array-length v6, v0

    if-gt v6, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v6, v0

    sub-int/2addr v6, v1

    aget-object v6, v0, v6

    .line 12
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    array-length v6, v0

    sub-int/2addr v6, v1

    aget-object v0, v0, v6

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, " "

    :goto_1
    const-string v1, "cartoon"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "human"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "person"

    if-eqz v7, :cond_6

    .line 15
    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;->isEidted()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_edited"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-string v1, "custom"

    .line 17
    :cond_6
    :goto_2
    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "attr_mimoji_cartoon"

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 19
    :cond_7
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    const-string v1, ""

    if-nez v0, :cond_8

    move-object v0, v5

    goto :goto_4

    .line 21
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v4, "attr_mimoji_change_timbre"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    if-nez v0, :cond_9

    goto :goto_5

    .line 23
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBgId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    const-string v0, "attr_mimoji_change_background"

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public getOperatingMode()I
    .locals 1

    const v0, 0x800b

    return v0
.end method

.method public initEngine(IIIIZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAvatarEngine with parameters : displayOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isFrontCamera = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    .line 3
    iput p4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    .line 4
    iput-boolean p5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->uiStyle:I

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p3, 0xed

    .line 7
    invoke-virtual {p1, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiStateChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isShaderCacheSuccess:Z

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->initGifResource()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mOnFuPrepareListener:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;

    if-nez p1, :cond_0

    .line 12
    new-instance p1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0oO;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0oO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mOnFuPrepareListener:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mLoadHandler:Landroid/os/Handler;

    new-instance p3, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0Oo;

    invoke-direct {p3, p0, p2}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initMimojiResource()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "initMimojiResource: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/faceunity/fuauth_helper/FUAuth;->getExAuth()[B

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/faceunity/fuauth_helper/FUAuth;->fuAuth()[B

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->init(Landroid/content/Context;[B[B)Z

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->simpleVerificationMaterial()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    :try_start_0
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v3, "initialize offline sdk data: "

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->initializeOffine(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize offline error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/faceunity/pta_helper/FUAuthCheck;->fuP2ASetAuthInternalCheckEx([B[B)Z

    move-result v0

    .line 10
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "helper sdk Auth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    return-void
.end method

.method public isAvatarInited()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrameAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedDeleteSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedShowAvatar()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrameAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCameraNV21Byte:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuControllerRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object v0

    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNeedShowNoFaceTip()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->ignoreCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v2

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->ignoreCount:I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFaceNum()I

    move-result v0

    if-ge v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " fd fu preview result :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "faceDetected"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 7
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBgId()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    iget-object v0, v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v3, "close_state"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public isProcessorReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isShaderCacheSuccess:Z

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OoO0o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    .line 2
    :goto_0
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "avatarItemSelect  itemId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isFromBack "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "add_state"

    const-string v3, "close_state"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_c

    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x2

    if-nez p2, :cond_6

    .line 7
    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8
    array-length v3, v2

    if-gt v3, v5, :cond_2

    const-string v2, " "

    goto :goto_1

    :cond_2
    array-length v3, v2

    sub-int/2addr v3, v5

    aget-object v3, v2, v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, v2

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_3
    array-length v3, v2

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    :goto_1
    const-string v3, "cartoon"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "human"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "person"

    goto :goto_2

    :cond_5
    const-string v3, "custom"

    .line 12
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string p2, "avatarItemSelect repeat selection"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuControllerRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object v0

    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq v0, v2, :cond_8

    .line 18
    iput-boolean v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsAr:Z

    .line 19
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p2, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    .line 20
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v0, "RenderMode dif, set AR RenderMode"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 21
    :cond_8
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v2, "avatarItemSelect, just show"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsFrontCamera:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 24
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v5

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v4}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;ZZ)V

    .line 26
    :goto_3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 27
    :cond_a
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object p2

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq p2, v0, :cond_b

    .line 28
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object p1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;Z)V

    :cond_b
    return v5

    .line 29
    :cond_c
    :goto_4
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "avatarItemSelect ,mIsShowAvatarLoading "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 31
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object p2

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq p2, v1, :cond_d

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 32
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p2

    if-nez p2, :cond_d

    .line 33
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p2, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    .line 34
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " avatarItemSelect RenderMode dif, set AR RenderMode"

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz p1, :cond_10

    .line 35
    iget-object p2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_5

    .line 36
    :cond_e
    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz p1, :cond_f

    .line 37
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuControllerRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object p1

    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq p1, p2, :cond_f

    .line 38
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    aput-object v0, p1, v4

    :cond_f
    return v4

    .line 40
    :cond_10
    :goto_5
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string p2, " avatarItemSelect close_item, clearAvatar"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->clearAvatar()V

    return v5
.end method

.method public onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuScene()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change mimojiBgItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  , boolean force "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    aget-object v5, v4, v3

    if-eqz v5, :cond_2

    aget-object v5, v4, v2

    if-eqz v5, :cond_2

    if-nez p2, :cond_2

    aget-object v4, v4, v3

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 8
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2

    return-void

    .line 9
    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 11
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 12
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->dynamicCameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    :goto_0
    return-void

    .line 14
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {p1, v4, v5, v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->refreshFuScene()V

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->defaultItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundlePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    if-eqz p2, :cond_6

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    const-string p1, "mimoji_change_background"

    .line 19
    invoke-static {v1, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 20
    :cond_8
    :goto_3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onBgSelect: error "

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceRotationChange(I)V
    .locals 3

    const/16 v0, 0x13b

    if-le p1, v0, :cond_0

    const/16 v1, 0x168

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x2d

    if-ltz p1, :cond_2

    if-gt p1, v1, :cond_2

    :cond_1
    const/16 p1, 0x5a

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    goto :goto_0

    :cond_2
    const/16 v2, 0xe1

    if-le p1, v2, :cond_3

    if-gt p1, v0, :cond_3

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x87

    if-le p1, v0, :cond_4

    if-gt p1, v2, :cond_4

    const/16 p1, 0x10e

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    goto :goto_0

    :cond_4
    if-le p1, v1, :cond_5

    if-gt p1, v0, :cond_5

    const/16 p1, 0xb4

    .line 4
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    .line 5
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz p1, :cond_6

    .line 6
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRotMode(I)V

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_7

    .line 8
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRotationFu:I

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onDeviceRotationChange(I)V

    :cond_7
    return-void
.end method

.method public onEmoticonBack(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onMimojiEmoticonBack: mRenderEngine is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isConvertEmoticon:Z

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfa

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->coverEmoticonError()V

    .line 7
    :cond_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onMimojiEmoticonBack: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isConvertEmoticon:Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->gifUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->stopRecording()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOO0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onFaceDetectResult(Landroid/media/Image;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->convertYUVData(Landroid/media/Image;)V

    :cond_0
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->getFaceResult()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mFaceCheckResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isNeedShowNoFaceTip()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    :cond_3
    return v1
.end method

.method public onSurfaceViewResume()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " EE onSurfaceViewResume "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    const/16 v2, 0xb8

    if-ne v0, v2, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v2, " XX onSurfaceViewResume "

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->enterTheFrontDesk()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onSurfaceViewResume()V

    .line 8
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsShowAvatarLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isExitBackstage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isExitBackstage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public refeshMaterialConfig(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateConfig"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOo00;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOo00;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->initMaterialConfig()V

    :cond_1
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "avatar release E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const-wide/16 v1, 0x1

    .line 5
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release: error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public releaseRender()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v3, "add_state"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v2, "close_state"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsMimojiNeedUpdateSkip:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " releaseRender() "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentScenePath:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 9
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setTempFuAvatar(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V

    :cond_1
    return-void
.end method

.method public reloadConfig()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reloadConfig"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsCreate:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mtx:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mvp:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mIsGifOn:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuControllerRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    if-eq v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    :cond_3
    return-void
.end method

.method public rotateCameraImage(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 1
    :goto_0
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->rotateMode:I

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->flipX:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->flipY:I

    .line 4
    invoke-static {p1, v1, v0}, Lcom/faceunity/wrapper/faceunity;->fuSetInputCameraMatrix(III)V

    .line 5
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewHeight:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    div-double/2addr v0, v2

    double-to-int p1, v0

    sput p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    .line 6
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mPreviewWidth:I

    int-to-double v0, p1

    div-double/2addr v0, v2

    double-to-int p1, v0

    sput p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    .line 7
    sget p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    sget v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    invoke-static {p1, v0}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    return-void
.end method

.method public saveEmoticon(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveEmoticon mCountEmotGif: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRealSelectedEmoInfoList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->currentPos:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isConvertEmoticon:Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->startConvertGif()V

    return-void
.end method

.method public setPicIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setNeedTakePic(Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isTakePicIconIng()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setNeedTakePic(Z)V

    :cond_1
    return-void
.end method

.method public unInitEngine()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unInitEngine: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOo0;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooOOo0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x1

    .line 6
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onSurfaceViewPause()V

    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unInitEngine: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->release()V

    return-void
.end method
