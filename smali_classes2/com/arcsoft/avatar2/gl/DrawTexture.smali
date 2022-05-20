.class public Lcom/arcsoft/avatar2/gl/DrawTexture;
.super Ljava/lang/Object;
.source "DrawTexture.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[I

.field public h:[I

.field public i:Ljava/nio/FloatBuffer;

.field public j:Z

.field public k:[F

.field public l:[F

.field public m:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#version 310 es\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform sampler2D sTexture;\nout vec4 fragColor;\nvoid main()\n{ \n   fragColor = texture(sTexture, vTextureCoord); \n}"

    .line 2
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->a:Ljava/lang/String;

    const-string v0, "#version 310 es\nlayout(location = 0) in vec2 arc_tex_coord;\nlayout(location = 1) in vec2 aPosition;\nout vec2 vTextureCoord;\nvoid main()\n{\n   vTextureCoord = arc_tex_coord;\n   gl_Position = vec4(aPosition, 1.0, 1.0);\n} "

    .line 3
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->b:Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->c:I

    .line 5
    iput v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    .line 6
    iput v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->e:I

    .line 7
    iput v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->f:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->g:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->h:[I

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 10
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->k:[F

    new-array v1, v0, [F

    .line 11
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->l:[F

    new-array v0, v0, [F

    .line 12
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->m:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Z)V
    .locals 11

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->m:[F

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->l:[F

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->g:[I

    const/4 v1, -0x1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->h:[I

    aput v1, v0, v3

    .line 5
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    .line 6
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->h:[I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const/4 v0, 0x2

    .line 7
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->g:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    .line 8
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->k:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->k:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 12
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    iget v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    const-string v4, "aPosition"

    invoke-static {v1, v4}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->e:I

    .line 14
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->g:[I

    aget v1, v1, v3

    const v4, 0x8892

    invoke-static {v4, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 15
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->k:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    const v5, 0x88e4

    invoke-static {v4, v1, v0, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 16
    iget v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->e:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 17
    iget v5, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->e:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 18
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->i:Ljava/nio/FloatBuffer;

    .line 21
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 22
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    iput-boolean v3, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->j:Z

    .line 24
    iget v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    const-string v1, "arc_tex_coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->f:I

    .line 25
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->g:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 26
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->i:Ljava/nio/FloatBuffer;

    const v1, 0x88e8

    invoke-static {v4, p1, v0, v1}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 27
    iget p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->f:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 28
    iget v5, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->f:I

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 29
    invoke-static {v4, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 30
    invoke-static {v3}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->i:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v2, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->j:Z

    if-nez v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->i:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->m:[F

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 4
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->j:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-boolean p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->j:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->i:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->l:[F

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 7
    iput-boolean v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->j:Z

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->g:[I

    aget p1, p1, v0

    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 9
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    iget-object p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->l:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    iget-object v2, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->i:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES30;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 11
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public DrawSurfaceWithTex(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->h:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const v0, 0x84c0

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 4
    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 5
    iget p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->c:I

    invoke-static {p1, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    const/4 p1, 0x6

    const/4 v2, 0x4

    .line 6
    invoke-static {p1, v1, v2}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    .line 7
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 8
    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public initGLFun(Z)V
    .locals 6

    const v0, 0x8b31

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v0

    const v1, 0x8b30

    .line 2
    invoke-static {v1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v1

    const v2, 0x8b81

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v5, "#version 310 es\nlayout(location = 0) in vec2 arc_tex_coord;\nlayout(location = 1) in vec2 aPosition;\nout vec2 vTextureCoord;\nvoid main()\n{\n   vTextureCoord = arc_tex_coord;\n   gl_Position = vec4(aPosition, 1.0, 1.0);\n} "

    .line 3
    invoke-static {v0, v5}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES30;->glCompileShader(I)V

    new-array v5, v3, [I

    .line 5
    invoke-static {v0, v2, v5, v4}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 6
    aget v5, v5, v4

    if-nez v5, :cond_0

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    :cond_0
    if-eqz v1, :cond_1

    const-string v5, "#version 310 es\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform sampler2D sTexture;\nout vec4 fragColor;\nvoid main()\n{ \n   fragColor = texture(sTexture, vTextureCoord); \n}"

    .line 8
    invoke-static {v1, v5}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 9
    invoke-static {v1}, Landroid/opengl/GLES30;->glCompileShader(I)V

    new-array v5, v3, [I

    .line 10
    invoke-static {v1, v2, v5, v4}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 11
    aget v2, v5, v4

    if-nez v2, :cond_1

    .line 12
    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 13
    :cond_1
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    if-eqz v2, :cond_2

    .line 14
    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 15
    iget v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 16
    iget v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    new-array v0, v3, [I

    .line 17
    iget v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 18
    aget v0, v0, v4

    if-nez v0, :cond_2

    .line 19
    iput v4, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    .line 20
    :cond_2
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/gl/DrawTexture;->a(Z)V

    .line 21
    iget p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->c:I

    return-void
.end method

.method public unInitGLFun()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    const/4 v1, -0x1

    if-lez v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    .line 3
    iput v1, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->d:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->h:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    if-lez v3, :cond_1

    .line 5
    invoke-static {v4, v0, v2}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 6
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->h:[I

    aput v1, v0, v2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->g:[I

    aget v3, v0, v2

    if-lez v3, :cond_2

    const/4 v3, 0x2

    .line 8
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    .line 9
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/DrawTexture;->g:[I

    aput v1, v0, v4

    aput v1, v0, v2

    :cond_2
    return-void
.end method
