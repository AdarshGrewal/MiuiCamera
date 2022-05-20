.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;
.source "ProgramLandmarks.java"


# static fields
.field public static final color:[F

.field public static final fragmentShaderCode:Ljava/lang/String; = "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

.field public static final vertexShaderCode:Ljava/lang/String; = "uniform mat4 uMVPMatrix;attribute vec4 vPosition;uniform float uPointSize;void main() {  gl_Position = uMVPMatrix * vPosition;  gl_PointSize = uPointSize;}"


# instance fields
.field public mCameraType:I

.field public mColorHandle:I

.field public mHeight:I

.field public mMVPMatrixHandle:I

.field public mOrientation:I

.field public mPointSize:F

.field public mPointSizeHandle:I

.field public mPositionHandle:I

.field public mWidth:I

.field public final mvpMtx:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->color:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f230000    # 0.63671875f
        0x3f450000    # 0.76953125f
        0x3e640000    # 0.22265625f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;uniform float uPointSize;void main() {  gl_Position = uMVPMatrix * vPosition;  gl_PointSize = uPointSize;}"

    const-string/jumbo v1, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mPointSize:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mvpMtx:[F

    return-void
.end method


# virtual methods
.method public drawFrame(IIII)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->drawFrame(I[F[FIIII)V

    return-void
.end method

.method public drawFrame(I[F[F)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 3
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mPositionHandle:I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 5
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mColorHandle:I

    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->color:[F

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 7
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mMVPMatrixHandle:I

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mvpMtx:[F

    invoke-static {p1, p3, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 8
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mPointSizeHandle:I

    iget p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mPointSize:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    invoke-static {v0, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 10
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public getDrawable2d()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/Drawable2dLandmarks;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/Drawable2dLandmarks;-><init>()V

    return-object v0
.end method

.method public getLocations()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    const-string/jumbo v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mPositionHandle:I

    .line 2
    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    const-string/jumbo v1, "vColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mColorHandle:I

    .line 4
    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mMVPMatrixHandle:I

    const-string v0, "glGetUniformLocation"

    .line 6
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    const-string/jumbo v1, "uPointSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mPointSizeHandle:I

    .line 8
    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public refresh([FIIII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 1
    iget v6, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mWidth:I

    if-ne v6, v2, :cond_0

    iget v6, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mHeight:I

    if-ne v6, v3, :cond_0

    iget v6, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mOrientation:I

    if-ne v6, v4, :cond_0

    iget v6, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mCameraType:I

    if-eq v6, v5, :cond_1

    :cond_0
    const/16 v6, 0x10

    new-array v15, v6, [F

    new-array v14, v6, [F

    new-array v13, v6, [F

    new-array v6, v6, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v2

    const/4 v11, 0x0

    int-to-float v12, v3

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v7, v15

    move-object/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move/from16 v14, v17

    .line 2
    invoke-static/range {v7 .. v14}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v10, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v7, v16

    .line 3
    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    const/4 v7, 0x0

    move-object/from16 v13, v18

    .line 4
    invoke-static {v13, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v13, v7, v8, v9, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v6

    move-object/from16 v9, v16

    move-object v11, v15

    .line 6
    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 7
    iget-object v7, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mvpMtx:[F

    move-object v9, v13

    move-object v11, v6

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 8
    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mWidth:I

    .line 9
    iput v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mHeight:I

    .line 10
    iput v4, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mOrientation:I

    .line 11
    iput v5, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramLandmarks;->mCameraType:I

    .line 12
    :cond_1
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->updateVertexArray([F)V

    return-void
.end method
