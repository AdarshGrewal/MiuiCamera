.class public final Lcom/faceunity/pta_helper/a/b;
.super Lcom/faceunity/pta_helper/a/a/e;
.source "ProgramTexture2d.java"


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_helper/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/faceunity/pta_helper/a/a/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/faceunity/pta_helper/a/a;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/a/a;-><init>()V

    return-object v0
.end method

.method public final a(I[F[F)V
    .locals 9

    const-string v0, "draw start"

    .line 2
    invoke-static {v0}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/faceunity/pta_helper/a/a/e;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 4
    invoke-static {v0}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 6
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 7
    iget p1, p0, Lcom/faceunity/pta_helper/a/b;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 8
    invoke-static {p1}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 9
    iget p3, p0, Lcom/faceunity/pta_helper/a/b;->d:I

    invoke-static {p3, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 10
    invoke-static {p1}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 11
    iget p1, p0, Lcom/faceunity/pta_helper/a/b;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 12
    invoke-static {p1}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 13
    iget v3, p0, Lcom/faceunity/pta_helper/a/b;->e:I

    iget-object p2, p0, Lcom/faceunity/pta_helper/a/a/e;->b:Lcom/faceunity/pta_helper/a/a/a;

    .line 14
    invoke-virtual {p2}, Lcom/faceunity/pta_helper/a/a/a;->a()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 15
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p2, "glVertexAttribPointer"

    .line 16
    invoke-static {p2}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 17
    iget p3, p0, Lcom/faceunity/pta_helper/a/b;->f:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 18
    invoke-static {p1}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 19
    iget v3, p0, Lcom/faceunity/pta_helper/a/b;->f:I

    iget-object p1, p0, Lcom/faceunity/pta_helper/a/a/e;->b:Lcom/faceunity/pta_helper/a/a/a;

    .line 20
    invoke-virtual {p1}, Lcom/faceunity/pta_helper/a/a/a;->b()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 21
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 22
    invoke-static {p2}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/faceunity/pta_helper/a/a/e;->b:Lcom/faceunity/pta_helper/a/a/a;

    invoke-virtual {p1}, Lcom/faceunity/pta_helper/a/a/a;->c()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 24
    invoke-static {p1}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 25
    iget p1, p0, Lcom/faceunity/pta_helper/a/b;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 26
    iget p1, p0, Lcom/faceunity/pta_helper/a/b;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 27
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 28
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/faceunity/pta_helper/a/a/e;->a:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/faceunity/pta_helper/a/b;->e:I

    .line 2
    invoke-static {v0, v1}, Lcom/faceunity/pta_helper/a/a/d;->a(ILjava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/faceunity/pta_helper/a/a/e;->a:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/faceunity/pta_helper/a/b;->f:I

    .line 4
    invoke-static {v0, v1}, Lcom/faceunity/pta_helper/a/a/d;->a(ILjava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/faceunity/pta_helper/a/a/e;->a:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/faceunity/pta_helper/a/b;->c:I

    .line 6
    invoke-static {v0, v1}, Lcom/faceunity/pta_helper/a/a/d;->a(ILjava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/faceunity/pta_helper/a/a/e;->a:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/faceunity/pta_helper/a/b;->d:I

    .line 8
    invoke-static {v0, v1}, Lcom/faceunity/pta_helper/a/a/d;->a(ILjava/lang/String;)V

    return-void
.end method
