.class public Lcom/android/camera/features/mimojis/commen/state/CreateState;
.super Ljava/lang/Object;
.source "CreateState.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/state/IMiState;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Lcom/android/camera/ActivityBase;

.field public mIsNeedCapture:Z

.field public mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

.field public final mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public final mTextureId:[I

.field public mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/state/CreateState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mTextureId:[I

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getContext()Lcom/android/camera/ActivityBase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method private animateCapture()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    return-void
.end method

.method private processRotation(I)I
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

    goto :goto_0

    :cond_2
    const/16 v2, 0xe1

    if-le p1, v2, :cond_3

    if-gt p1, v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x87

    if-le p1, v0, :cond_4

    if-gt p1, v2, :cond_4

    const/16 p1, 0x10e

    goto :goto_0

    :cond_4
    if-le p1, v1, :cond_5

    if-gt p1, v0, :cond_5

    const/16 p1, 0xb4

    :cond_5
    :goto_0
    return p1
.end method

.method private readPreviewPixels(Landroid/graphics/Rect;)[B
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 3
    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int p1, v4, v5

    mul-int/lit8 p1, p1, 0x4

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object v8, p1

    .line 5
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/Rect;[BI)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3
    invoke-direct {p0, p3}, Lcom/android/camera/features/mimojis/commen/state/CreateState;->processRotation(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojias/utils/BitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->createAvatar(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    const v1, 0x7f1204f0

    const-wide/16 v2, -0x1

    .line 5
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isChangeFrontCreate()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->mimojiStart()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/state/CreateState;->prepareCreateMimoji()V

    return-void
.end method

.method public initModeState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa03

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/state/CreateState;->onCreateStatePrepare()V

    return-void
.end method

.method public onCreateStatePrepare()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreateStatePrepare: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/state/CreateState;->setDisableSingleTapUp(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO00o;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO00o;-><init>(Lcom/android/camera/features/mimojis/commen/state/CreateState;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZZ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/CreateState;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDrawFrame: mimojiControl is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 3
    :cond_0
    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mTextureId:[I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->drawPreview(Landroid/graphics/Rect;IIZ[IZ)Z

    move-result p2

    .line 4
    iget-boolean p3, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mIsNeedCapture:Z

    if-eqz p3, :cond_1

    .line 5
    iput-boolean v7, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mIsNeedCapture:Z

    .line 6
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result p3

    .line 7
    iput-boolean v7, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mIsNeedCapture:Z

    .line 8
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p4

    invoke-virtual {p4, v7}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/state/CreateState;->readPreviewPixels(Landroid/graphics/Rect;)[B

    move-result-object p4

    .line 10
    iget-object p5, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {p5}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p5

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0O0;

    invoke-direct {v0, p0, p1, p4, p3}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/commen/state/CreateState;Landroid/graphics/Rect;[BI)V

    invoke-interface {p5, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return p2
.end method

.method public onModeStateBack(IZ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setModeState(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa2

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa3

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->backToPreview(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    .line 8
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v0, v0}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    new-array p2, p2, [I

    const/16 v1, 0xa

    aput v1, p2, v0

    .line 10
    invoke-virtual {p1, p2}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->mimojiEnd()V

    :cond_1
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onFaceDetectResult(Landroid/media/Image;)I

    move-result p2

    .line 3
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz p3, :cond_1

    .line 4
    invoke-interface {p3, p2}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->mimojiFaceDetect(I)V

    .line 5
    :cond_1
    sget-boolean p2, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_CREATE:Z

    if-eqz p2, :cond_2

    const-string p2, "mimoji_create"

    .line 6
    invoke-static {p1, p2}, Lcom/xiaomi/camera/base/ImageUtil;->dumpImage(Landroid/media/Image;Ljava/lang/String;)Z

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    return-void

    .line 8
    :cond_3
    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/CreateState;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDrawFrame: mimojiControl is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFaceDetectSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpCreateAvatar(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    .line 7
    instance-of v2, p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v2, :cond_1

    .line 8
    check-cast p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 9
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    new-array v2, v0, [I

    const/16 v3, 0xd

    aput v3, v2, v1

    .line 10
    invoke-virtual {p1, v2}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    const/4 v1, 0x3

    .line 11
    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setCameraStatePublic(I)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa2

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 13
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mIsNeedCapture:Z

    .line 15
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/state/CreateState;->animateCapture()V

    return-void

    .line 16
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/CreateState;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shutter action reject: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareCreateMimoji()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v1, v1}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPrepare()V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa3

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->disableDrag()V

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x1

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 12
    fill-array-data v3, :array_0

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    const/16 v2, 0x8

    const-string v3, "1"

    .line 13
    invoke-interface {v0, v2, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xaf

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    .line 16
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTips(Z)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0xc5
        0xc1
        0xa2
    .end array-data
.end method

.method public setDisableSingleTapUp(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/CreateState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setDisableSingleTapUp(Z)V

    :cond_1
    :goto_0
    return-void
.end method
