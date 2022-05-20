.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;
.super Ljava/lang/Object;
.source "Program.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

.field public mProgramHandle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 5
    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->getDrawable2d()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->getLocations()V

    return-void
.end method


# virtual methods
.method public drawFrame(I[F)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->drawFrame(I[F[F)V

    return-void
.end method

.method public abstract drawFrame(I[F[F)V
.end method

.method public drawFrame(I[F[FIIII)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xba2

    .line 2
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 3
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->drawFrame(I[F[F)V

    .line 5
    aget p1, v0, v1

    const/4 p2, 0x1

    aget p2, v0, p2

    const/4 p3, 0x2

    aget p3, v0, p3

    const/4 p4, 0x3

    aget p4, v0, p4

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public drawFrameMVP(I[F)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->drawFrame(I[F[F)V

    return-void
.end method

.method public abstract getDrawable2d()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;
.end method

.method public abstract getLocations()V
.end method

.method public release()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    return-void
.end method

.method public updateTexCoordArray([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->updateTexCoordArray([F)V

    return-void
.end method

.method public updateVertexArray([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->updateVertexArray([F)V

    return-void
.end method
