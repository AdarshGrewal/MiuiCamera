.class public Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;
.super Ljava/lang/Object;
.source "MimojiAsControlImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;


# static fields
.field public static final DEFAULT_FACE_DETECTED_RESULT:I = -0x1

.field public static final FLAG_HAS_FACE:I = 0xa

.field public static final FLAG_INIT_FACE:I = 0x0

.field public static final GIF_SUBTITLE_ASSETS_PATH:Ljava/lang/String; = "gif_subtitle/3336a65c52528c9c368e942d3dd307f8-le64.cache-3"

.field public static final GIF_SUBTITLE_CACHE_FILE:Ljava/lang/String; = "3336a65c52528c9c368e942d3dd307f8-le64.cache-3"

.field public static final GIF_SUBTITLE_DIR:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public drawTransformAttribute:Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

.field public mActivityBase:Lcom/android/camera/ActivityBase;

.field public mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

.field public mAvatarConfigPath:Ljava/lang/String;

.field public final mAvatarLock:Ljava/lang/Object;

.field public mAvatarTemplatePath:Ljava/lang/String;

.field public mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

.field public final mCaptureHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

.field public mDeviceRotation:I

.field public mDrawSize:Landroid/util/Size;

.field public mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mIsFrontCamera:Z

.field public mIsGifOn:Z

.field public mIsNoFaceResult:I

.field public mLastNeedBeauty:Z

.field public mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

.field public final mLoadHandler:Landroid/os/Handler;

.field public mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

.field public final mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mNeedCapture:Z

.field public mOrientation:I

.field public mRealTimeFaceResult:Z

.field public mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

.field public final mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public mSceneTriggerCallback:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

