.class public Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;
.super Lcom/android/camera/ui/GLTextureView;
.source "MimojiAsEditGLTextureView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView$MyEGLConfigChooser;
    }
.end annotation


# static fields
.field public static BACKGROUND_COLOR:[F = null

.field public static final DEBUG_FPS:Z = false

.field public static final DO_DRAW:I = 0x6

.field public static final GET_SAVE_THUM_END:I = 0x4

.field public static final TAG:Ljava/lang/String;

.field public static final THUM_HEIGHT:I = 0xc8

.field public static final THUM_WIDTH:I = 0xc8

.field public static final UPDATE_THUM:I = 0x5


# instance fields
.field public mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

.field public mDeviceRotation:I

.field public final mEglConfigChooser:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView$MyEGLConfigChooser;

.field public mFrameCount:I

.field public mFrameCountingStart:J

.field public mHandler:Landroid/os/Handler;

.field public mIsStopRender:Z

.field public mIsStopRenderForce:Z

.field public mSaveConfigThum:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->BACKGROUND_COLOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView$MyEGLConfigChooser;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView$MyEGLConfigChooser;-><init>(Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView$1;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mEglConfigChooser:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView$MyEGLConfigChooser;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCount:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCountingStart:J

    const/16 p2, 0x5a

    .line 6
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mDeviceRotation:I

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mIsStopRender:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mIsStopRenderForce:Z

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mSaveConfigThum:Z

    const/4 p2, 0x2

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    .line 11
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mEglConfigChooser:Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView$MyEGLConfigChooser;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/GLTextureView;->setEGLConfigChooser(Lcom/android/camera/ui/GLTextureView$EGLConfigChooser;)V

    .line 12
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLTextureView;->setPreserveEGLContextOnPause(Z)V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private outputFps()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCountingStart:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 4
    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCountingStart:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCount:I

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mFrameCount:I

    return-void
.end method


# virtual methods
.method public onDeviceRotationChange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mDeviceRotation:I

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    const p1, 0x3da88ce7    # 0.0823f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0xb71

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x4100

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mIsStopRender:Z

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    .line 7
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_1

    .line 8
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDrawFrame mAvatar  null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_1
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mDeviceRotation:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/arcsoft/avatar2/AvatarEngine;->avatarRender(IIIIZ[I)V

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mSaveConfigThum:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mSaveConfigThum:Z

    const p1, 0x27100

    new-array p1, p1, [B

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/16 v1, 0xf4

    const/16 v2, 0x124

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    const/16 v8, 0x320

    sget-object v9, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->BACKGROUND_COLOR:[F

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    invoke-virtual/range {v0 .. v10}, Lcom/arcsoft/avatar2/AvatarEngine;->renderThumb(IIII[BIII[FF)I

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 14
    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLTextureView;->setPreserveEGLContextOnPause(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->releaseRender()V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, p1, p1, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setIsStopRenderForce(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsStopRenderForce :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mIsStopRenderForce:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->setStopRender(Z)V

    :cond_0
    return-void
.end method

.method public setSaveConfigThum(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mSaveConfigThum:Z

    return-void
.end method

.method public setStopRender(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mIsStopRenderForce:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mIsStopRender:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStopRender :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;->mIsStopRender:Z

    return-void
.end method
