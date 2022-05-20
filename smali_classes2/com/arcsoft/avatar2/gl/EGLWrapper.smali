.class public Lcom/arcsoft/avatar2/gl/EGLWrapper;
.super Ljava/lang/Object;
.source "EGLWrapper.java"


# static fields
.field public static final a:Ljava/lang/String; = "Arc_EGLWrapper"

.field public static final b:I = 0x3142


# instance fields
.field public c:Landroid/opengl/EGLContext;

.field public d:Landroid/opengl/EGLDisplay;

.field public e:Landroid/opengl/EGLSurface;

.field public f:[Landroid/opengl/EGLConfig;

.field public g:Landroid/opengl/EGLContext;

.field public h:Z

.field public i:Landroid/view/Surface;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/opengl/EGLConfig;

    .line 5
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->f:[Landroid/opengl/EGLConfig;

    .line 6
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->g:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->h:Z

    .line 8
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->h:Z

    .line 9
    iput p1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->j:I

    .line 10
    iput p2, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->k:I

    .line 11
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c()V

    return-void
.end method

.method public constructor <init>(IILandroid/opengl/EGLContext;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    .line 14
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    .line 15
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/opengl/EGLConfig;

    .line 16
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->f:[Landroid/opengl/EGLConfig;

    .line 17
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->g:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->h:Z

    .line 19
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->h:Z

    .line 20
    iput p1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->j:I

    .line 21
    iput p2, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->k:I

    .line 22
    iput-object p3, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->g:Landroid/opengl/EGLContext;

    .line 23
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    .line 26
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    .line 27
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/opengl/EGLConfig;

    .line 28
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->f:[Landroid/opengl/EGLConfig;

    .line 29
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->g:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->h:Z

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->i:Landroid/view/Surface;

    .line 32
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 33
    throw p1
.end method

.method public constructor <init>(Landroid/view/Surface;Landroid/opengl/EGLContext;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    .line 36
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    .line 37
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/opengl/EGLConfig;

    .line 38
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->f:[Landroid/opengl/EGLConfig;

    .line 39
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->g:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->h:Z

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->i:Landroid/view/Surface;

    .line 42
    iput-object p2, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->g:Landroid/opengl/EGLContext;

    .line 43
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 44
    throw p1
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->f:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->i:Landroid/view/Surface;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    const-string v0, "eglCreateWindowSurface"

    .line 2
    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "NOT_ERROR_JUST_SEE_CALL_STACK"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL_ERROR_CODE: 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    iget v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->j:I

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, 0x3056

    aput v3, v0, v1

    iget v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->k:I

    const/4 v3, 0x3

    aput v1, v0, v3

    const/4 v1, 0x4

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->f:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v2

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    const-string v0, "createEGLPbufferSurface"

    .line 3
    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    .line 2
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x11

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_0

    new-array v1, v1, [I

    .line 5
    fill-array-data v1, :array_1

    .line 6
    iget-boolean v4, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->h:Z

    if-eqz v4, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    new-array v11, v3, [I

    .line 7
    iget-object v5, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->f:[Landroid/opengl/EGLConfig;

    const/4 v9, 0x0

    array-length v10, v8

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 8
    fill-array-data v1, :array_2

    .line 9
    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->f:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->g:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    const-string v0, "eglCreateContext"

    .line 10
    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_2

    .line 12
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->h:Z

    if-eqz v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->b()V

    goto :goto_1

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a()V

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->j:I

    .line 16
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->k:I

    return-void

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateContext == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglChooseConfig [RGBA888 + recordable] ES2 EGL_config_fail..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL14.eglInitialize fail..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL14.eglGetDisplay fail..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3033
        0x4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x8
        0x3142
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3033
        0x1
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x8
        0x3142
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    const/4 v3, 0x0

    const/16 v4, 0x3056

    invoke-static {v1, v2, v4, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 2
    aget v0, v0, v3

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->i:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    const/4 v3, 0x0

    const/16 v4, 0x3057

    invoke-static {v1, v2, v4, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 2
    aget v0, v0, v3

    return v0
.end method

.method public makeCurrent()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "makeCurrent"

    .line 3
    invoke-direct {p0, v1}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeUnCurrent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "makeUnCurrent"

    .line 2
    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 5
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    .line 6
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->c:Landroid/opengl/EGLContext;

    .line 7
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    .line 8
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->g:Landroid/opengl/EGLContext;

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->i:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->i:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->i:Landroid/view/Surface;

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-string p1, "eglPresentationTimeANDROID"

    .line 2
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a(Ljava/lang/String;)V

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->e:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "makeCurrent"

    .line 3
    invoke-direct {p0, v1}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateSize(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->j:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->k:I

    if-eq p2, p1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->d()V

    .line 3
    invoke-direct {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->a()V

    .line 4
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->j:I

    .line 5
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/arcsoft/avatar2/gl/EGLWrapper;->k:I

    :cond_1
    return-void
.end method