.field public final mTextureId:[I

.field public final mUiHandler:Landroid/os/Handler;

.field public uiStyle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/voip-data/.fccache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->GIF_SUBTITLE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 7
    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTextureId:[I

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    .line 10
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    invoke-direct {v1}, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->drawTransformAttribute:Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    .line 11
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/device/Common;->o00OOooo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji2 init load so... supportGifVideoSegment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0oO0Ooo()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mimoji_tracking"

    .line 16
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0oO0Ooo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mimoji_bokeh_845_video"

    .line 18
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "vvc++_shared"

    .line 19
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ffmpeg"

    .line 20
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_soundsupport"

    .line 21
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_video2gif"

    .line 22
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_avatarengine"

    .line 23
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_jni"

    .line 24
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    :cond_1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    .line 26
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    .line 27
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa03

    .line 29
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    .line 30
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf7

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 32
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LoadConfig"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLoadHandler:Landroid/os/Handler;

    .line 35
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Capture"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureHandler:Landroid/os/Handler;

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    .line 39
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 40
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$1;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$1;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mSceneTriggerCallback:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setIsAvatarInited(Z)V

    .line 42
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v0, "MimojiAsControlImpl:  constructor"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;Z)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->firstProgressShow(Z)V

    .line 2
    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    return-void
.end method

.method public static synthetic OooO0Oo(I)V
    .locals 0

    return-void
.end method

.method private avatarProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v8, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-direct {v8}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/16 v5, 0x5a

    iget-boolean v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    iget v7, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/arcsoft/avatar2/AvatarEngine;->avatarProcessWithInfoEx(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)I

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {p1, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->requestRender(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {p1, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetClickEnable(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return v1

    .line 11
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetClickEnable(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {p1, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->requestRender(Z)V

    .line 14
    :cond_4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v0, "MimojiAsControlImpl onPreviewFrame need init, waiting......"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private destoryAll()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureHandler:Landroid/os/Handler;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0OO;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0OO;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initGifResource()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " init gif resource begin"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_PRE_RES_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v2, " init gif null"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v2, "gifmodel.zip"

    sget-object v3, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_PRE_RES_PATH:Ljava/lang/String;

    const v4, 0x8000

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 8
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "MIMOJIFU GIF UNZIP ERROR"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, " init gif resource end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initMimojiDataResource()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileDirectoryConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "MimojiAsControlImpl: initMimojiResource unzip..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    :try_start_0
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    .line 5
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v2, 0x8000

    .line 6
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v4, "data.zip"

    sget-object v5, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v4, "/vendor/camera/mimoji/data.zip"

    sget-object v5, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lcom/android/camera/Util;->verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    :goto_0
    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init model spend time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verify asset model zip failed..."

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    :goto_1
    return-void
.end method

.method private isMimojiMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMimojiModule()Z

    move-result v0

    return v0
.end method

.method private onProfileFinish()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->releaseRender()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->mimojiEnd()V

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xed

    .line 13
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v0, :cond_3

    const/4 v3, 0x4

    .line 14
    invoke-interface {v0, v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_4

    const/16 v3, 0xcb

    .line 16
    invoke-interface {v0, v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->startMimojiEdit(I)V

    .line 17
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v0, :cond_5

    .line 19
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setActionState(I)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    :cond_6
    const-string v0, "mimoji_click_create_capture"

    const-string v1, "create"

    .line 23
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o;

    invoke-direct {v2, v0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o;-><init>(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateBeauty()V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getIsNoFaceResult()Z

    move-result v0

    .line 13
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    if-eq v1, v0, :cond_1

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getIsNoFaceResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateBeauty(Z)V

    :cond_1
    return-void
.end method

.method private updateBeauty(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz p1, :cond_3

    const/16 p1, 0x28

    goto :goto_1

    :cond_3
    move p1, v1

    .line 4
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    const-string/jumbo p1, "pref_old_beautify_level_key_capture"

    .line 6
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 7
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    :goto_2
    move p1, v5

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "pref_beautify_skin_smooth_ratio_key"

    .line 9
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v2

    if-eq v2, p1, :cond_5

    .line 10
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_3
    if-eqz p1, :cond_6

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v5, [I

    const/16 v2, 0xd

    aput v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_6
    return-void
.end method

.method private updatePreviewProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->requestRender(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetClickEnable(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->checkIsNeedChangBg()V

    .line 6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v2, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    invoke-static {v2, v3, v4}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getOutlineOrientation(IIZ)I

    move-result v2

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v3

    .line 9
    invoke-virtual {v1, p1, v2, v3}, Lcom/arcsoft/avatar2/RecordModule;->startProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZ)Z

    move-result v1

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->changeIsNoFaceResult(Z)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateBeauty()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xed

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setDisableSingleTapUp(Z)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->onProfileFinish()V

    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 3

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 14
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

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->mimojiEnd()V

    .line 18
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 19
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xed

    .line 21
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v0, :cond_3

    .line 22
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setActionState(I)V

    const/4 v2, 0x1

    .line 23
    invoke-interface {v0, v2, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onModeStateBack(IZ)V

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    return-void
.end method

.method public synthetic OooO0O0(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avatar destroy | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->unInit()V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->release()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    .line 10
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic OooO0OO()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "avatar need really init"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-le v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MODEL_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x3

    invoke-static {v3, v4, v0}, Lcom/android/camera/module/impl/component/FileUtils;->formatFileSize(JI)D

    move-result-wide v3

    double-to-int v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oOoO()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    .line 7
    invoke-static {v4}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileDirectoryConsist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->showLoadProgress(Z)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ge v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->initMimojiResource()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->reloadConfig()V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->onMimojiInitFinish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic OooO0OO(I)V
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v1, :cond_0

    .line 17
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseRender | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarEngine;->releaseRender()V

    .line 19
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic OooO0Oo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unInitEngine releaseRender | "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->releaseRender()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->releaseRecordGLInfo()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->destoryAll()V

    return-void
.end method

.method public changeIsNoFaceResult(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRealTimeFaceResult:Z

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    :cond_1
    :goto_0
    return-void
.end method

.method public checkIsNeedChangBg()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isLoading()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 3
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 4
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v5

    if-nez v5, :cond_7

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 6
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v5

    if-nez v5, :cond_7

    .line 7
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->clone()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, v6, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getIsNeedRefresh()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0, v6}, Lcom/arcsoft/avatar2/RecordModule;->setBackgroundToSquare(Z)V

    .line 14
    :cond_3
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->uiStyle:I

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->nextFrame()I

    move-result v0

    .line 19
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar2/BackgroundInfo;->getBackGroundPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v1, :cond_6

    .line 22
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/arcsoft/avatar2/RecordModule;->setBackground(Landroid/graphics/Bitmap;Lcom/arcsoft/avatar2/BackgroundInfo;)V

    .line 23
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    iput-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    .line 25
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsNeedChangBg  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    if-eqz v0, :cond_9

    .line 27
    iput-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    .line 28
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_8

    .line 29
    invoke-virtual {v0, v4, v4}, Lcom/arcsoft/avatar2/RecordModule;->setBackground(Landroid/graphics/Bitmap;Lcom/arcsoft/avatar2/BackgroundInfo;)V

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, v3, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :cond_9
    :goto_1
    return-void

    .line 31
    :cond_a
    :goto_2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkIsNeedChangBg: error"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public copyPreview(Landroid/graphics/Rect;II)I
    .locals 10

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/arcsoft/avatar2/RecordModule;->setDrawScope(IIII)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTextureId:[I

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getIsNoFaceResult()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, p1

    :goto_0
    const/16 v2, 0x5a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/arcsoft/avatar2/RecordModule;->startRender(IZIIZ[I[BZ)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->prepareTransformRenders()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->drawTransformAttribute:Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTextureId:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v8, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v7, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->init(IIIII[F[FZ)Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTextureId:[I

    aget p1, p2, p1

    return p1
.end method

.method public createAvatar(Landroid/graphics/Bitmap;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 7
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 11
    :cond_0
    new-instance p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;

    invoke-direct {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;-><init>()V

    .line 12
    iget-object v11, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v11

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO;

    move-object v8, p1

    invoke-virtual/range {v0 .. v10}, Lcom/arcsoft/avatar2/AvatarEngine;->avatarProfile(Ljava/lang/String;III[BIZLcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileInfo;Lcom/arcsoft/avatar2/AvatarConfig$UpdateProgressCallback;)I

    move-result v0

    .line 14
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avatarProfile res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->gender:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget p1, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->status:I

    const/16 v1, 0xfe

    if-eq p1, v1, :cond_b

    const/16 v1, 0xf6

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const p1, 0x7f1204fc

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    const p1, 0x7f1204f7

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_4

    const p1, 0x7f1204fb

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_5

    const p1, 0x7f1204fa

    goto :goto_0

    :cond_5
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_6

    const p1, 0x7f1204f8

    goto :goto_0

    :cond_6
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_7

    const p1, 0x7f1204fd

    goto :goto_0

    :cond_7
    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_8

    const p1, 0x7f1204f9

    goto :goto_0

    :cond_8
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_9

    const p1, 0x7f1204f6

    goto :goto_0

    :cond_9
    const p1, 0x7f1204ff

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0o0;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_a

    .line 19
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0O0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void

    .line 20
    :cond_b
    :goto_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0Oo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public createEmoticon()V
    .locals 0

    return-void
.end method

.method public drawPreview(Landroid/graphics/Rect;IIZ[IZ)Z
    .locals 13

    move-object v0, p0

    move-object v1, p1

    .line 1
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isMimojiMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    const-class v4, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, v4}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x1

    if-eqz p4, :cond_2

    .line 4
    invoke-virtual/range {p0 .. p3}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->copyPreview(Landroid/graphics/Rect;II)I

    move-result v1

    if-lez v1, :cond_1

    move v3, v2

    :cond_1
    return v3

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 6
    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 7
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 8
    invoke-static {v3, v4, v1, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 9
    iget-object v6, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v6, v3, v4, v1, v5}, Lcom/arcsoft/avatar2/RecordModule;->setDrawScope(IIII)V

    .line 10
    iget-boolean v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    if-eqz v1, :cond_4

    .line 11
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCapture start"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/RecordModule;->capture()V

    .line 13
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v4, 0x3

    .line 15
    invoke-virtual {v1, v4}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setCameraStatePublic(I)V

    .line 16
    :cond_3
    iput-boolean v3, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 17
    invoke-static {v4, v4, v4, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    .line 18
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getIsNoFaceResult()Z

    move-result v1

    if-nez v1, :cond_5

    move v12, v2

    goto :goto_0

    :cond_5
    move v12, v3

    .line 20
    :goto_0
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    const/16 v5, 0x5a

    iget-boolean v6, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    iget v7, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTextureId:[I

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/arcsoft/avatar2/RecordModule;->startRender(IZIIZ[I[BZ)V

    .line 21
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTextureId:[I

    aget v1, v1, v3

    aput v1, p5, v3

    return v2

    :cond_6
    :goto_1
    return v3
.end method

.method public getIsNoFaceResult()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMimojiPara()Ljava/util/Map;
    .locals 8
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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v2

    const-string v3, "attr_mimoji_category"

    const-string v4, ""

    const-string v5, "null"

    if-eqz v2, :cond_a

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "custom"

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "person"

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v6, "bear"

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_ROYAN:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v6, "royan"

    goto :goto_0

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v6, "rabbit"

    goto :goto_0

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v6, "rabbit2"

    goto :goto_0

    .line 10
    :cond_5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_FROG:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v6, "frog"

    goto :goto_0

    .line 11
    :cond_6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_CAT:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v6, "cat"

    goto :goto_0

    :cond_7
    move-object v6, v4

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 13
    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 15
    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->putMimojiConfigValue(Ljava/util/Map;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)Ljava/util/Map;

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v0, v6

    :goto_1
    const-string v2, "attr_mimoji_cartoon"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_2
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 18
    :cond_a
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getExtraSceneName()Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "attr_mimoji_extra_scene"

    .line 21
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_c
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    if-nez v0, :cond_d

    move-object v0, v5

    goto :goto_5

    .line 23
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string v2, "attr_mimoji_change_timbre"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    if-nez v0, :cond_e

    goto :goto_6

    .line 25
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    const-string v0, "attr_mimoji_change_background"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getOperatingMode()I
    .locals 1

    const v0, 0x800b

    return v0
.end method

.method public initEngine(IIIIZ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAvatarEngine with parameters : displayOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", isFrontCamera = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    .line 3
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    const/16 p2, 0x9

    .line 4
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setIsAvatarInited(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p3

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->uiStyle:I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->initGifResource()V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->initMimojiDataResource()V

    .line 11
    sget-object p4, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avatar start init | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 p4, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p3, p4, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 14
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iput-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsGifOn:Z

    .line 15
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 16
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 17
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 18
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsGifOn:Z

    if-eqz v1, :cond_1

    .line 19
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p3, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    goto :goto_1

    .line 20
    :cond_1
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p3, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    .line 21
    :goto_1
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-nez p3, :cond_2

    .line 22
    new-instance v0, Lcom/arcsoft/avatar2/RecordModule;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    invoke-direct {v0, p3, v1}, Lcom/arcsoft/avatar2/RecordModule;-><init>(Landroid/content/Context;Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    .line 23
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    .line 24
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    move v1, p1

    move v5, p5

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/avatar2/RecordModule;->init(IIILcom/arcsoft/avatar2/AvatarEngine;Z)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    sget-object p3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mSceneTriggerCallback:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    invoke-virtual {p1, p3, p5}, Lcom/arcsoft/avatar2/RecordModule;->setExtraSceneTemplatePath(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;)V

    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {p3, p1}, Lcom/arcsoft/avatar2/RecordModule;->setmImageOrientation(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p1, p5}, Lcom/arcsoft/avatar2/RecordModule;->setMirror(Z)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    iget-object p5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    invoke-virtual {p1, p3, p5}, Lcom/arcsoft/avatar2/RecordModule;->setPreviewSize(II)V

    .line 30
    :goto_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsGifOn:Z

    invoke-virtual {p1, p3}, Lcom/arcsoft/avatar2/RecordModule;->setBackgroundToSquare(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->releaseRender()V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    if-eqz p1, :cond_3

    move p2, p4

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateBeauty(Z)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLoadHandler:Landroid/os/Handler;

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0oo;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0oo;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initMimojiResource()V
    .locals 9

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oOoO()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isLoading()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->showLoadProgress(Z)V

    return-void

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->GIF_SUBTITLE_DIR:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->GIF_SUBTITLE_DIR:Ljava/lang/String;

    const-string v4, "gif_subtitle/3336a65c52528c9c368e942d3dd307f8-le64.cache-3"

    const-string v5, "3336a65c52528c9c368e942d3dd307f8-le64.cache-3"

    invoke-static {v1, v3, v4, v5}, Lcom/android/camera/module/impl/component/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 7
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v6, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setIsLoading(Z)V

    .line 8
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 9
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MODEL_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    .line 10
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/upgrade/UpgradeManager;->currentVersionCode(Landroid/content/Context;)J

    move-result-wide v6

    .line 11
    invoke-static {v6, v7}, Lcom/android/camera/upgrade/UpgradeManager;->mIsNeedUpgrade(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    :cond_1
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    .line 13
    :cond_2
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MODEL_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 14
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const v2, 0x8000

    .line 15
    :try_start_1
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v7, "model2.zip"

    sget-object v8, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v6, v7, v8, v2}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 16
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v7, "/vendor/camera/mimoji/model2.zip"

    sget-object v8, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v6, v7, v8, v2}, Lcom/android/camera/Util;->verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    :goto_0
    sget-object v6, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    .line 18
    sget-object v6, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 19
    :try_start_3
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v7, "data.zip"

    sget-object v8, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v6, v7, v8, v2}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 20
    :catch_1
    :try_start_4
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v7, "/vendor/camera/mimoji/data.zip"

    sget-object v8, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v6, v7, v8, v2}, Lcom/android/camera/Util;->verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    :goto_1
    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init model spend time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setIsLoading(Z)V

    .line 23
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAvatarTemplatePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->reloadConfig()V

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->onMimojiInitFinish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 27
    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verify asset model zip failed..."

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setIsLoading(Z)V

    .line 29
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    :goto_2
    return-void
.end method

.method public isAvatarInited()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isAvatarInited()Z

    move-result v0

    return v0
.end method

.method public isNeedShowAvatar()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v2

    if-eqz v0, :cond_0

    .line 3
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v5, "add_state"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v4, "close_state"

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method public isNeedShowNoFaceTip()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBgId()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRealTimeFaceResult:Z

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v2, "close_state"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1
.end method

.method public onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z
    .locals 7

    .line 1
    sget-object p2, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v0, "mimoji void onMimojiSelect[avatarItem]"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v2, "add_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 4
    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v3, "close_state"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 8
    iput v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 10
    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    .line 11
    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 12
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change mimoji with path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", and config = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v3

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mSceneTriggerCallback:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    invoke-virtual {v4, v5, v6}, Lcom/arcsoft/avatar2/RecordModule;->setExtraSceneTemplatePath(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;)V

    .line 15
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    .line 16
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 17
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v5, ""

    goto :goto_0

    :cond_3
    move-object v5, v2

    .line 18
    :goto_0
    iput-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v4, :cond_4

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p1, v0, v2}, Lcom/arcsoft/avatar2/RecordModule;->changeHumanTemplate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    :goto_1
    const-string p1, "mimoji_person"

    .line 22
    invoke-static {p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    .line 23
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getAvatarConfigInfoArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfig(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setAvatarConfigInfoArrayList(Ljava/util/ArrayList;)V

    .line 26
    iget-boolean v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mIsLastClick:Z

    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->nextFrame()I

    :cond_7
    const-string v0, "mimoji_cartoon"

    .line 28
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v0

    if-ltz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getDefaultFrame()I

    move-result v0

    if-lez v0, :cond_8

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getAvatarConfigInfoArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    .line 31
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/RecordModule;->updateAvatarConfigInfo(Lcom/arcsoft/avatar2/AvatarEngine;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move v0, p2

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    if-eqz p1, :cond_a

    move v1, p2

    :cond_a
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateBeauty(Z)V

    .line 34
    monitor-exit v3

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 35
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    return p2
.end method

.method public onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V
    .locals 2

    const/4 p2, 0x2

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    :goto_1
    const-string p1, "mimoji_change_background"

    .line 5
    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceRotationChange(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onDeviceRotationChange(I)V

    :cond_0
    return-void
.end method

.method public onEmoticonBack(Z)V
    .locals 0

    return-void
.end method

.method public onFaceDetectResult(Landroid/media/Image;)I
    .locals 4

    const-string v0, "MimojiAsControlImpl onPreviewFrame asvloffscreen null"

    .line 1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v0, "MimojiAsControlImpl onPreviewFrame mRecordModule null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/arcsoft/avatar2/util/AsvloffscreenUtil;->buildNV21SingleBuffer(Landroid/media/Image;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->avatarProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    .line 9
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updatePreviewProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    iget-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    invoke-static {v1, v2, v3}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getOutlineOrientation(IIZ)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->outlineProcessEx(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;I)I

    move-result v2

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updatePreviewProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowNoFaceTip()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :cond_6
    :goto_0
    return v2

    .line 14
    :catchall_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onMimojiInitFinish()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMimojiInitFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setIsAvatarInited(Z)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->showLoadProgress(Z)V

    return-void
.end method

.method public refeshMaterialConfig(Z)V
    .locals 0

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

.method public releaseRender()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v2, "mimoji void reloadConfig[]\u3000extrascene init"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 7
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 8
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0oO;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO0oO;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 9
    :cond_2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseRender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->releaseRender()V

    :cond_3
    :goto_1
    return-void
.end method

.method public reloadConfig()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "MimojiAsControlImpl reloadConfig"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/RecordModule;->getBackgroundBmpInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setBackgroundInfos(Ljava/util/ArrayList;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v2, "mimoji void reloadConfig[]\u3000extrascene init"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v1, ""

    .line 15
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    .line 16
    :cond_3
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 20
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getAvatarConfigInfoArrayList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getAvatarConfigInfoArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    .line 23
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/RecordModule;->updateAvatarConfigInfo(Lcom/arcsoft/avatar2/AvatarEngine;)V

    goto :goto_1

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_8

    .line 27
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetClickEnable(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetConfig()V

    goto :goto_1

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->reloadConfig()V

    .line 33
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "MimojiAsControlImpl reloadConfig: error mimojiEditor is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method

.method public saveEmoticon(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setIsAvatarInited(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setIsAvatarInited(Z)V

    return-void
.end method

.method public setPicIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V
    .locals 0

    return-void
.end method

.method public unInitEngine()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->TAG:Ljava/lang/String;

    const-string v1, "avatar unInitEngine"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x7d0

    .line 3
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO0O0/OooO00o;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->destoryAll()V

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

    return-void
.end method
