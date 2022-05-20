.class public Lcom/android/camera/ui/EGLLogWrapper;
.super Ljava/lang/Object;
.source "EGLLogWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL11;


# instance fields
.field public mArgCount:I

.field public mCheckError:Z

.field public mEgl10:Ljavax/microedition/khronos/egl/EGL10;

.field public mLog:Ljava/io/Writer;

.field public mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object p1, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 3
    iput-object p3, p0, Lcom/android/camera/ui/EGLLogWrapper;->mLog:Ljava/io/Writer;

    and-int/lit8 p1, p2, 0x4

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/EGLLogWrapper;->mLogArgumentNames:Z

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1

    move p3, v0

    .line 5
    :cond_1
    iput-boolean p3, p0, Lcom/android/camera/ui/EGLLogWrapper;->mCheckError:Z

    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/ui/EGLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 13
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_0

    const-string p2, "EGL10.EGL_NO_CONTEXT"

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 1

    .line 8
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    const-string p2, "EGL10.EGL_DEFAULT_DISPLAY"

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL11;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne p2, v0, :cond_1

    const-string p2, "EGL10.EGL_NO_DISPLAY"

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 1

    .line 16
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v0, :cond_0

    const-string p2, "EGL10.EGL_NO_SURFACE"

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;[I)V
    .locals 2

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/camera/ui/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/camera/ui/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/ui/EGLLogWrapper;->mArgCount:I

    return-void
.end method

.method private checkError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/ui/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1}, Lcom/android/camera/ui/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 4
    iget-boolean v2, p0, Lcom/android/camera/ui/EGLLogWrapper;->mCheckError:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private end()V
    .locals 1

    const-string v0, ");\n"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->flush()V

    return-void
.end method

.method private flush()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mLog:Ljava/io/Writer;

    :goto_0
    return-void
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    invoke-static {p0}, Lcom/android/camera/ui/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EGL_CONTEXT_LOST"

    return-object p0

    :pswitch_1
    const-string p0, "EGL_BAD_SURFACE"

    return-object p0

    :pswitch_2
    const-string p0, "EGL_BAD_PARAMETER"

    return-object p0

    :pswitch_3
    const-string p0, "EGL_BAD_NATIVE_WINDOW"

    return-object p0

    :pswitch_4
    const-string p0, "EGL_BAD_NATIVE_PIXMAP"

    return-object p0

    :pswitch_5
    const-string p0, "EGL_BAD_MATCH"

    return-object p0

    :pswitch_6
    const-string p0, "EGL_BAD_DISPLAY"

    return-object p0

    :pswitch_7
    const-string p0, "EGL_BAD_CURRENT_SURFACE"

    return-object p0

    :pswitch_8
    const-string p0, "EGL_BAD_CONTEXT"

    return-object p0

    :pswitch_9
    const-string p0, "EGL_BAD_CONFIG"

    return-object p0

    :pswitch_a
    const-string p0, "EGL_BAD_ATTRIBUTE"

    return-object p0

    :pswitch_b
    const-string p0, "EGL_BAD_ALLOC"

    return-object p0

    :pswitch_c
    const-string p0, "EGL_BAD_ACCESS"

    return-object p0

    :pswitch_d
    const-string p0, "EGL_NOT_INITIALIZED"

    return-object p0

    :pswitch_e
    const-string p0, "EGL_SUCCESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getHex(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private returns(I)V
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->flush()V

    return-void
.end method

.method private returns(Z)V
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    aget v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v3, "out of bounds"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    aget-object v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v3, "out of bounds"

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 7

    const-string v0, "eglChooseConfig"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "attrib_list"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    const-string v0, "config_size"

    .line 4
    invoke-direct {p0, v0, p4}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const-string p2, "configs"

    .line 7
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo p2, "num_config"

    .line 8
    invoke-direct {p0, p2, p5}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "eglCopyBuffers"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string/jumbo v0, "surface"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const-string v0, "native_pixmap"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    const-string v0, "eglCreateContext"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "share_context"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    const-string v0, "attrib_list"

    .line 5
    invoke-direct {p0, v0, p4}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object p1
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    const-string v0, "eglCreatePbufferSurface"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attrib_list"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object p1
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    const-string v0, "eglCreatePixmapSurface"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "native_pixmap"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attrib_list"

    .line 5
    invoke-direct {p0, v0, p4}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object p1
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    const-string v0, "eglCreateWindowSurface"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "native_window"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attrib_list"

    .line 5
    invoke-direct {p0, v0, p4}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object p1
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 1

    const-string v0, "eglDestroyContext"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "context"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 1

    const-string v0, "eglDestroySurface"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string/jumbo v0, "surface"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 1

    const-string v0, "eglGetConfigAttrib"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attribute"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const-string/jumbo p2, "value"

    .line 7
    invoke-direct {p0, p2, p4}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    const/4 p1, 0x0

    return p1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 1

    const-string v0, "eglGetConfigs"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "config_size"

    .line 3
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const-string p3, "configs"

    .line 6
    invoke-direct {p0, p3, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo p2, "num_config"

    .line 7
    invoke-direct {p0, p2, p4}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    const-string v0, "eglGetCurrentContext"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    const-string v0, "eglGetCurrentDisplay"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    const-string v0, "eglGetCurrentSurface"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "readdraw"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object p1
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    const-string v0, "eglGetDisplay"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "native_display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object p1
.end method

.method public eglGetError()I
    .locals 2

    const-string v0, "eglGetError"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/android/camera/ui/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .locals 1

    const-string v0, "eglInitialize"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    const-string v0, "major_minor"

    .line 6
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 1

    const-string v0, "eglMakeCurrent"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "draw"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const-string/jumbo v0, "read"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const-string v0, "context"

    .line 5
    invoke-direct {p0, v0, p4}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .locals 1

    const-string v0, "eglQueryContext"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "context"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    const-string v0, "attribute"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    move-result p1

    const/4 p2, 0x0

    .line 7
    aget p2, p4, p2

    invoke-direct {p0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->returns(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .locals 1

    const-string v0, "eglQueryString"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string v0, "name"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return-object p1
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .locals 1

    const-string v0, "eglQuerySurface"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string/jumbo v0, "surface"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const-string v0, "attribute"

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result p1

    const/4 p2, 0x0

    .line 7
    aget p2, p4, p2

    invoke-direct {p0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->returns(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglReleaseThread()Z
    .locals 1

    const-string v0, "eglReleaseThread"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 1

    const-string v0, "eglSwapBuffers"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const-string/jumbo v0, "surface"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 1

    const-string v0, "eglTerminate"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "display"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method

.method public eglWaitGL()Z
    .locals 1

    const-string v0, "eglWaitGL"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    move-result v0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .locals 1

    const-string v0, "eglWaitNative"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/EGLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "engine"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "bindTarget"

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EGLLogWrapper;->returns(Z)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/EGLLogWrapper;->checkError()V

    return p1
.end method
