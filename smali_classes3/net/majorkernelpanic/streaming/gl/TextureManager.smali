.class public Lnet/majorkernelpanic/streaming/gl/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field public static final FLOAT_SIZE_BYTES:I = 0x4

.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final TAG:Ljava/lang/String; = "TextureManager"

.field public static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field public static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field public static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field public mMVPMatrix:[F

.field public mProgram:I

.field public mSTMatrix:[F

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mTextureID:I

.field public mTriangleVertices:Ljava/nio/FloatBuffer;

.field public final mTriangleVerticesData:[F

.field public maPositionHandle:I

.field public maTextureHandle:I

.field public muMVPMatrixHandle:I

.field public muSTMatrixHandle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTriangleVerticesData:[F

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 3
    iput-object v2, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mMVPMatrix:[F

    new-array v1, v1, [F

    .line 4
    iput-object v1, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSTMatrix:[F

    const/16 v1, -0x3039

    .line 5
    iput v1, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTextureID:I

    .line 6
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 8
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSTMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    .line 1
    invoke-direct {p0, v0, p1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 2
    invoke-direct {p0, v1, p2}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    .line 4
    invoke-virtual {p0, v2}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    const-string v2, "TextureManager"

    if-nez v1, :cond_2

    const-string v3, "Could not create program"

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    .line 7
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 8
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 9
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v3, 0x8b82

    .line 11
    invoke-static {v1, v3, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 12
    aget p2, p2, v0

    if-eq p2, p1, :cond_3

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not link program: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v1, 0x0

    const v2, 0x8b81

    .line 5
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 6
    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextureManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeFragmentShader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mProgram:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 3
    invoke-direct {p0, v0, p1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mProgram:I

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "failed creating program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TextureManager"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createTexture()Landroid/graphics/SurfaceTexture;
    .locals 3

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 1
    invoke-direct {p0, v0, v1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mProgram:I

    if-eqz v0, :cond_4

    const-string v1, "aPosition"

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->maPositionHandle:I

    const-string v0, "glGetAttribLocation aPosition"

    .line 3
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->maPositionHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 5
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->maTextureHandle:I

    const-string v0, "glGetAttribLocation aTextureCoord"

    .line 6
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->maTextureHandle:I

    if-eq v0, v1, :cond_2

    .line 8
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->muMVPMatrixHandle:I

    const-string v0, "glGetUniformLocation uMVPMatrix"

    .line 9
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->muMVPMatrixHandle:I

    if-eq v0, v1, :cond_1

    .line 11
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->muSTMatrixHandle:I

    const-string v0, "glGetUniformLocation uSTMatrix"

    .line 12
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->muSTMatrixHandle:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 15
    aget v0, v1, v2

    iput v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTextureID:I

    const v1, 0x8d65

    .line 16
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "glBindTexture mTextureID"

    .line 17
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    .line 18
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 19
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 20
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 21
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "glTexParameter"

    .line 22
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTextureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawFrame()V
    .locals 9

    const-string v0, "onDrawFrame start"

    .line 1
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSTMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 3
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 4
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 7
    iget v2, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 8
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget v2, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->maPositionHandle:I

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maPosition"

    .line 10
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    .line 12
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget v3, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->maTextureHandle:I

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maTextureHandle"

    .line 15
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 16
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    .line 17
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mMVPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 19
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->muMVPMatrixHandle:I

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mMVPMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 20
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->muSTMatrixHandle:I

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSTMatrix:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 21
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 22
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->checkGlError(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mTextureID:I

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public updateFrame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/TextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
