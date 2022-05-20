.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;
.super Ljava/lang/Object;
.source "BackgroundUtil.java"


# static fields
.field public static imgDataMatrix:[F


# instance fields
.field public backgroundMVP:[F

.field public backgroundTexId:I

.field public fboIdNow:[I

.field public fboIds:[I

.field public fboTexs:[I

.field public height:I

.field public mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

.field public viewPortNow:[I

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->imgDataMatrix:[F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->width:I

    .line 3
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->height:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboIds:[I

    new-array v2, v0, [I

    .line 5
    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboTexs:[I

    .line 6
    invoke-static {v2, v1, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->createFBO([I[III)V

    .line 7
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    .line 8
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->imgDataMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->imgDataMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p1, p2, v1, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    new-array p1, v0, [I

    .line 10
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboIdNow:[I

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->viewPortNow:[I

    return-void
.end method


# virtual methods
.method public drawBackground(I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->isHasBackground()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const v0, 0x8ca6

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboIdNow:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const/16 v0, 0xba2

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->viewPortNow:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboIds:[I

    aget v0, v0, v2

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 5
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->width:I

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->height:I

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->backgroundTexId:I

    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->imgDataMatrix:[F

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->backgroundMVP:[F

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    const/16 v0, 0xbe2

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v3, 0x302

    const/16 v4, 0x303

    .line 8
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 9
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {v3, p1, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->drawFrame(I[F)V

    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboIdNow:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->viewPortNow:[I

    aget v0, p1, v2

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-static {v0, v1, v3, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboTexs:[I

    aget p1, p1, v2

    return p1
.end method

.method public isHasBackground()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->backgroundTexId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadBackground(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->createImageTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->backgroundTexId:I

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->height:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->changeMVPMatrix([FFFFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->backgroundMVP:[F

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboTexs:[I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->fboIds:[I

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->deleteFBO([I[I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->releaseImage()V

    return-void
.end method

.method public releaseImage()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->backgroundTexId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 2
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    iput v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->backgroundTexId:I

    :cond_0
    return-void
.end method
