.class public Lcom/android/camera/ui/FastmotionTextureVideoView;
.super Landroid/view/TextureView;
.source "FastmotionTextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;,
        Lcom/android/camera/ui/FastmotionTextureVideoView$Size;,
        Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;,
        Lcom/android/camera/ui/FastmotionTextureVideoView$PivotPoint;,
        Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleType;
    }
.end annotation


# static fields
.field public static final CENTER:I = 0x2

.field public static final CENTER_CROP:I = 0x1

.field public static final FIT_CENTER:I = 0x4

.field public static final FIT_LEFT_TOP_FULL_SCREEN:I = 0x6

.field public static final FIT_LEFT_TOP_FULL_SCREEN_AUTO:I = 0x7

.field public static final FIT_XY:I = 0x3

.field public static final MSG_PAUSE:I = 0x2

.field public static final MSG_START:I = 0x1

.field public static final MSG_STOP:I = 0x3

.field public static final NONE:I = 0x5

.field public static final PIVOT_CENTER:I = 0x2

.field public static final PIVOT_LEFT_TOP:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static final sThread:Landroid/os/HandlerThread;


# instance fields
.field public attrBuilder:Landroid/media/AudioAttributes$Builder;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mClearSurface:Z

.field public mContext:Landroid/content/Context;

.field public volatile mCurrentState:I

.field public mHandler:Landroid/os/Handler;

.field public mHasAudio:Z

.field public mIsNeedAudio:Z

.field public mLoop:Z

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

.field public mScaleType:I

.field public mSoundMute:Z

.field public mSurface:Landroid/view/Surface;

.field public volatile mTargetState:I

.field public mUri:Landroid/net/Uri;

.field public mVideoHandler:Landroid/os/Handler;

.field public mediaExtractor:Landroid/media/MediaExtractor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FastmotionTextureVideoView;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FastmotionTextureVideoView"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/FastmotionTextureVideoView;->sThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 3
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mIsNeedAudio:Z

    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mScaleType:I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 9
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mIsNeedAudio:Z

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mScaleType:I

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 15
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 16
    iput-boolean p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mIsNeedAudio:Z

    const/4 p1, 0x4

    .line 17
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mScaleType:I

    .line 18
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/FastmotionTextureVideoView;)Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/FastmotionTextureVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/FastmotionTextureVideoView;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private clearSurface()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 v1, 0xd

    new-array v3, v1, [I

    .line 5
    fill-array-data v3, :array_0

    const/4 v8, 0x1

    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v6, v8, [I

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v7

    move-object v4, v9

    .line 6
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    .line 7
    aget-object v2, v9, v1

    .line 8
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-interface {v0, v7, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    new-array v5, v8, [I

    const/16 v6, 0x3038

    aput v6, v5, v1

    invoke-interface {v0, v7, v2, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 10
    invoke-interface {v0, v7, v1, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 11
    invoke-static {v4, v4, v4, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    .line 12
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 13
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 14
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 15
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 16
    invoke-interface {v0, v7, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 17
    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/camera/ui/FastmotionTextureVideoView;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mVideoHandler:Landroid/os/Handler;

    .line 6
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openVideo()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.resource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/ui/FastmotionTextureVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openVideo error file not found"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->release(Z)V

    .line 7
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 8
    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 14
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 15
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 16
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->attrBuilder:Landroid/media/AudioAttributes$Builder;

    if-nez v2, :cond_2

    .line 17
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->attrBuilder:Landroid/media/AudioAttributes$Builder;

    .line 18
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 19
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->attrBuilder:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mLoop:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 21
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v1, 0x1

    .line 22
    iput v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 23
    iput v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 24
    iget-boolean v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mIsNeedAudio:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 25
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 26
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    if-nez v2, :cond_3

    .line 27
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 28
    iget-object v4, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4, v5, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 29
    :cond_3
    iput-boolean v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHasAudio:Z

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 31
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 32
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHasAudio:Z

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_5
    iput-object v3, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 36
    :catch_0
    sget-object v0, Lcom/android/camera/ui/FastmotionTextureVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openVideo error"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 38
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_6

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/FastmotionTextureVideoView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$1;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_1
    return-void

    .line 41
    :cond_7
    :goto_2
    sget-object v0, Lcom/android/camera/ui/FastmotionTextureVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openVideo error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private release(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 8
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz p1, :cond_2

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->attrBuilder:Landroid/media/AudioAttributes$Builder;

    if-eqz p1, :cond_3

    .line 14
    iput-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->attrBuilder:Landroid/media/AudioAttributes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mClearSurface:Z

    if-eqz p1, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->clearSurface()V

    :cond_4
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    const-class v0, Lcom/android/camera/ui/FastmotionTextureVideoView;

    monitor-enter v0

    .line 2
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 4
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FastmotionTextureVideoView;->release(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOOO;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOOO;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    goto :goto_1

    .line 11
    :cond_3
    iput v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->openVideo()V

    .line 13
    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public isHasAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHasAudio:Z

    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSoundMute:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSoundMute:Z

    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/FastmotionTextureVideoView$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ui/FastmotionTextureVideoView$7;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;Landroid/media/MediaPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 2
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/FastmotionTextureVideoView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/FastmotionTextureVideoView$3;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->attrBuilder:Landroid/media/AudioAttributes$Builder;

    if-eqz v0, :cond_2

    .line 7
    iput-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->attrBuilder:Landroid/media/AudioAttributes$Builder;

    :cond_2
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 2
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/FastmotionTextureVideoView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/ui/FastmotionTextureVideoView$4;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/FastmotionTextureVideoView$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/ui/FastmotionTextureVideoView$8;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mCurrentState:I

    .line 6
    iput v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/FastmotionTextureVideoView$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/FastmotionTextureVideoView$5;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/camera/ui/FastmotionTextureVideoView$2;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$2;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->start()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->stop()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;->stop()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/ui/FastmotionTextureVideoView$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/camera/ui/FastmotionTextureVideoView$6;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setClearSurface(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mClearSurface:Z

    return-void
.end method

.method public setIsNeedAudio(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mIsNeedAudio:Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mLoop:Z

    return-void
.end method

.method public setMediaPlayerCallback(Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setScaleType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mScaleType:I

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FastmotionTextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoSpecifiedSize(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;-><init>(II)V

    .line 2
    new-instance v1, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;-><init>(II)V

    .line 3
    new-instance v2, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;-><init>(Lcom/android/camera/ui/FastmotionTextureVideoView$Size;Lcom/android/camera/ui/FastmotionTextureVideoView$Size;)V

    .line 4
    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mScaleType:I

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getScaleMatrix(I)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_1
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FastmotionTextureVideoView;->start(J)V

    return-void
.end method

.method public start(J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 6
    :cond_1
    iput v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mTargetState:I

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public unMute()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    int-to-double v5, v0

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    sub-double/2addr v3, v1

    double-to-float v0, v3

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView;->mSoundMute:Z

    :cond_0
    return-void
.end method
