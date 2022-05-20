.class public Lcom/android/camera/module/encoder/EGLBase$EglSurface;
.super Ljava/lang/Object;
.source "EGLBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/encoder/EGLBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EglSurface"
.end annotation


# instance fields
.field public final mEgl:Lcom/android/camera/module/encoder/EGLBase;

.field public mEglSurface:Landroid/opengl/EGLSurface;

.field public final mHeight:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/encoder/EGLBase;II)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 13
    invoke-static {}, Lcom/android/camera/module/encoder/EGLBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglSurface"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iput-object p1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    .line 15
    invoke-static {p1, p2, p3}, Lcom/android/camera/module/encoder/EGLBase;->access$200(Lcom/android/camera/module/encoder/EGLBase;II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 16
    iput p2, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mWidth:I

    .line 17
    iput p3, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/encoder/EGLBase;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 3
    invoke-static {}, Lcom/android/camera/module/encoder/EGLBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglSurface"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    instance-of v0, p2, Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unsupported surface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    .line 7
    invoke-static {p1, p2}, Lcom/android/camera/module/encoder/EGLBase;->access$100(Lcom/android/camera/module/encoder/EGLBase;Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 8
    iget-object p2, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    const/16 v0, 0x3057

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/module/encoder/EGLBase;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mWidth:I

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    iget-object p2, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    const/16 v0, 0x3056

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/module/encoder/EGLBase;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mHeight:I

    .line 10
    invoke-static {}, Lcom/android/camera/module/encoder/EGLBase;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "EglSurface: size(%d, %d)"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase;->getContext()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mWidth:I

    return v0
.end method

.method public makeCurrent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lcom/android/camera/module/encoder/EGLBase;->access$300(Lcom/android/camera/module/encoder/EGLBase;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/encoder/EGLBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglSurface:release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lcom/android/camera/module/encoder/EGLBase;->access$500(Lcom/android/camera/module/encoder/EGLBase;Landroid/opengl/EGLSurface;)V

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method public swap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    iget-object v1, p0, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lcom/android/camera/module/encoder/EGLBase;->access$400(Lcom/android/camera/module/encoder/EGLBase;Landroid/opengl/EGLSurface;)I

    return-void
.end method
